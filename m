Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E8EDDA9
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724724954; cv=none; b=ef7C62TJBgQfC0SJ7Vmq/88aD8QSHVxwjjM93LfeublBEFAopROoE+Vwxdbq5CqUQqkqOkA1OTsrcatOM79Pwf8xomYGGfJnQXen9q05HFKXlzQq2ebn/fdGq6KmDNB4jwxIV1wfGc+/DJBKWoKhdCbqi9jfhcjCARRCbn6hW4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724724954; c=relaxed/simple;
	bh=OjvT6h9FpmqgnoXWHXIjo0CVKJmUi7rUE27h2kY3juo=;
	h=To:Subject:From:Message-Id:Date; b=ZH/nx9CdEYY8WGqcektLFxt4VKVGd6rtCPJPWXGGI0w01qXfiVdJ0D+3ubpTfM2sD0DCpQZ2p8CqRswqoxD0jdbhITekBn1tgIrH3Im2fToJbI9tZTMPEMlTe9Q5nnEa8LCpGXuy/bl0Qn+F/Ps26Du+Bv4iVIsTXgpxfW76W38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taVg5JIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taVg5JIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A86C4E68F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724724953;
	bh=OjvT6h9FpmqgnoXWHXIjo0CVKJmUi7rUE27h2kY3juo=;
	h=To:Subject:From:Date:From;
	b=taVg5JIteEObAfnfe6tiuHMk2CstlyQ4RovtUkAXZdhZ9BeFTMSxcCLierP5ik+UE
	 PLyUz9gtufv0/RfzAylxZ4ICJ214dtnBbSD2X2RdNuTjs2PfgzxScv02T67nMEWjci
	 8PWC7WtHrM4sA5Z2DLYJYd97sil1KXQ6MsxogCyNFKGpb7DfrNzAPwdL2Hj9lRj623
	 lXqYqecBhRMstOWV4eaF8wK/CULf9VOVOa2IOD7jBWuPlseI44DlwgH15rlpa8n3wL
	 4vLG3E+A5oEZJpPL0a9coXDhDV0VVtMDN36b9vIr3uc3di1ogH2dBXo6QnmjPNotWj
	 VXMcz5Zr0RLgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95078C5321D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172472495360.17533.2988628243116500938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b0715f33305d33a934d604b160ea7bd13dae02cb65e6e9ef4772290404244a
Date: Tue, 27 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724724953
