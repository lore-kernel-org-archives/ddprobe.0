Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F4F364EB0
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782680914; cv=none; b=E7YsRbc1DfFjXm7CUzQpJgDto2DEewk5UYNCMp2j1HmHiSbWgv5RKqaavMUJfQ/f9y+tkjRp7JNFNGbOazLNjXJ897gGT57802EiQrdjIDhyAfHRJsguEsD0AvDlKzZT8U4boHKs8jh3Jn7oYX3x0ix2qytxWEYOTS+3Apa1hFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782680914; c=relaxed/simple;
	bh=qUEZCgm6JLhNWegOTdKhgiMknuXMwRkfqj5jzbvngLQ=;
	h=To:Subject:From:Message-Id:Date; b=oFi31A2TqWhmSq4qAL06ls/wpnbeJN8IN+vRJMjMAbj1Nwu2M79gm2QGnocLTqBFcCQNiPmwuqtKh0aiVi0hqLXzhhQV6uxHRL4QvxZK1tY/cUcsnSwD7/epUWsf4wlnOf4fbFrrXBsMoWK0iR0ShKfPFsfE3vDZRZ7IzYgZnSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ru0g/E+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ru0g/E+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C640EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782680913;
	bh=qUEZCgm6JLhNWegOTdKhgiMknuXMwRkfqj5jzbvngLQ=;
	h=To:Subject:From:Date:From;
	b=Ru0g/E+TtdkequFgeTdMWMtZ+WRUgrEDMQtI28VA2I41eDjUNp7HeSI4GAANsaNkO
	 q9ZiFGjrvc2uSSVXu601vwhsc6QXg/fujoJ2laPpoxrDevmL0CnHqe3LbLR4Vs7uKD
	 DkRrTT3s0N9+zLPIHbP2NljzvnrfKdAhUKwayKnJ5JRhRkuST8mZGOcWTD+eD/Fodh
	 DLVq48DO6yX0CHWSUuWLXpOFhyhvWHWTXZSK/ND9qmwStAvmL91uBj5XnKadXkOe14
	 MGNUTGVoxQ+dRmL5/f1Zbpzak4yN9MEDYt4ePoNZqvN8Iw8JL7hgCCq6VJIBN0YcwD
	 pSeKXFhFYDO7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC505C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268091368.5524.3251345672457353256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1700ca228a3c45d40a69a2d526861d9d9a0026fdc6cb09e916c98f87474537d8
Date: Sun, 28 Jun 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782680913
