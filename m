Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3954A2147FC
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743439194; cv=none; b=PpBXN7r6pMqZUoZlegXXr77hTIGKXgLVMoCWIDiMJSoMGZXQp5AAiCiDd+RtVocoutUmJTP6PXZIja92JGM0a6vrIcVkLSYrLggNIjtG06dtRkuFy7iC4eaw3by9YsvbXzoVV7Fk9HAZpnIZpUnm8OkWMDYWFhngGb4yaC0Ik/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743439194; c=relaxed/simple;
	bh=VnI0V6hJ+6QVEpxsla+TrJnfUobyzi0xSUHINgX/DW4=;
	h=To:Subject:From:Message-Id:Date; b=u8V+jLS1N6F0Xryrtueuijp4iSRXMlPHC8grKAZHH0qKZUT28MGXHWCZtyp2zoF/8sRzbHS/VBdCWAfuRFehW5diBUP8Ljwt6YQBh741eQFe2tIz8+BISe1DzY0GJ7DCJM26GPgihzESOFRGIJF/NVzHTCZaDEmPLzStA1LHUxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWN3HOgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWN3HOgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DC5C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743439193;
	bh=VnI0V6hJ+6QVEpxsla+TrJnfUobyzi0xSUHINgX/DW4=;
	h=To:Subject:From:Date:From;
	b=GWN3HOgDAp2BskU7fFsG1vVb9oQU30qrx8w+pfcNzBQxvxYUA3WMMwoQiXzUkpRML
	 21oMc1Fno1lf5iNd+UywTpiCruN7LbbnxXkjS0l8CNO2zbiKoIdy5Ajrdld/Yh6c+N
	 O1YlYbHrVUyvmfiXTfG0NrS5KBT7pcj5Rg50uo/aI+qzzl/Vo5TMSYa3FPSot57e+q
	 MwShBaxU00x/VsF78VSwGJKiDbWBDshB8cszhjIi9q9pw9o0G2GP2CHXsqPF9aYJqK
	 d66ukWoTWFM7q/37ywwgCbn3Ckvyo/2Mxtv2s0LNmlMKdX61+Svx7hC4aAOCv47jPq
	 WHLt5iT8fezCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F686C36013
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174343919364.26739.13859910402872373734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188d90884d8c87dc7a51cbac1c3edd8a452b6d756a28fcd3bc1571887e4ca671
Date: Mon, 31 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743439193
