Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B502DC788
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761206394; cv=none; b=OiiY+3ijE/s1HgS+5+aMkWAuobTeJ8Vz+K2H2Egc4/2NIN8YyrWKSWWYBEWO4n2aF+q6UrobhkQGfhnYXruxIoCYnItUnPi/8Nj4iwqtkNMPy1fajZcQ2YTvA4Bw+bQdSsiLJwDEXRzCwrEhGNJWs4SLeRgJnchm9ekn/zMIXgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761206394; c=relaxed/simple;
	bh=5GJC/XjSL8FvWqFU+HTAMiyj+vnewyb7LDILtuYJTqE=;
	h=To:Subject:From:Message-Id:Date; b=Ipfu+/e821hvM/t/nwjKAaClEu1bGItN1yFmNK1f0anMZXQ0KrEVBK61jviOi8VEbdUvTN3qDvBBOh1EovqQHPTRTd+zAnzQMh2yBUQbAS8m69EE5ybw8y/dIIASkdnQ8Sn4dRDqEKOrernsOpUTtLif8VmEp9O6VGQ6eY4ReMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RE5y/k9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RE5y/k9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A452EC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761206393;
	bh=5GJC/XjSL8FvWqFU+HTAMiyj+vnewyb7LDILtuYJTqE=;
	h=To:Subject:From:Date:From;
	b=RE5y/k9wtfwi5MKsX4J/eeCrjAa4AmCOR6HCF66IFBX+6n2XGZlONnMJVLPDkN+o9
	 rELz2w95DfREc7iH8pL89Banx1CHLfP6J1X5XASC9V5sx+pWW1ZL4xI+468y7BjNcH
	 xt0Pz/xx3roK/WmgS3yl830BuYKLgoNVNj4gZbEhBXg23I/Anrh6nj98Ii10xf41CU
	 QlKyGBTUkBmXr+eXD8+PI69xF0W1OkOxRf2DXOR1Jtp4VYxvjqqjYN3Zt8Wcnct8OY
	 M31k7pudanHjgjjySOzVnUOnK2AObrK/oRrncA9nQQfL6dPuF7FQyKdyf7CSw92JKb
	 4xSuov+q+n37w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C35CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120639358.30258.461446483464492215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4a83c760fe1665d9bf5bdb19bc4c3dd5c3d4ae88239a57e62c6cbe9cb280b0
Date: Thu, 23 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761206393
