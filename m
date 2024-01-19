Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F395E4A0C
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705643897; cv=none; b=G6iPIMMZTy0fOGRmyShhvZch4JrZYPv3fVi4F0vbyDNMv9tdA2KWgIOmqdJAzgtCZ61S6A9ZAnVZzertuCo36bPv79YnJgJBGzcpXQS5fcdYcVJb0pFQlTwjEkJDTIP6z5Lo8x1YeLbbI2rz2iNza/xsePK5ul7l8g02rit9lTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705643897; c=relaxed/simple;
	bh=Q45VWoHkr1FrzWcUax/356BEsQ2d37zh7enhrk3xpb8=;
	h=To:Subject:From:Message-Id:Date; b=l2YqnpUC/zGI6aSXAdveOoDSCsnqY9HW6j8qimXHdUTCRjegjHLzQg5TV1+8grelWAAqpbLnhxnNhnUATlRcMeh1INUFVEscp8YT9zipPEZ+dvJNPDZACvuSYL8RMQnuJLTs+a5ZVrgq1S5+4n9/q8eEex3xZOYFpW8JjZSr9os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDwORDFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDwORDFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F91C433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705643896;
	bh=Q45VWoHkr1FrzWcUax/356BEsQ2d37zh7enhrk3xpb8=;
	h=To:Subject:From:Date:From;
	b=tDwORDFeuGQ/kzxwJ6z93WeKIR5KeV0z6CFRwZFa/5tCJzGE2nfdX6uKWIKYRKHND
	 n3S3Ghf+qWLzLpSei1uQt8QLI2wLRadfL+QKSznWenvpjDxeCd8Iva2j6QWpzWWlUU
	 BfYnLNmM51aI0bDxDgws0ExCkW3LgBui7BNx7LcsO7JGElOEXbmi9bb7xnA7EfH4nY
	 RWIn1jbj0RMe9rsyb0GIfWsRG7Rpyz41o1hKQHGzvRizWKxh5WAdk/Q+CF5Wcq86G+
	 FutQ7UVGohCtpXoQLCL+iEYBU9ZKlV0QsntDEMjha8S1u3yBNOa//ydTeX79pVXhzR
	 547TYhjGHiZcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF52C47DD6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170564389637.22031.9566686196673440256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c70404150f7d69803928d8ca4d43254a43b7c2962bb5eab6e21a9cc7cfa8f61
Date: Fri, 19 Jan 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705643896
