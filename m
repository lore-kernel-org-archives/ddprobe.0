Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5867D15CD47
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 13:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713447563; cv=none; b=KMZLVihC3VibMYbOEfAfgmtgoGAJBJQNsVPiRIG/rBvCQspcleuUwdepOJAp4ol1GtSVBjXDoGPqc0Q1eGzksD5GGvu8xy003s1eOVWgPqGCNd7+h0Kgb5NkYHz1QbZv/FkKCLnRdH804LLFNo4H+ruiG2bxA9U/x5Chk25qL7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713447563; c=relaxed/simple;
	bh=SNIpmZXxzi5tjwp0g9r+I/aSTtRYHW6vbYZyFbvSjc4=;
	h=To:Subject:From:Message-Id:Date; b=qn69gAMncc2vcXEt3jiXiOu3wV1KMj9GkQgdt5JktchHs2vdZtKAKAV7cOGifuRfP/Ua1B8hiLWJX7uMa2SK52RZPFgsFP+I7aOlFf+FhqO6M0QWtiPw53lzrkO79WGCU0vUBY3el96A5as9k8iNT0LLSMs1UOBenmONfThHlZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mahvW//C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mahvW//C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0C3C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 13:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713447562;
	bh=SNIpmZXxzi5tjwp0g9r+I/aSTtRYHW6vbYZyFbvSjc4=;
	h=To:Subject:From:Date:From;
	b=mahvW//C9ch1021dWN7mSr2W6It/kROvzGPuokiTSJ0/CrcW0gGABSm5Moui+ek+s
	 51oK0RyvnGY/f3fZ223UgPxuFnDgQzn7R6UHHm3PEX1L/CHI+898aaxS3mtgKJpwgV
	 r5FXfS9DqyYf3WC1hzAc4dibylUKhLTW8U65sTo3H3kQ4BBDR5XomxAfglQMfdR4Rd
	 E8I+xILtkqmve/A9ssg860dHvNnmq0Y9gYqWlkDVDROE9iei6BFYt1HVlsvCN3c87L
	 oLLDJJCG8UZDLK0F9dVdCBM47G5cmbnLjBCYIikMo59gt6n9tJ/w4E+TJPswaMmL8N
	 qLFUFit/g+5Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35BAC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 13:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171344756277.15819.16550138652611385921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b847378f5e3b58b8d3bca49ff495a97dfb798212dc012c3f9d0f6028f07da38b
Date: Thu, 18 Apr 2024 13:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713447562
