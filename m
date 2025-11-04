Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E70A28488D
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762283994; cv=none; b=MWcraEsnAeVYr0KcsqCNh19M9duP+Mx57YAw6GLrZzMrm4xWOVFHL94gh7zCPhiyIGylIYG4uWBf92pboZz2lghv5n59f+xZhiyt/eGhUxURlHx+93XeU0nS/JBnpwK8A3oq3RhESsaip+6FkJgy8ew2jdY5YeQFmeeMGC/Rnds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762283994; c=relaxed/simple;
	bh=gOinYDHkiINJy3TOc0Sv4FQWXHs8Wnm0KvsFj+80EGY=;
	h=To:Subject:From:Message-Id:Date; b=c331n+rTt4F04QzekX7Me7lnOQQsTsZ0/nbm+eZrIbG2nGeuExSh3aG3jcCxKqfhyQQ6WlE2TnI7Kw9tEemKVWOrZZsQsxbcpP8ngNIjKUvvUrx8AZGOssi+R2xd1NdjMPUKV2tSzj6xg0Z8Lg/at2YA2YXIvuNoQBXQsh+MRQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3HA2z2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3HA2z2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDDFC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762283993;
	bh=gOinYDHkiINJy3TOc0Sv4FQWXHs8Wnm0KvsFj+80EGY=;
	h=To:Subject:From:Date:From;
	b=S3HA2z2gjxXgsVv6FiI+4wvHqNkxJxmdJjOM0Bg0fkwQe6/gLZDCeCu3WYpQ8+4wH
	 bL4a/30sqfnYBmNkC+G/d8vABXB72PuSL55g+IPwIoSWK1q2oF+Vwoiom4L9rO5hLk
	 Z8zlD37mK7kJzjuHc1Hr8jO/Au1UJIMeJVIzkOlpGTRbgHKH6Aoxq6zRT8AHyLe+dh
	 OV1wzx5QiUXtz0+Pz3Q82f4U8nug1XPd+/HmSDXoX7xjCX6H/7H/fRpgK1YCyjiJgN
	 ltnBoTM+nt2hMZ2gTG0DZTMpb2WEpg/t56YctI61NxYp26CGKySqQjoLXF01Ch2nZR
	 VfNtT0G7XQtpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90563CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228399358.1362.11039541898389559430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 015b4da916e77f4f9baf3a072e3a711707ee1ba05463435fafb5164ea7d419b7
Date: Tue, 04 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762283993
