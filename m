Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3640F213235
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747970994; cv=none; b=UicNSpN1mrK8Z674D1ch+MrKRDU6oAGuHqG8OVfxPi0kAYVhZdnTT/u5a0oL5/f5t1d70ByrCye3Crntzqp24rFC4Ybhjs02T8UUjoKnMzR4ehVqUGwfQiw85PHJm7HiqBlk5dAXkkkWb0K/pmtEBagJyEAT9a/PwuxT/gJdpIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747970994; c=relaxed/simple;
	bh=KZMmGyYqy7uEBNmeTQJwdQkVY2+du65ZJMsdBfB2k/0=;
	h=To:Subject:From:Message-Id:Date; b=YPhxhwcP8ID+u3VUvmxKmYSX48lwX8S1aGZHc5mzXSUM6yyoPBia1ql6+aLQuU7JeMs6qYgMSoWZ5t2ay6KnI1wynsUxWn0X3u0kwa0VEj348sLJjUi50+wErqStW77cgCxd+yOJSQ05nAhI5u7SXMiSNACk4GL7dJpXca4C40o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2gMLbZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2gMLbZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1530C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747970993;
	bh=KZMmGyYqy7uEBNmeTQJwdQkVY2+du65ZJMsdBfB2k/0=;
	h=To:Subject:From:Date:From;
	b=s2gMLbZYpuFwLpVSRjybsYifTB5S/LuRTiA/OMipuEqCvbjtCGt0NxX1ecYmIxwSr
	 H20K+kBAfr8Ap4Qa4ibMwtPQhj7fwwfcW9tHGPbi0reXzmyO5s8EMQ817SeD8CLEPn
	 beP31Uyhgo3ddgQzcuPkJP216ATncWnULpSZlRnGgDZrR9YzaIqY/8o79A6+DHtS3s
	 kkX3LSAYw+kj4Q19s9q6NW9NbOtxTJv7siJlQHHcaGYeislmJuvhKgOaHy3CgOTqjT
	 8N9hQO8tZ0jb4in6oSRmjpedU5TfWqLTKQoAmM7roIjqJnhRg6tr9xAu81Kiosi7n2
	 cdO6a5T4Z1mXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA14C54E90
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797099357.20193.4357671950850219317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d75fbb5b6bcf45a421c32c8839bcb5c63e60fe431586c38c23637d9e48a59b
Date: Fri, 23 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747970993
