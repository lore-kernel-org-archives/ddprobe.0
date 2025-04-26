Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB6B79FD
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745669994; cv=none; b=XwIk9/iNkRvEoM/2/NZ7GdzTPcaRjg7ppyMtz/EUuUR6mBjE6B/FsEy52Dt0rGzFswsPtBzOBA8Xx0SwXIIc1WqIfLy7qf6M8hvhPg9kRLxoVEY0d2uMhiLm7LIbCm3jmlDU5g9R5er5x3V3MppwS/9BTh3T4v9GJgV2ewX26DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745669994; c=relaxed/simple;
	bh=ak7gQW8FN0rb6+fJL20MPRwfDAOORFB0a2qcnwzUSM8=;
	h=To:Subject:From:Message-Id:Date; b=R9KU0Qv00xD5zWd1/T9uSoXDgNeQpjj/4tUoxGm8hWaPuK2gzy51PEMtSmMymkjQbNQPI2N4U32P7rEuYlqR4g/2ox7vjFEoY+cQg9V4pRwpxELTFR+uk4fOPvWZAUd7z2uvnBtAVAdyDYRYeuIy7R7axtfNyFKO66UrP673f28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeHJK+ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeHJK+ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38ABC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745669993;
	bh=ak7gQW8FN0rb6+fJL20MPRwfDAOORFB0a2qcnwzUSM8=;
	h=To:Subject:From:Date:From;
	b=YeHJK+ean97k7jRCHSTSn73FELSIG9XEtmpBWfyL36V3IhwLzzUVjfnlQgUD+u7p+
	 dXFusmtLhN2NWIYeH0DT9Oot1nDRAhYt8KgrXW/9Cn+aeEeutjW4RaIrzeAhZXrDql
	 o0vUoJXQ3qvY4Y1yXDG60z3vlaBEN3g9v1hcq+qPk/qhFzqD6uXP1aQZVRm6kMPWnw
	 t1Fp3bAh/m/h9dc9izFUyFX/d5Z9V7PVPm/45cc0ZtTfOxPAW1w5On1waQKsmfwL7m
	 kFWT4Rum2PK6kBttz0LCL++mLbIipW5y/LrnfihT3bPVfyGeLbzuAL6rDjcZt0vfwE
	 YC3NH2RRheO2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B1CC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566999357.32476.2083718391441430239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf43fac3329a1f7904aceb6ea32e656bcabdb3757aa368a686df43cc839b6c0f
Date: Sat, 26 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745669993
