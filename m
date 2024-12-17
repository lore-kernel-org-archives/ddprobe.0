Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A8C1F8ACD
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734477953; cv=none; b=RckdGTxUtw7FhBSFafjTwiT1yoaT9M0XFlRhUOKg6wruWDkQ+BUkjXjxXK2cwAlQUa3OaGk6X5J8ItvplEVjAB120DBwEgygrL1GheN5r8bY7B2U6Eef80WXDo9Lc6cy4WBj7wlsZ2LgrbwXMmsDWnEW9eYTpbCXLImVtdHGjwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734477953; c=relaxed/simple;
	bh=q5r1dnOctg2q9xk73TXt3rVhjliSpV0nUuwPLy/6vRA=;
	h=To:Subject:From:Message-Id:Date; b=JqRglWIrl+/HvkzzJkLx87gZkGMClhO1vV6PWlbx91+iXmVLkFxxWyigX2i2gjxKt9NFqrLiAakXMp3eVIzwbIQ4u7c6q72+v3F8GXNhRrCf5+mpRZf33SEOHRzhcvV8gEUPzBY+lP5+lG84GTkwLHQGeu5UvSgrnZLy5Sq0xI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2JNq8ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2JNq8ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1FFC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734477953;
	bh=q5r1dnOctg2q9xk73TXt3rVhjliSpV0nUuwPLy/6vRA=;
	h=To:Subject:From:Date:From;
	b=a2JNq8aoDa8elKq3YACcjtUVv8Z6/2AlWRUgjrZ4f/W9LW4U9T0MIJCMsf5CUR/+5
	 tzL5dxMmLTs+f7xFi3n79laKNiqhWxz2XcPh9CTxm1PYQ09wX2IbN719Na8k1E/lxO
	 TeYi97q1k+xnSYesfjzRnszJz3jGKaLojnq55HXwwLEmHcJ0Yj1DPGmApK6ZIlcwv8
	 zpFp09jxnS+usUM82HCIBqcDV9AlkPiPCRdIFc0J3L99iPNRDCzbUBKmaBF9Eh7dlU
	 lP9+H9i2qVM2KZDgDjVWruRBBKN5RWk56EuixAzOJSwyxnUa0vmIJEloshGk36nuBn
	 ihlqe2ndAhT9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A431E77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173447795359.22989.1651542325380896677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9cc6960e699dc369f1a60718d9d34d6d437a4610bf2c7e991f99bfe1337a4be
Date: Tue, 17 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734477953
