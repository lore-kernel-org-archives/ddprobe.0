Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE58EC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728221754; cv=none; b=rfxxskGixe3GULaprTj6YMYit32CIVwoeITrJMjjKZ/PUaK6Fz0jPCmhCoQMX//87QTSOZHAJwE6wc+WqAgo5AVkzRu0I9K8Eu8hAK3rPkotoi1H2HeMAEP4yUJjiIVkiNH/HG5sGDj3s3Bi///XV6x7nd/Ctjj6lLgPtys4IFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728221754; c=relaxed/simple;
	bh=JM2PXB1gMkkyVTjdD46UJu3I5snU93VDZkDEAwC0wc0=;
	h=To:Subject:From:Message-Id:Date; b=IcDsaG/6emT30wKXp9eCMOIs4NWeQXQUtZHzPk+di/lfWsnqEPQxcTS31yKZaM0f9qTvFfyckMqW3R4dvfqTzfJNonruS7WXmnXwOomP9YdjZ242lYEcc/Es8fr64atvKL4qAax6+0GAXzYVB2rS4e33pZQyFWTqxW6mPxIn2qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQd/l/+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQd/l/+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F09C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728221753;
	bh=JM2PXB1gMkkyVTjdD46UJu3I5snU93VDZkDEAwC0wc0=;
	h=To:Subject:From:Date:From;
	b=XQd/l/+fi3E2ESAlr/d5wXCrbj+YhJDXtbf4MfJ6ARcmNXgNUg+yozkaI3EdOuCp4
	 wYQDYM/bD1BAVl3A3yA/E9d44d1AYPVazpt7E3yNoAs51ddeOqacuq6Ry+69urVH7z
	 +HFfgMzDLHsZKnPio5VXl97g35mRa4Zwmx2TmWpXWhPIEZCLIjjcv/YGGGmWAlcsIQ
	 oRHk7sF4UF8L3Xz2QJYhpMRNPvsh3aJBjpMRvgVuTqWt4YxyeB9+WfM9XA8gwzREYS
	 I/VHf7wehxjUClz+8hWexu1nSA/CTe8FGlqhlOwJqO2FhRcHR0uWCMw5E772wpZfYq
	 ln7Ips95Dz88g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92432CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172822175359.28403.9790075628866852945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a84f752618dd78224c14a70ca30b492ed408121f00aa49b0d39bf93c364c4a8
Date: Sun, 06 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728221753
