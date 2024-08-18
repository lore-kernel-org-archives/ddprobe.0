Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFC2B661
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724015154; cv=none; b=Gtiwy0WHxRv7IktWRrSd5xnvoz0ONQLeI5cl1IF8XKJG+zdFuewjShPLDFyDYKJ4CCC8/dK7sySloLSS8S5eAx5/XSHYFGdHjllLz8b9Yl0jIqdgjiKfZS3Le5AiTu+zC5OE8YYC6htt+LpYo2Fyi0d7Y/Lf7ibGQIdREovkykQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724015154; c=relaxed/simple;
	bh=QZqj4v+lcwRhwtMbfpFnFPawCxndhcu/AMfidMdrjes=;
	h=To:Subject:From:Message-Id:Date; b=mZKI40fIWcZiVCMcS4r77Jv9EInd5DArBqCDkKYi1pS8L69YgSz1ypyPQkXWgS3PaaupafxGEr0y715iOZvhb4O3ZWT+V5vc2B2A5zgp2Z/yZ6nrZMr88iaLCjIlbrdf2dQDMLsGRNQUCxDJs4autlL/NfoBfG/jO9HBzB3ZGgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8jSW+Vd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8jSW+Vd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1626C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724015153;
	bh=QZqj4v+lcwRhwtMbfpFnFPawCxndhcu/AMfidMdrjes=;
	h=To:Subject:From:Date:From;
	b=f8jSW+VdcK6brXWc6VYIyi/zyRypQSpNHNaNiqpI3Rjq5EplZ7dlJYzANMtYPdlag
	 5gPIT/3B+5PZyEWPsdTTnd99O5qFFjH5g0WMNfs4wjgBtWwzznGI3F+GmsqzQfpaRq
	 CXawwHEtT9P+rwXf4kKF2PtNqv9/3fzKJKfLroMrFS3iabHHqNsoR63fhJpf5cvK9c
	 1sEbVHQQC3SCG8jwoknaSbsmyD3y28IZGq8bgC0jiXgCbH6pri/Dh5syWOoqNjbNez
	 Oe3kDdG6ldq/vciCqvIKj46U4FAn7jrpPs+JKPz6sfNSwiXVQGgEep4c9m+B+6bigo
	 elVDQtp+ETxjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EECDC52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172401515361.11923.13632025604978417230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89bb7d25a709fea7b62cbb771d861ac586f3f0e620b9d167f20e8f8f7957492d
Date: Sun, 18 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724015153
