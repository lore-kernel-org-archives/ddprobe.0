Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BDA320CB5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758620994; cv=none; b=YrAyD8I0NvpfHBfFGL37OpJWyNKQCtoHPgvx+dp3OfkySoLy0ApExRsaG0cxrS9rkqSLQqZ10VaiXqiWSjxAyfUT8ZueXJNLjCYf+8BkQb/aoIi0yqMv6SYipunCoFgGs+f6sqGRQPUUy1AhPvjnKDqDdFYS/5uIYVesgzkhYYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758620994; c=relaxed/simple;
	bh=p5TYeL7zGJQy6z3gTDZWoQHhc6A7Opfi/JmiBCtGCvg=;
	h=To:Subject:From:Message-Id:Date; b=nHl7WDLS053Whrrl4GewC3dn37ghCmhvsEmofGIOC7GkzHN3RdTI+n6QgfldlMRMdxhvBTJ495qqYAhRbPtPm5bIpKQvjN7nDix1+ydRgUpmTKqChfoaPONybsMp6RHxbPjBompNByRr3+WgVl2RmBZPFlBDnushn/791gmYYYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZfGv1rN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZfGv1rN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7C2C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758620993;
	bh=p5TYeL7zGJQy6z3gTDZWoQHhc6A7Opfi/JmiBCtGCvg=;
	h=To:Subject:From:Date:From;
	b=kZfGv1rNtbHGXDiR75c2LOwCdfn158ytQUDF79wC0oRL14fkNGkIJR0GJaiqZr+aD
	 sMvy/H8IKXNHcP+BrwNHrB5Kem1EaNJzqzPfjhRSvQPgD6DZgunK2XPR7qbvYqklJE
	 8AtYp3gpJqxBeRtRKHg7GhIh5Feh4Ldkpt9ZX2yLTbpr3KCU7idOqV8JW8maOA93kW
	 pnFmNVH+cMte7DfWvlSlXCE6nK8gmVcNcXiBic6LF9fxz/L3HjvBjpF7D4ApEEFzFf
	 52qEf7Z1GJlk2m+OthyCzoxgk2G/wj2PRsk19Yg0mvmvOfN2ucodcBgKQ0CzCCypgY
	 e4ccifT27TEsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2FCAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862099358.4286.16785654733762964196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715b53fc7a82bbfcd84c1f2f634dcce1d6ee41de5a435ca63d8be5d4192ab9a8
Date: Tue, 23 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758620993
