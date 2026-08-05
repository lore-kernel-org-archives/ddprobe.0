Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A8D3B6C15
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785942034; cv=none; b=NoK29ps5welSk5fD1zHei3VVlnN3UrUhsi4/lGQh/9XqGsLjSTaYO/21GPL+kOarrTocpb/rbfPsrqQxjXk1+4Dc7ZiVc55KCPJCemOs3kePWJjo1avBAAyOW601wULK7zVD0oRGQQrOYpUmLJBu/Mo4WDAMDUPK8SE3Kbr8mjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785942034; c=relaxed/simple;
	bh=n3dBnOu5s7qQ4IRnZHHkdwjklBJ9DVrIL/6MvPbo1Xk=;
	h=To:Subject:From:Message-Id:Date; b=JAmdunAAgHAKbSyCbhjJNSaytdevp2TUP4WAt2OlnXvqHGlerVJq8jj7TQbzFY19UNtr2eOPCf1EI7itNgJXy4G52M134NtuKzgnSlLUEOLzYIl0jw43/cmHazDULlKKPAAE6rEHF3Tjc+T89IYTBTOyjq6TqHzxWu+mS2hPW80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/qKjPmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/qKjPmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2593C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785942033;
	bh=n3dBnOu5s7qQ4IRnZHHkdwjklBJ9DVrIL/6MvPbo1Xk=;
	h=To:Subject:From:Date:From;
	b=B/qKjPmf6VG5/VgCMHujXDChTHXqgwPGSLgDAhcKYFmlvPj/MFyKrhvbRr9cpGWVJ
	 /ucgZ5vK75B1mb0pKV4rXItwfmsG1+1Q/MlGTJFjTTKMZB+1FLpjSY9PfPSVEpAwza
	 ByYQKffVoDfABZURFYdcx9TEfWRDsX2L8s7fTBLVh1BJ3arZiwe6HoghmU6G2tleiK
	 ky/dd7qfVPzRBCdEhLs2tIjTtEHIjFgu8IVJ95zWOVJOmTwsAA+PptZUlmPTUoZrj5
	 yLwGVNMn14RIT5emSZYD/5UNyUkxWiXZOWgk8p+3zZ3vwRSo2ef6vXy/fUvnBiEB0c
	 e+OZMa59Kmp+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAD5C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594203370.21039.15740903370510029263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8bb82fcb6dcfab3e6ff56d98c0b52b7e1840aa601d0479f399cbb2c16d2db1
Date: Wed, 05 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785942033
