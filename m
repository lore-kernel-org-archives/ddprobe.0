Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5055417FD
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720605383; cv=none; b=tHUhdI4GzqalJfGVUi3d7MiOlDGbeWTirGtQm8wLMrN9keqUIL4qU1TMcj8fi4oQ++497fZZU0nDXPxilQzm9M+vCXE0NZNdlSv6sUFslXZo/s9qq3pwkT18yvUV604xU6OIXrjLBxjIhBzQPdOVLDkWc9lU7lP80VXJjRVHv08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720605383; c=relaxed/simple;
	bh=rmk2nGHghKEMg6epbuv+nS8NP9zWGx5Ju/lHmp9gBGQ=;
	h=To:Subject:From:Message-Id:Date; b=d3ygwpS5nmlYVdS9o3q+mw92XsGO5af/1nhSGkykIA0RX5oMAO+GH/HznL3SGSpdsffsztSqVPvPAWc4XRjoTrcUUnDVqqWnbdENSQXu8uZRp0tuiK4Aa3H3q962/1Dyg5QSufMir4cvAXjdmBYzSRJrJfmHTthoJ39uETRy7J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GauY0fX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GauY0fX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE313C32782
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720605382;
	bh=rmk2nGHghKEMg6epbuv+nS8NP9zWGx5Ju/lHmp9gBGQ=;
	h=To:Subject:From:Date:From;
	b=GauY0fX89KT29oL1DZ0KPk5d6h6YoxkLfwr4IHQLrJqLOPuFMhQfIW0Y6LUAUPvqb
	 0VSFAdW3bRliYSBhjY9ehh6bfu53us23p+HcXExnF/OjTjlQPTELDQYciubA++7Aaw
	 +v2v8UBnQRQpvCEW5GlKKueepL6hXK1EHR86yl507EDkIJzc9FQzTRWE1ttuZt9R0N
	 rg3DHtYv7eJdHRCl22FmdmNouNGU2yiFij228wv4GASECZV21c6CvHB/bgxWm7aMQq
	 yiUJlshoT7mRmW5nOdYBTAazd6u1SKaLCmzrlWCKd521bJmXRm28QH7s+BrVws0M2h
	 aj2Vc4aYKbyug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6ABC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060538276.13875.14481686470765023408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8724da4c397669d8ff031259f38807e11c357d571ff64128ba1ffa3b8a2f72
Date: Wed, 10 Jul 2024 09:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720605382
