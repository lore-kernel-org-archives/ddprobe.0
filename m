Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9D64E77FD
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791997834; cv=none; b=h4aP3W4w/KGSodNaO8IlWrRZJ+WPqZMMtCe+5LXRcFh+lnot05BR86uRtEKcWX5FQ3Q+/J+3xeJcRHRA7mele6ZWhrK1QJUmFveMDGRf/IUT/VrDmsqrqOdgrZ0kd0uxcNhhNzMSKr7AUkpQixZ7tgYzXl0IziigQlh1cjC0LQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791997834; c=relaxed/simple;
	bh=E2hM1Mhz9mCh3c3NzYs36LZgviOrHzGCrui1v+Ky0GA=;
	h=To:Subject:From:Message-Id:Date; b=ehp2RdXZOSlDM4DSQs2zczkO5EOHX7cphHSVVNkiT6VBdicICONaNfmokBavCFF+bee0cJ7q1Et+VIXtJrNhy0EZXeX1vgNhf0RxuPC8xzRZhIyQ8MwRokLoCgAS33pygi+TF34Ltbvaq8OMu7csjUhYcZGDpir581r/Rl2F+6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRMVG1U/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRMVG1U/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2432C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791997833;
	bh=E2hM1Mhz9mCh3c3NzYs36LZgviOrHzGCrui1v+Ky0GA=;
	h=To:Subject:From:Date:From;
	b=uRMVG1U/Mqj4CzC3njBIqvYMyhzMcq11A8Gx9PDzOybWxvM4yUI98OqE+shGzo9GP
	 rN5hPWqotCjCxY6L/tBdXMZFCouqlzgbnlE+QbD626afGvgRFo67OMcKYRubJltIKC
	 vhD9xz3Cno7q3D7AjhFjSnu+xBbBo7Lt5/S4PLPjk3GnI18izRyOlKLBrs0MbM/BxP
	 qiRHwFSfEMCrmksYT/YciexGPWQJXRTCT/GPzlQVjILoxRsuQlYAzvzIxF6dBdU20k
	 qjmr+AyFWdGgyJYtDJ1T0gwMWWyouNk6z0OLRp4Dc0yH3TGQBkP5Kyglj17MgI6sOs
	 Xv5h0vlGp2kEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA86C3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199783369.10205.5337878636629695629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09d6d23a7cca882654a7b8c21ca955a7ecb5bfd6bd14ebc085a3a9292237a7d
Date: Wed, 14 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791997833
