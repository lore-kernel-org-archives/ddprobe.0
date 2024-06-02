Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F73A2570
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 08:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717317323; cv=none; b=bO94qyjnfmTLvl8ItMTFoRBaVrGInaCKik8NuPv4U+sgwcVUmVrA1TlXUkND6topZatATe4rhTkiFypJ+Fd+W+ispEvgKjNmEdinpcoB2OLlcmtvSmJpFI40zrl//m/hdcxkpVqOod1khIHo3uvpLH4T2sT5kfwfWFIixvZLBZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717317323; c=relaxed/simple;
	bh=tjcnyLljYS43tVz4ede3O7ZFtxpoCh+zmFjT6Y8CiJE=;
	h=To:Subject:From:Message-Id:Date; b=baiwFVTKMhaClRB3hY3NBc6TSGB3r14//Dmnc6lOrKuruggu8N4q/EWdzTUd28FMV63oE/Jh5Cro0kMJ854j9S/hgSQI83byb1LBsAELWCZXb/1WQOxWuLAmrtIWVaR8LMDSScGZqZ0IKoAzbqY7vHlSb1vkOMXM1rOpulJhkcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/G6CcNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/G6CcNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEA6C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 08:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717317322;
	bh=tjcnyLljYS43tVz4ede3O7ZFtxpoCh+zmFjT6Y8CiJE=;
	h=To:Subject:From:Date:From;
	b=M/G6CcNlfTDOZztGM4WcjUDKcnPNH8uAOlrBSSnwy07qAD6pq57AhLNX/6g6slJL6
	 7lnVVOTx0adfw6MMZfUmUFxOyKI9XW7U2HvTY8aiXutcDZizFUsX0wmiQegEAHiLN1
	 05UmRoeP5uZtpzR6ms6z2RJsVgSjutJXvWBXA3Zj104C2lY2x/JLpSY5HgFSXQTIIX
	 acH1A0lNuSzXvIRvNK3xWRR/X+/2/McgquKA0+i43PcLH7xSZ1uugCHr3lPF2WcQpc
	 CPF48ymmvAoIkVMypftilnLjHzHPNQ3YsckJe4lU/aCSlSnH0bojp1fwE33kJ66Hrf
	 fZ9C0QgaMtdkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D27C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 08:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171731732277.27334.17089481271945128543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60cb550de607ca08afa1c5b97ce675bf8e57a8113d737c5192a8e568cb8c7b2
Date: Sun, 02 Jun 2024 08:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717317322
