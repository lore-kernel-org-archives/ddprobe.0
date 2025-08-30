Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2050E22156D
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756560594; cv=none; b=rXnTDqXsz3mw3aOG7cpA6uASuQ4nSe4kelTB715PKXgICUXb/7jE4N4z8fDasGFNymoqyiod5UYVfpgxcFBEAA9CHDUzEQErQltKGDVJtCpoC/4eEnc29pmInP+0F4iRLFmXn0yPozG/j26ByvfRR+rjjHL5c67GoZgZFWWqNkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756560594; c=relaxed/simple;
	bh=pCgKox8fVwsD+E+rsHKpSj7QGa7Wvw7yMgHvU8Np960=;
	h=To:Subject:From:Message-Id:Date; b=CklMj0YM+j+fytcnv9n2i1rPywVPVycbwt4oD5yj8nPElzgA1KBUylf+M2ziPZ+TEKDmLqSu+tLrVk3yi8Ez7msouSc6U1zRHxqmXlN6Xgaznqc7CLjfOVZxtTWnB9skM/1pYj+Ok+4hn+V7hUO6wn3j+3n9L+Yq6grgMZ4WdYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb2NB/Pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gb2NB/Pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCD8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756560593;
	bh=pCgKox8fVwsD+E+rsHKpSj7QGa7Wvw7yMgHvU8Np960=;
	h=To:Subject:From:Date:From;
	b=Gb2NB/PapKEB0LOkpsCwtCv2Edn0qRCeMdOX9bTVORs8I2GVmoVN4ORHeIkecr+tH
	 xPnFNE8w7dXODruwB1co5JADTzX5Gap3fh8uRxTQv7BteK3fdJ1YAC2AhXjkqppcMF
	 tYW2YKu+S5WZKy72V8yzSoG/oKs8epQ9rwM2Zcw+wxLPuR6hl1DLaTwPHH9wd92HkN
	 hBcJTRG3WOpfFc1rvEWsjLFWrJEoQs9iCjQjjbfVhBmtavFcSHPkwZxn3BOieXV11m
	 f2dDAAN5TSfHWn/nh2u0fgp3VGbviRpNv0aa6Y4KBnfPG40ry47lK/osJ8nLwkORxQ
	 f2HKfR3rkD7PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E44CCA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656059357.14779.10558826004062573028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb93f3b8d3a368ad8c4d1b6915b2996a2bef9cb72f0fae8c80e6d10b7de6d083
Date: Sat, 30 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756560593
