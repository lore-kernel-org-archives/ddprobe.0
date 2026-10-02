Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C234517BD3
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790973035; cv=none; b=dGKYO1DICZFaXk0As9aI+dbHAxolFWiFCF+xkOeFg7DHl0IcsbhkoNb5keA/gm76PjUxtWvbLGlErbMDNWJeXx9/hpIhrfOql/y5d0oH5qVlyg5+3vYwVEQRX80dQ3VCxcekILbQ9BJmuTT6+ZWzXldhqEwR3o5OGWns6B3CXqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790973035; c=relaxed/simple;
	bh=uMieOi3yVg8kzev+b/f0GGISrjbwhviHzAX7b5+smRs=;
	h=To:Subject:From:Message-Id:Date; b=GMS655sxWRNwhwKL9VZ6K/P8K79m3qb+dTJTIQQgA6uhhFfS9xDq08F951DhLhRviXaco8paIq8gZVXz7jcL4TkGi0IPHCR1hFHUwgpk5xAVn+90/2aBpVIMRCCfjzA2wr4x/RZxhsvjEq+FXIVKkmYdLm0rzKzT9JJFIKRTzhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DiRP93Jx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DiRP93Jx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE46C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790973033;
	bh=uMieOi3yVg8kzev+b/f0GGISrjbwhviHzAX7b5+smRs=;
	h=To:Subject:From:Date:From;
	b=DiRP93Jxh3ShIAkk+yhcqLy303u0JWQzItu6S2XEVg0C8IWu4PtXzMFgzTtY0oYSg
	 0xT8+sKtmBTzxUUJ2ica+BAF++ZFfz2b2geyCCGm+pNd2NGYFhZllxSC3sG0UKc7Ly
	 WP+vLs0dfonTB1pFYNo478E5rG/LHpTp5pLWH0y7eSRne80XTFsxo5CR4sTfIK3VvV
	 sN4wJT0PUNKdGKGGSwumsreFcKBrBj+AQO6nXMva495an9ts5o1yUykFaQi6a3imzm
	 m8u1a99ppVTqYL8+3Td57SGyyUNoE8BNpefQbCGEGKMCg4gJWH5oJ9dTFU4RlEhZUc
	 82IQ0h8Xxke6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB487CA5FE5
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097303369.25165.4089696871409539586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f901f42ad5f8afe1f81828b7fc15e99934eb92a28f71da01cf765492645bacb3
Date: Fri, 02 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790973033
