Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAFD7080E
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752457794; cv=none; b=sUomMa2H9Ox3ad4YZGNyGJglG86vJ8AYvB7YP/o4MjKYeeYjOGLpjukjxvPEWBckgya5qqu0koyskp6ScY//3ixPxy+dksEghicEwqN6j1hemDuEIU/T/94fajqJgeb01SwZ4VVsXsdMxrODpg8hIjkFKcM5TKXVdAGoBYE/tuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752457794; c=relaxed/simple;
	bh=7/75zRJcohhgcab6WXMFyFupVeRMlgA+KX4TlGZqFp0=;
	h=To:Subject:From:Message-Id:Date; b=UDA1tsmLdTfnJCiLKVN8vHavUtJbjRkW3I/ggF2c+R0fwqhddgQjjd0UrI1qZOY6jfXeF/MnkCxbAV4FdgcKnS0kWJtiUnjWcvb05KsX5pwFd1jQ98OzjUH1qiH5XDUpx1dE4O/rI7tel5SaXIQ2r1FN9MDnPQZgXwtHIRldpnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmMV4T1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmMV4T1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41ACC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752457793;
	bh=7/75zRJcohhgcab6WXMFyFupVeRMlgA+KX4TlGZqFp0=;
	h=To:Subject:From:Date:From;
	b=WmMV4T1PpGbcOGAs37uztLwrnC1endDQdu8HcAmu/CsRD67izItGazz0t/lGv8RKc
	 RjH2tz66CaGVzLvq6UWYaZ6puuGippAC78Xk8rvtf3ekEebXn+k7EXcsmnXUE2m1eH
	 oE7iBDEZFGPYJLnL6uh0rP4YIHLNshfYhiutA/tKXyHQNUv6X1Ta7hVfcw2moc/qzi
	 dh6j8dAgJPnu3fNmAvhbYyaIOZqRjEN6VPxUb7+WSRZeIG90xdxC3t/JNBsYrFexqr
	 rQNM+rw/tbrYPtKpeEQpknox3pwmRsQsAezMGRfqLUlP3LEj5fReT4CEPMlcPDNsVh
	 Y0F/EZn/4WKmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E6BC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245779357.29206.12963213034482614877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f220cbbc1c939852ed3de422a5deb8df02c9426ddd68c66c7c243ff3fce14c13
Date: Mon, 14 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752457793
