Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308CB3B058F
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788900034; cv=none; b=bYJEGKcNGPNDXszQQtYmYlfcTjQOL8HVp7DdV80zUbaFtR+byV7HxC6r0YUr6miarDePzns5fKMd/LfPhyYm+P0Gp/KalBgBNbufqI1MF83gthYI7/KqpK1LftkxsktHJFq8PaccQ8mv/DfVDBFPXgf84z8roi2wKCu8k4kezKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788900034; c=relaxed/simple;
	bh=uX6WKElyUOYA0xK8UYgkpkTa4uOD5UigJ/SOtuTj2TY=;
	h=To:Subject:From:Message-Id:Date; b=ScwYDuW8DYHDCMCHtYTTv07sW1XxtI1cFpB+sGNJ9dJJXW3JZZvtMonOXrtZ9SoF1AdJN9CmNQ2UwmOsfrLferp+w5RMa5asrmpaNYTTfokpV3JoItvV1VcbrEWZNOweUBwgCmqOcIhQ4poV41XIHyupq30gUljtboniKLmMLF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EM/OGm5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EM/OGm5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE954C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788900033;
	bh=uX6WKElyUOYA0xK8UYgkpkTa4uOD5UigJ/SOtuTj2TY=;
	h=To:Subject:From:Date:From;
	b=EM/OGm5nK6AHtL5H/rO6uLWMP2tOjNnQ/Td1ave57WnbBvBy+BMgyaGLJ9habxTCm
	 it7qCEeOjQSm9JKOC/pcUxBrF5G8N1N/Hni0vR+wocAU/3mnifDFXZkSLZReTq+8er
	 ZpfELtSu4g7W6OSyY4xHVY2ZPWyTCeBTTKCVXeOrD2yT65N7v+rCpYhVtv8+aonqfy
	 b+HO260DWJ6Ug2ItOmiO5dkdghq/8IwKHHxWkc/VzP1W6mHtQtTR5JcocOOxC07Ixj
	 /qTp2Jaq8ikAes6pEa2/pFOsD1vVIQdxx4muE9QBJ77KTjXhAjngWdNv40xglaEYnZ
	 aOXVcrrn1DM6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEFDC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890003370.26368.4631117322783318741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244a7e512f6dfcb9b702cb08684fd44c5223ba0d0190115daff3b2fa3096c6d6
Date: Tue, 08 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788900033
