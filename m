Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7AC191F66
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735877754; cv=none; b=blLZQNlDNBbmxTuiyAN7Hir2Hf+/RRJ9akJwPxvRwQqNLJXNiiOjcl7Qdwb4W4adP/6zZHAl9gtqh4w1dIwsU467gwM1ugeIiwlLoIzAInT4x+THIeAJuXHzrrya0mU1KJ3RYQba5fZAc7078TopQXTKYI2aot9PyW4n9hVBEME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735877754; c=relaxed/simple;
	bh=mjaVCq0Xrz2wr91uHl/ArPNs8/jLPuKchvO0sLZuFdc=;
	h=To:Subject:From:Message-Id:Date; b=upOkyqdmyYB/DUSBXHAmPLJCeDS+pSRIxZM0MUiL3+8UfXkqE8zhal1xD9QpyKKiZ7YC+11qY2lniJgFdTXB3uW8jH0GnghUCqwAQAR3Zuf0bluKrPXs69Yq/RrNHOKby7koO9g+1NzVD6XKDFuKFa7orCu16suWqooVtoWxF/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g26UCL/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g26UCL/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCB6C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735877753;
	bh=mjaVCq0Xrz2wr91uHl/ArPNs8/jLPuKchvO0sLZuFdc=;
	h=To:Subject:From:Date:From;
	b=g26UCL/ocYFH4HZ9hJ43vX/maIHMqoGdHqCwP6zR3CB0gsxBUie5euuuVSNmK7ox1
	 1y8V98nc9aZs15JKC7XgWELNR5nR+lI3iC66dflB5F/hYrpGphIUSQxEiJwGB27fmD
	 RuGxBW2cNwsQLP6mZRdLx6YgtRJl6EfjxUEWOBE9DRJ7VAs1KhWUPXxPjgV0SNWUQd
	 6o2kcargwzU7/26Q3CvV++4hz7mhFi02g7Seq+h8gSIugT6sTMLA4PXu1Mv1fgIot+
	 yc+7vv2umzWPCXvnNJiW8nsARwn7q1j3pW8FsWT63JofxHX9Xu9sCqiAiy797zr2T6
	 4KxQecIWkt9zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E071E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173587775363.23881.989806509548153740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a9cab91ae3a37ff95bee8352ee3986d2b8d4ff24cfe1e0ad7d9d6e1980ad0d
Date: Fri, 03 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735877753
