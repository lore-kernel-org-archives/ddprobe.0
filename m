Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1851E1A33
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765388574; cv=none; b=FCrL+m1Xma+ZT89TOj8643f3GO+/eYvzDVK+LZZd3YIJIzTUnY5S1mPeP6EQFtAl+HZgwDmQa6IiatuH6GGJ4bMCtxGlAU6+4roFaLzuiqlRxwCE/rt8ulzKprgp5avsj7NVLw6sMyvKxG5QHVHSSqhMQK4TkvGAGvARJODIecc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765388574; c=relaxed/simple;
	bh=py94vQXJoZGGgcjb1av+TZLDGVumtC+PH7erDysyvFA=;
	h=To:Subject:From:Message-Id:Date; b=Zotww/9gNtmdoTYbTh2rWKa4YBJpkRDRiq7/qNwDjTBlUiFPjDVQ/N0ZcjxK9oGURtmaq4R0PFDdFZH8UfKhiLCclQ7I0SG7CnElXyLcl7qnxxHRv/4hRiCIhZiapmm5Gl4juZiK/POCbLrAHV4jryAZOYkLUvF6lIyFKgb5NWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkPBshHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkPBshHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2592C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765388573;
	bh=py94vQXJoZGGgcjb1av+TZLDGVumtC+PH7erDysyvFA=;
	h=To:Subject:From:Date:From;
	b=qkPBshHycDOLlj08Mpys7EQ8FyM/1CxLo8qRWt5x29/dY2+iikZazTwC7Qwm2Uk5L
	 zaoQ5h+6Z5dC9DPskKVbf8Iv5C+onT1I6tkW6vOzqU99CmW3IMPbTDcQkUlVBeT0vo
	 iJNFEFeP43huCsqwmvi1w41xUPyKeIWmp7lu27Ho5EXcsJtrwYNkto/O2L2LndENgv
	 7L+RTQpyQKFLpfnajReUP9QIsvhy6R5kyPPVzb62qV8AHvc10HD0/laAQu52NlaSRc
	 KI1Py1buECHtSgP6nLO1WwxA7oGWU99Mhkj1ZjD2Eqbyd8YUf4SJY1bUDFR/gGjhTD
	 17AciAFBELBVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B555D3C938
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538857361.2697.8934202942563425976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d628667f900570a779d8d3d99d0318a17bffec47478f1f0103149567c8c988
Date: Wed, 10 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765388573
