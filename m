Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D313E123E
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772732094; cv=none; b=F3X9Z+1CrUxNZU98BRDR8ik99ESR+1F4eKd+0Pncjzg2SorJEpGaeMdZHsFl9DRUaNb9LTVkJNtZi6epbfzy49Rvcm93yYuwjiatsTB8sdXtZMstz6yCZlktL4M5MLzThuWp1lb8ABtym323K4aHDylZ+w5BlQx00+4PKLfFGm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772732094; c=relaxed/simple;
	bh=/SIB1ngCp3C/Ez/y2Aw/EKQ+ELZaOxZlHPnri702cj4=;
	h=To:Subject:From:Message-Id:Date; b=eYf6/VQ60mRkmEwnVJUrXo8QRqOuHvsud3tuZq0QKzLALJAGIlvbLmKjJZU9MMIaJ5fnlRAAChc3swBUv1pjz/3z/AmSj7qSS6jUwJ6pmerCmU9XWXgJ5Gkdz/zrIhocAhwGdkSK7zCiIau4tnxxorjbdxv+hzNJGsMHaVWS5lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGUU5ZYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGUU5ZYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7466C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772732093;
	bh=/SIB1ngCp3C/Ez/y2Aw/EKQ+ELZaOxZlHPnri702cj4=;
	h=To:Subject:From:Date:From;
	b=JGUU5ZYn66qLEi+QR3QP5itg5zGtJnmLsjWurIFTN9MwdSUfUQHLGx/icoTmcbxl7
	 Lpq90CKhUJmynp2L5liUMq51S6bcBEzJFQrTDVVJbvjCkDUrMInGFkTcaAstsCSdjI
	 ojoNMxgUrwxTmBTfu04tzob/zkwe2SP7p/eufVi2z4bir0vLvm2fUotOSz2Yj5b/yZ
	 uOEhdNkDbUI0xH3tvcjCuhhMmJ+Q6H1Y7SZkfapZQyJNUPjr7YAJUExk/t276PFZDn
	 IAPAMiugZi+2gJ/5Ahu/Xr3ZHeqJKOYQGEgQT6Som4tcRLzGymXmYPDp9pHDvo/HIE
	 3lNvyM00hbG5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CE9EF8FE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273209364.21186.18124926009888196075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939596ab1a358c4f4a3c278fac2a82ae977284777b624d78dd683deca03482be
Date: Thu, 05 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772732093
