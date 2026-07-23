Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4079E2D063E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784776774; cv=none; b=hyhiHTZ1Gq6af/v+Xy9al9w9BlAavHmvuYfe9c90KNJ/cxjKVIQ0/Pl1fwCgiSe+l1m+HlypIe3k4lvJNixqBbBpW0oJbNvjYFSZoG0Si7NChK3GBL4jeAWC1uZ9hJao2SRLdZ5gzGcC69Yj9aZul4NG1Ql0XBffyyJGtU1WCNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784776774; c=relaxed/simple;
	bh=sb7IXpGXIMkyzGpiQV6syNNaqFrwP/nE2ufyMfWzaQs=;
	h=To:Subject:From:Message-Id:Date; b=sDm/bw49jzTrDLVAUQtE8pRSUm1es/9UnZe4KRWzbBE4sj5XAmijrRkRiLPrA66iKv/9fOpp5C7tPLCDbyzXDqE3dcCgVAZe9nAviszTdq6bjjuFcJtbS5qNIEsrhvr06bypE4wR6YHK8Sh6lr7QpB9phxw4AYZR+3p2l7Mb1Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMz4qYT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMz4qYT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26E7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784776773;
	bh=sb7IXpGXIMkyzGpiQV6syNNaqFrwP/nE2ufyMfWzaQs=;
	h=To:Subject:From:Date:From;
	b=TMz4qYT8sHUWOvNMS74vNQi9czPoYlYs/JW1nMeNsT4Wn2Lg69lFhende5sSWiVOD
	 b2YjwSxnSXpaXNWI5MRu0BRpn+qPoMzRfdQYwMyrZ8YJRDoU3DMaVkK709x6lS5kVa
	 GdykdqrsrO0/OgPW0uazbe8Ccqq1q5t0GHrANexgKeCiRo9EZRjBJDEKy+6dJHK98L
	 amVntA821P+MUOcGYVx7brITLizsYQ6XTmK2oeYdsX4V8xyVNGKxksJ0Uxlcn6C/S0
	 PChiTQip86QkS/eANSCTQDp8ebwtQo0fskPSAc2ILcNxT+TDjiL2CGq6Ll1xNBE+IJ
	 4akQ+1/bCDmAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64F3C4452B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477677369.24840.9926400169022212310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1058b4ebe7aeae8bd8fce29b6a4c5a52117d8b136e7cc161c2548a629d57c25
Date: Thu, 23 Jul 2026 03:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784776773
