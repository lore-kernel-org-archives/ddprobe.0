Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B97308F3D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770360834; cv=none; b=NU4FS4VQviHcGyPuwvJRvnFp96fVY4oG0wD6B9X2FEBzpZCH5MfIABXRG+fxpumvW9KUars6eSfyafcI9UdFgL8VoBgaX0iCaxPOhD3YVNqP1DGdZFh5TdJ/zCmyrKVzwy1shyC2YwGSYEjp0sLH6+Y6SyLqCjtK0IBQbGT9/UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770360834; c=relaxed/simple;
	bh=HFFu2cFLfmERU5S9cdxafFs5rPXLbjz0Ui7koaAFiI8=;
	h=To:Subject:From:Message-Id:Date; b=ppeQfdTSqWbfSWRXOZ8t0h0egs5sWTqMJ4B1SNROYU+ckhEmJyRTuYijOFpgkDCr09N/J2T9I2HTB7E3vezNicAnu+rEJqjexTtnnpQkZnCXqsOzcdZUdc98bZbDhL3hvSh9jXA3hE4EL9s9JE9mkoQ8kXm8nGMLiO73YEAfX3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ks5YxH53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ks5YxH53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB66DC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770360833;
	bh=HFFu2cFLfmERU5S9cdxafFs5rPXLbjz0Ui7koaAFiI8=;
	h=To:Subject:From:Date:From;
	b=ks5YxH53rm3HhhFzWOOjElbz72Mv6X/Hb62OVgMCpSnpNlQLSbuSpW5Purz2rDBg8
	 K6p6NGj+m2CYeQYTI7UZnWnH0LSoP4gc7x3TUjwIfgSJcPlYLhw0tB1c5HWXHa49ji
	 i6hzqFZz/ukr392fPRpAyuSS73bmCn9duStBXKxecufHu8ZjMqSXRAJ0PDEgYiNDG+
	 mVe5WJlf+lwfc6jrEjP5uugpD34bf3sFebr4AjlCCFjYBBW/pWAoPfGtW/rpysJfo5
	 xdG9S1V0eQLN8AZGH1ktW9MfH+n5/+wlpyrVZejnkBS+ZNnaNJ6RcT7NiJmALGM9lO
	 6oj6UXJCQ7+uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992D0EB28D0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036083361.32711.8121099057221674872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40c1a2c34c6343608e85eac7536297a5f4752a570579ccc9cc8588baddca2c4
Date: Fri, 06 Feb 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770360833
