Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199BB1FC0ED
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760296195; cv=none; b=gLOCST8HfxvdxuzPhgyyMk067AqsK1yqO7a0TouoLE/R5LnTLvkdRWPeTiqbLnYkawQMAcm5QF99g42tj8SbRgr8dmKFDInmtTyKv20RJRtSM0dBYqZ+352jcUMWtXyEYzQ3Ppa4bR8Anv8zU6gLOESU0o+dBs+/vyFfMVijaMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760296195; c=relaxed/simple;
	bh=Q+mBjx+Z6f8k3qKQs3T0HRUVFOyvPaMeam9QGpbo6kw=;
	h=To:Subject:From:Message-Id:Date; b=GEs8DjrYgn2Z2mTatVybF3y8PhQ0Iie+LJHKSwplUE2Ql8ANHRJDdDW7JjEC6m6slopvaz137rV/gTkCYopuID4ObnFEGkuLcuGJqX5+kXR5zdrXudLSfW1+JXyg+r4C9t4FV8lihZJa7Lfk4uhj+OJt8KZvsvYXyioA/h88AzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bl++M6t3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bl++M6t3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21C5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760296193;
	bh=Q+mBjx+Z6f8k3qKQs3T0HRUVFOyvPaMeam9QGpbo6kw=;
	h=To:Subject:From:Date:From;
	b=Bl++M6t3qrQIkkZJXFVWg30VXXhgR2FIew3SsBmlCP4yW1Mdxr0L24R7jDcUbne/U
	 1AjGm23hF9xIxN4aGWirVtI88uWytfqyEQTnzg/kdqNPQEDoNdpNzT0SCM5dSWi7dd
	 xX5w0MTT7YxFyGedsxl9PiTtj4sE3LTq6mE/kou3Pr/XkxBhTN0wd+j4PTjc5grMi/
	 tLTKrl7/aR4no0VLdrSUzs7gIai7YdjIBj8LtzGYxkas98Wmj4mmIJMN5bR+/C7Gzk
	 RPFOKSJ+cGuKZv7traafKWibAcwkHtU6LLEpobLBFd6A/vHndwRYV7y4EhG/t2Uuq3
	 UT+ANlpqq9Fjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0CACCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029619357.21746.180184448234402822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2f28ab4d552c70542145fa96c77c86257a42fbffdcb9ef286f9be05a5d4fa0
Date: Sun, 12 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760296193
