Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C97428C00D
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752656994; cv=none; b=q8UXeu7ceRsgnjikAwycx2JEbn9Hn8jwCZ4MBwcmfi8cDBmYxoyi1w/YmmUJwkk3G+4089obfvIbhvLHPA+0DlRclN1PY3/JUEWC/RxU5nCnqBdUogE8rqmsn3yKJA0F5xYJBLwzwNZgFuJhcPowmY2/5zHYlNWD76zfmw2CBZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752656994; c=relaxed/simple;
	bh=nJdd33Czp7Ik7zfTTQyjxSgYTgiBOjFI94j1f6jpiI8=;
	h=To:Subject:From:Message-Id:Date; b=PGpqw8fR+wPkHRPd1zKVkgGd+pKP92zIRKTSHMq/w8AAwyeHraNF1Pq/g1q/1vhTgfhkAyNuQ7wofwB6WDePZFoquSFwm5vGtEpQxzVZX+1pjAguM22QYuDS8kLfzr4JKu63RKNnOgeivyvbHhkYypK7Ry6ilISP6zHHSGiSZCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WILBJyCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WILBJyCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B90EC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752656993;
	bh=nJdd33Czp7Ik7zfTTQyjxSgYTgiBOjFI94j1f6jpiI8=;
	h=To:Subject:From:Date:From;
	b=WILBJyCW3bGT+z6PUCGmw6eaHEquD51knsbw/OLf/vyBdX5WS9yVbOpDcbtPiYjWP
	 c+hbV7z2CdRIm5YyvnN2QKGGDWb+vxsOijZG1kA87e3LrKzs8qAvuw46JEHCaId2nq
	 3RxzAuy02N+47Udgb0BQkxXl3cWZ1CZqyOuBcYtWEXUHmmtiFy6BVGdLysA7v4nHAn
	 uFnTm05PfOQ+aXbLG6/svfJjJ8dpiLiZWnvKYg2eZazQY4QhKhWQvY1d0HtloFZGsP
	 Pi5MQBVgEeQh/BLCy+7Qh8h5UD0lmtz6P0EyDOWnE4/jk7C+nHSMqMLzPUhXvsZ5W0
	 lghfUaXV4YXig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0DC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265699357.27725.792297448363021428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7f546ef5fa970a07675e061e503aff8d6a9ec6dc2cf137e6d93b4864019ee2
Date: Wed, 16 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752656993
