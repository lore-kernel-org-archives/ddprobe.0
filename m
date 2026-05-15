Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD083CFF6B
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778821234; cv=none; b=iALVYQgxF/dse1xVNmw3tT86X8edjXaol4gHhs9MXY6SmtbMczad7Q1Igvs/Ag98ixpe7RvWT6gAZpLbZx60prYWU6HCrpWgOM3NTQawF/cC0DO0XmIWbg9DYv8Pgtz6g51tzxW5dquVwM+IpMbgTDCwsNVsBrKECAiOROIyvwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778821234; c=relaxed/simple;
	bh=QQP+Bch/c+FAC+wr+Ht+OkfXj0GiFzRx1YsCS5dFpWY=;
	h=To:Subject:From:Message-Id:Date; b=O8/Wzmlbjlj0ihOXKvNDlvQyIlHGk0RQc+bqlB3IZDFoNIyOnKJD6C7rx3An0iwjaWq1OnOgjGtQNkQrRxIN4A/EaNoUB92F6QfC3C+h5mBm9JGp+nWQ+YHXBxCJbO1AMZYRjGr7EU5bEsUlkw0Az9D5GnQqq1kORvcbAcSzLfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzgusax/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzgusax/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE220C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778821233;
	bh=QQP+Bch/c+FAC+wr+Ht+OkfXj0GiFzRx1YsCS5dFpWY=;
	h=To:Subject:From:Date:From;
	b=pzgusax/Ke4U0Us+StqfQ1JNMma3n6SfgQHteNsgpTpRTsVZKIpMuFFughbqeIuez
	 OMnCwweUG7PI1YMTxHu/ADcX45z1gph+W23+Ib9neJGa52LWWdiciAw6Lh1BVpFjfp
	 Tav6p0hkuEeRvWxc/f/yPuDqUlfOT/oLJO9tqyo5wZMjGmdcu+TkzlQu1XC+5lo9Nt
	 0INnexNKGGCx7Qt+3ZgDnNyU+nRMX1weEo0SqAHNQL1d16Z6LagemtF4SvQ55tBSee
	 p6M8ZlQbakGzs3Rb5DFRVh42ZJ3Wsb4s4vF7SAK+13o7k4X76ItJaoxBGC73Eczv9j
	 9qvI99gT4FqxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BD4CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882123370.14578.13975145148090004998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e813e0e9b71bf535f3d253fa61792f1c2687b02e2823b26b837c9285b781c5b3
Date: Fri, 15 May 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778821233
