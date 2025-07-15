Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE722D8DBC
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752578394; cv=none; b=b7emHsHVLn0aV3LMwkFDMdYPv4Md5HCVVk1KwfxXswOs5avIu5w2gg+bLLYRfZ0MEtTZWE5/gES5hUm4yectQOrLFGXxq56mnMBLBkF6+yXYF4eH2raBBaC7XNBIbOaIGw4BcsEJYmd3sRuhWzwV6mOTPedmZbMCDvVkSu+Fueo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752578394; c=relaxed/simple;
	bh=GznswQEWDlAJVh5Ia+IJ/H+7eQxoEwno24Wb23FSNKw=;
	h=To:Subject:From:Message-Id:Date; b=Nue6jO+B+LQIm9UmqPlnkm6+TKZHBfjkq8Kdibdk92o1sYJY6Uei6nlLq8wIH736fsaHc6ev0yGbXUMwJdIGB9hyVZImr+X0g1B00DGbrSrhwEd9C6wtVwI8G6Gptyi7O+uoxdCMD2kZ0emFe1B25U7FzxJRB+HV0e/FULBO+TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O17zTeXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O17zTeXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F4C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752578393;
	bh=GznswQEWDlAJVh5Ia+IJ/H+7eQxoEwno24Wb23FSNKw=;
	h=To:Subject:From:Date:From;
	b=O17zTeXCuqiC4gt6H9lDyE9Ehw/MfhBqKTklfp/monwpGMHZjWMcn0UmlLwIFOlFw
	 dbQhJUVuNSigJwlMCLmUwfTL1XstcWwSYRTutiCi/cg88gIIKEQRC0nVP32c1JUpEx
	 QpjD692dgXY59OJU6Jka7yLJREQnAj/GaGp3sCQOjvER8R/F4P87kWA8SD0wYaKMqG
	 XWQi4STw3F7RU9bHK+EeYRXdj8/i2YoWHTeed+yWNENMDOLWugzr1EWHx6sgloOx/I
	 WeRhwjWIAedLHl7UKBKRigF8SH7+PCA5o4SqNgf2N+woxQY7uN7dyJ9MNTZNFcbMbD
	 AFlsGZe9cJDMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CEC83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257839357.16671.15995316908157113456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e810f3d8ec147a2d15fda1ebeabf45d62164b8ac7a52d91a9e2f30c2951d4b
Date: Tue, 15 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752578393
