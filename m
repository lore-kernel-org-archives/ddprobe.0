Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17258FBE1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705908497; cv=none; b=CeyarRSTLiNRknU+++7j0cCAbSxAiPxCXU4UlKc39anpLert3/2wO8ASLGqTK6fjX7/hDeEFwgfDeHiXi6vrFADPQyV3bmVvfMdTcysQfZxpXtdJ5xm+Lye8OPfX6OCFSUawPWinON4bLGdMygFUsbJSi3HTjBLiKNJ9KV7IWag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705908497; c=relaxed/simple;
	bh=B6TuzLUSax3/9uQle2ZRj8q98NqY2TRGHohufVHohnM=;
	h=To:Subject:From:Message-Id:Date; b=B2Ihgqxb9zNqITeZCWHCpDVjN1e5QYbpymZtg64j+8nDGQvOGrzj4KZirOfPO5hNHyhq8+EjtD5mALraKMRXe6zVBTza/eDs+oidopPjLcekvqxXBA21s6ID5tFb8wRtFadYCYXxzSm1+E2Vezypg3AOdpJHVtsb/8HT4IA4+m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFkSwhGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFkSwhGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93D94C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705908496;
	bh=B6TuzLUSax3/9uQle2ZRj8q98NqY2TRGHohufVHohnM=;
	h=To:Subject:From:Date:From;
	b=OFkSwhGrLfAF3B47h7GZsQnhq2R5FqvLLa9O11tuW33Cqchx6KUB2OKzltMnKmr7O
	 +PxmtoWRMl6u9BqlCS4p6xNdGZTzDJh1UEv7WfdO7J5NKGrGlZ4C8hQVSLdTvbOdP2
	 z/r7Yh312KZfl0a4/j+yZrY8l/nWJmKnRvsZD4vuJ379wIdCZmhSKYn4T0g3AzWCGK
	 FcVFBiFJUN8YrARTiP6DYq6ZvOHYOWjRZdapqak0RJvMDlPo+1WBx0SmlkFt/EK/Jh
	 ietMXD3zyVB2N7yik7sfTbf4GEz71MeMDPSoAJPVjuOQb+oKgngZKwkUTznkytt9nq
	 PKZpE5sYtLX/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74089C4725D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170590849641.25205.3241417735189714068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a9be05e96e53dcd0ba7a69facb81cbf0b331e49b9bcbec331dbe4be592aefa
Date: Mon, 22 Jan 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705908496
