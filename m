Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0703793DF
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788372634; cv=none; b=leS5xh68P2EtaJi1hYHo0AUM/TYfFzV1xhpNCL6jtaqElB9SRTd5hBf1R0yeRkKMdR0+R0NPIXh8sRURlwELvZi5gTydSmfWbC06UDrgcvPsosoTU2U3iOTCC3v/nDBs7pQehMAb/tqN88YdwCwKnX+6LScmyh/7mvAGFTkqGcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788372634; c=relaxed/simple;
	bh=OkUMYf5HVK2vO72oFOCf8eiXxgzvjlRnoGiK+srfUas=;
	h=To:Subject:From:Message-Id:Date; b=igS6dhOTMQZ9rENaET7S3P7naiAiZqNTpMuau1bhZRsQCvq66Q+0MEnL8XL2MbAGE+BtYBjUJD4sHXCFv10ojqwxW/JSiB82uteYTe5/ibGGwGfTCfLgTBMj8Niy95VWEnjsBIRIibMMXytSTE7y8Q0nFXWEs8FmWgmMcaFq+IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uedDLQeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uedDLQeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0769C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788372633;
	bh=OkUMYf5HVK2vO72oFOCf8eiXxgzvjlRnoGiK+srfUas=;
	h=To:Subject:From:Date:From;
	b=uedDLQeFS4PAYXZKlNrBYZwlXrCAtkESL3Nj3QGzmbOggLxrNfQtb4dkp4RhmE/uh
	 SNVB2VUoIO+XYVtRJN3gIFbZ6dFycX+x79W+nQAKOlT2Z0L9lm98fm435I54LXOxMm
	 qjpr5OcPmxjNmo1guxOSUpNs/QBdVe5KOOe7ddFGTGge8pyb4nxy59Bfce0dLGt3uu
	 DZdOr9qJlyzNzwdnt84wAbhENlHgEFQam+pu56Y/jCONs1afn9PyfqS7S+J9Yj6D8c
	 p+POApxqnn+KQ0Lu+mmqG+bwFxWRUMMsfZELt4lU5xfT/C3t4vxUs2Z6XXjgJUwEBI
	 qCMbSVWIexw4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD20C624D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837263369.7463.16255805639025785181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5c9a683b9f4e6e6ce598c8949b5f54eda88b050a2e0953a188ee48598b5b3e
Date: Wed, 02 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788372633
