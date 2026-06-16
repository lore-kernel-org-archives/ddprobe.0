Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6674657D0
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781625994; cv=none; b=He28C6f67YrtSBaQrtO7v490NbwKwDDZQHZbG4hzWbMxt6TfpkChLwaQZ86NscCABbBEPKKuqb/fZL6o4FVokrU+lOq7uU7p6tO2fojQWvX44ObEj4spp8KirhtyTFS28k83G8rJEeToAdyIcSNcuqDvxfQAkD2wqLS8t8FPTQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781625994; c=relaxed/simple;
	bh=KHe39K2QQVunOjtERensac3M9F5Er6aSiLwEhndVc70=;
	h=To:Subject:From:Message-Id:Date; b=k3nsFHS27VskWefek/OAYu6Zfm7iPQGgoojJF+JCfxTgofkCiPYKlPlxC23xmR7d4gNRIlHcvgOtNyNZ/Tfi50u2kfKCEaxWeTaxECPtbCKXO+8XMB2FioJZh5QbLDZoF41bz9/wpi+taD/YqNeL14QZh66MxpmjYkndm14IThY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjGaljeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjGaljeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB71FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781625993;
	bh=KHe39K2QQVunOjtERensac3M9F5Er6aSiLwEhndVc70=;
	h=To:Subject:From:Date:From;
	b=hjGaljeAxQZtao7FSTPk5nzggXA9NtWv0vhdM/jhtxXRQmAiF1JPhMWnF2D47s/oN
	 Ga7gUIV8YW8yO2QSj0/eiGXYkNumVfFRBo9eh9V/2g2LSr07uXIdojTJ82ma4KR0F8
	 MN8tn6sogKm2zBHP79zb4zuZue78Sn6Oy7MwHvWtfKf09Oh98xgOD1J6AQyrpO7lbl
	 NQObKlZkKoOgVD7RPLg4fq4hMVUpkcqP7t6vhejctJim3gXX2mNOzsvEHvF2zMnyW4
	 GyXZ3IHX3efqD9l8dQdLxMFaX3ibFVAnVUrnbBx02xzGdl1tjLJULWp3rZAJOi0gNx
	 D1EGamKXdk4fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0ECCD98E3
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162599369.13304.17214737545612955711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1ae4206e9a83287f16b31d05019dd8488bd3e3828d48876779092880009e67
Date: Tue, 16 Jun 2026 16:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781625993
