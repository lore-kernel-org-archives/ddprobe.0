Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BCA3093D3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768276434; cv=none; b=Va/wLhe6z47B9w7ceLG4POKSkSf+VvZ+OOztNq+x+z5BQWy98sgbtuiiixciEma4PWPmoIC9Xp4um4uLNLAMLNp5NqLoFuWeUO6OGka0RVuq7mRztz5u6NbA08t/PHQ+AeNaGBsp+Cyf56uhCuXxfFGIsJd+O+plNCCF7vePNHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768276434; c=relaxed/simple;
	bh=oxHt5pOKeZcEPUxbY6MhObIlKIEHwUD5xfUNLfMe9T8=;
	h=To:Subject:From:Message-Id:Date; b=ES/rtYUUvdWeE0FBT3wD7yDntoz9q50Ks0XYSWIXhv/ltPM5lAemnM6CDhV0a2PFYNXDbhTRrcza4gSwxZ/lKuwOQ6YtQ9gCOiOlHXnPtdDSOtDsWgqhHTl0EfqPeNuvup5bRWq+bdIDQo8/PArKt8z17lwW9rYEtdA9i5D/Dfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDuZszgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDuZszgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16B7C19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768276433;
	bh=oxHt5pOKeZcEPUxbY6MhObIlKIEHwUD5xfUNLfMe9T8=;
	h=To:Subject:From:Date:From;
	b=uDuZszgWm3XqrNdaZK95lFlfwolipmEwR++0zk3jsuWxrEEOsvL0v90WrjzjXorFl
	 E64WuAdR/UZy+n2cAtWZ3Yoohm85H+F898xXANaVKxQXzkGpURDgIkLWtv7bBXO4FT
	 ktuco4kLs0hGtGTrTKvomOHULway3EGxqv21b078FYcK8XTXIC7h9Mlw1ezMlSQHI+
	 CBteYudoF2p7fDYeP2kNi3MvEQkq75NEixpkmGJqW0ravNb2diqE/NVPsLq41B+hf3
	 /q1GbRpdzTivtQPHP7opSetfVI8ZuQGlkni8aKoiE0XFUwVSlpUxtRbnncZDTSLxcV
	 alrV/KoN2G6ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906E1D29DC2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827643358.1045.8932769734282457542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681891f7a9c7cf1519c8cf25d5bd28727acbd6aa32e200268c929ad6e0976c83
Date: Tue, 13 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768276433
