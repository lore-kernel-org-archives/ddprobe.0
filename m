Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C75013A87E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720293983; cv=none; b=UkZlKSrPNrpM4fUvwnfikgBDl7HABlAxnqxVhs+vum2NHhgdPqJRzz6UQus/d+HhKFkIDvC5DR7PsB2Cg4/q9MO1pDO1nQH4eTk/iRNq9NKcm4lDrEV8sCAG3nB11I/dRrD9YhJtz+zl2eQ2/CcZ7eG3sQjPdKvOYlEl0FOmVEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720293983; c=relaxed/simple;
	bh=YbrnuD8OvR7Vy0zdvJ16SgWJ645caapdJKassQlz2JI=;
	h=To:Subject:From:Message-Id:Date; b=JJdL21K/OyMVpkHpNMvorFPEt8MegJo7Igz7qviharUoRTrufM/khMED6P4AvduGhZy7LlDbkt8Tg1UydiIcGtlux6eau3V3Pw+Zn04bNHpRR7yBHHVSpIK7994rOzTrFGxlQJgOb/2f9zvHOJ4gC2u8LL4ZTcYSKBVDQVeXnOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLcQKymr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLcQKymr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3698C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720293982;
	bh=YbrnuD8OvR7Vy0zdvJ16SgWJ645caapdJKassQlz2JI=;
	h=To:Subject:From:Date:From;
	b=qLcQKymrrCMpfuXZX4AC/c8zLJxeLuJnFqzZGKHYuF90ETqsKwLpqplQaThRRQzz2
	 lv1mQXA5zk/calF2A8K5Ouwk446dnuKFDI76fXXtdJPiifUHHRppnCQu/Wg8nCuRyb
	 C+0g3L5JUs4cH+zjjgTXd3qZQwNMXfZpXX4Bc/so8I7OBmS7bZrPZqyvyQEolcZ+7r
	 KWarS3xdOL/z1qeajzJu/I+4dWkHFuWTQLx9jas1aURFyhjILyGMWOhulIOuGiY7qE
	 Zp8FMn7WVL6fglpvuWvcgvlOQj4e7bHqvQO2RqF79zTfEkxMDoFQfgSq0UYhhM6aLQ
	 o/aqPo25FWuEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCE0C3814E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029398277.25766.16526620522399604557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d6ac21d0dffa10f2091685fe20e2af5e2b26e88f8f22d09085834a4e970910
Date: Sat, 06 Jul 2024 19:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720293982
