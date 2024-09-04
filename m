Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE3384A27
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725478554; cv=none; b=XYzr0yQpl7DL10L/zkIwS5rcgPDEV8412Nvn7+uGJRmUtYGw4STcewVQ4KCUJM+u/FBOIZTjIga1cib46jOkonWNTH52ztZeg/9r1EuFfm9lEDrYaeMSaR55tYZQy2RPakG1uCPQUyBsJGene8nrs67HOkgiXNizthYsAbSxXgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725478554; c=relaxed/simple;
	bh=eQ3tD2q7tIyhQUFoCmXgq+rYQcvyKxBoKhNrOSGPEm4=;
	h=To:Subject:From:Message-Id:Date; b=bkObb9Efw1wrZwM0RqvknZFsrSCYO6NFNuiL2FRdY3O+2j7E3Cv0k0Lv16UUk0C3S5zwIVA9aqfRkZipAQAEGMJpF71gyYt8Mj53rYm/A/rtyzSNdz00ZWCrd4/OdBLDmjVQKtxJMvQaqHhuWOYYPfy4R9UaXqiwtZhpQaPESLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3Qd12va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3Qd12va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA907C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725478553;
	bh=eQ3tD2q7tIyhQUFoCmXgq+rYQcvyKxBoKhNrOSGPEm4=;
	h=To:Subject:From:Date:From;
	b=t3Qd12va/IKguR2S2FE62Og0hfS71jhyVCx1urY9kQAQTMDXpSZ8SpbEm6slfuBYE
	 KIOD4QzAch/N7jZsfdYKjLs01/SmZ3VWxRF4VkGz+SkMVnct6zplhkXfDaIE2vmMqb
	 Wplzqzv1Dd/UN0hGCbSDO6Oj9yjqS5+/VLsfELqzV4kme63r0CIRz5QkU4koDPgRLh
	 7V1c5LYkZLbjN5BsulVKOWwK4RuDD59GkC4/il0C7SNQ+ei3B++zvqTH+KP+chSfv5
	 PYOi3pGWd61VvNhFaag7kL7pg0Uiqds/KSyEqJF0WcMhR391zGxN9qhUYN0nzpr2xc
	 GtIRp0CNRXBgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FF2CD4F24
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172547855362.17873.6492503252287257766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36392fbf1b28c84d0873571cfed73f01450aa49f6c1c3d29a27f72f2fefdc1bd
Date: Wed, 04 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725478553
