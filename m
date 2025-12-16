Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72DFC32F759
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765905834; cv=none; b=RyJ9RNdFaEREMZWjszcs92/jr7fcH5Oti5oD38zfGD0o6bZE20rVXEvq6f9EG9HthqB0MrfAtOUINcy7fulQNzsCD6Cqps4VZepM2TqiUQOohbduHQxzgmEYsthEGrcO3a13+GIqS/iCpjAgNLwW2WxG/CtmaiUm0QB4yoaD6qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765905834; c=relaxed/simple;
	bh=zDyMIyxP+NPFdiyDtCxblLuV7b8iqcdZLYnoOszUt+o=;
	h=To:Subject:From:Message-Id:Date; b=OmCGHju/7dh/WrcKpz2w0ZC74AvdvIP8R1X0saTNATa5wS1Zzp2yZ7MFPIPJHrdfg83m5cS58pNP/hpuxUa8H4bE8DuKKnD4VuCmZ5yHj3eKQrVkUBYaW3s1Qe3uWWZjzP/NQ6MVwzG7NxbxA0Ku0k5uKm4HSYZBq4KTB1O7OEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWPDNzwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWPDNzwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC891C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765905833;
	bh=zDyMIyxP+NPFdiyDtCxblLuV7b8iqcdZLYnoOszUt+o=;
	h=To:Subject:From:Date:From;
	b=XWPDNzwLamjzT9UaegwtTy+NFnVLPi5VkXyV61GEal6Sw8/kfMsM7spQVrfhLw3sY
	 gVwSoKTT2ebxadqXjUjsywNIR8xwF7q0iuhh6+l1xokM30U1f41o3UtyHdMrHdx8pe
	 /Anjh4OFVr/T0y/k8fhWnRNhfrM7Uc/6XPRnlszKNVKpoSPf9HDpFdgmYb4ibgGyq+
	 XSkJRi47bDDCoDXlJmf7BQ38QE8K0I+SpaBAM35gmlP8udKUQK6aI9NOjuuKCa8GBn
	 AFv70iMChqQEAfCzUSxmYMrXrkMZ1zzZUREtZ+O7/U3cyQf+Itbmwv1YUiEIcvVdn9
	 tNKM3MTW+1fzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E51D609D3
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590583359.14339.13279634383476243093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35767eedde82d06eb23b51739d05c98f84cadd48597d464cb5216f9fc3c5075d
Date: Tue, 16 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765905833
