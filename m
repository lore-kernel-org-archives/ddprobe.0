Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3778E1ACEDF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746569994; cv=none; b=lPFVpEszeqISegF3rdlmtzyz3R+lyJNj3jPnmSP0jgTeLNKABa9yd12t8v08itojjJ2TcUsYW58kbYxooTbDDlz84z86Ey/z7zXABIITsTZ+ehjobfGAb+RCMuf3MdihCcpN5/R3Ku3xrBmPw38PlOrlySkMKvXrL/wVO+1EdrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746569994; c=relaxed/simple;
	bh=p5QFyo7kdGJLgqpyNVZcG2LkA+PWbIHShYdh6e/2/w4=;
	h=To:Subject:From:Message-Id:Date; b=nqiKuMHjhw2pkdJC9jGGdhulYThtu/BUHS6XxeCT8/cygnpnWIlsjPa7TZCWVDPeczqSZeNLMmjz0vfNlUAfH30UHkEMueiZ6QSe8y2teOfDxCYlHjyQi3Uthnf5fQXrb8zdG9G2CpfjtelSn3PQ4kJy74WFRud9ELy24hWX104=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQPzg14w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQPzg14w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8018C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746569993;
	bh=p5QFyo7kdGJLgqpyNVZcG2LkA+PWbIHShYdh6e/2/w4=;
	h=To:Subject:From:Date:From;
	b=YQPzg14wiV+tHxOcJR6kSMyyo72L6RaLKTTfa348vV/krw7pQpr+uY7ucvGe99FL/
	 WcbG0BPnncrjbI8L8MBscWPU+1Sz5nNnmOV1LhfN2YjQYXYzHfgIWwFlYVLwEAeg1o
	 9I74fzNstsbHnhDh1zJ6dorytK3bSE6jDXwUxqkC7FjzJ9XIlj58Um2qiKX/Vzi2F6
	 P7kR/40YwiYScbqSyRpcnoauQOjBnueyR5Tz5Ce6tzCgTvCileLr3iCjd35FDTenWH
	 +qwsbesqab54RfRcuKY4ILz7QdXS8LAGglWmdMPEp8mOfGKp73a+eSSsGRTpSOwqAH
	 sjyfD8E0/vBvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A98C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656999358.20088.12014210802607619435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d28a82eb90f11a04898540df53a657708c2c5483912a8c21e479dd2194ef3ba
Date: Tue, 06 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746569993
