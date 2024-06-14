Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D1F1A2FD8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718392103; cv=none; b=jMS3RMi4YcWJ6RpirZ4c0AjSf3MZapvU3W92T5PsNqyl+JZ4v84dkyXycj5Lk0H7cidcqbeKErkMmEAXty7DLbiBDAfMrKDd+bRVgJQjoleW8c5PSE3/5Nqk+qELYswebrXfX0L9Re1a4LKNYt4uAL2GeMQnNFWfFqzOQqFEWIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718392103; c=relaxed/simple;
	bh=pjxAlNB2yZ/iyYNePOxnLrUueLXR+W59Ach2Gacrtfw=;
	h=To:Subject:From:Message-Id:Date; b=RrpbFMQ3ZuvDkHU1Fu4PNVYfxgLVmUvQtVzgQDXjufKf4ngjvg+GnjP30aXIx3NGIg0FQ41i/QYgW5qglYZgxkup/8SPaYoAVPXdaomWwD4m0YygTRV68ZSlmwsLptyMABlokpvwvdswjXON5EGXrY0F/Xxq1ZyI1NtHgQwYaY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtbmjScY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtbmjScY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3059C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718392102;
	bh=pjxAlNB2yZ/iyYNePOxnLrUueLXR+W59Ach2Gacrtfw=;
	h=To:Subject:From:Date:From;
	b=jtbmjScYj7pd5jI0ZzHGa3ulBCnZkN7hFHQ6LGToXXUllCtsMPZNeel/HJyQNEyR1
	 SK/9wBC722PdJSw1TLXL3xrkyOG0BzS8fUm8DuaXby2SRDCmcRvfKBY3arPazwDNEu
	 78hAJ1aL30vWjTnanAKGJ+vpIq8QFaIBVkuD3f5pvaIVTM+4uxhB960mzhpck6qu/x
	 DN12GFUFCm8JUHnFSmHMeqbrFQ5pR6VHHwvvv4qlV1ABmkmf/Q6s1VgzidXt/dQW1m
	 zLbQB+K8ml+SKsZDxB90cuocvMQepFydK0B0qx/C7WLvwYaIW6QZjDCZ9rGABUEOEm
	 mtCVQeuKKW/LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE703C27C79
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839210276.17073.14942555800612420410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c258596729811a8943ff3cfd7bf83dc3304c7d1d0dfd5a2610320fbc8b0c806
Date: Fri, 14 Jun 2024 19:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718392102
