Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F215469D
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719624263; cv=none; b=nNVbQQF9Iov7HKxwIG9ZRtSfUylKnbADKmBFAG+MUBEll1PG4nEhOZ4+xaqLUq2mIFNcpluCGEEhx/p2gPBL2avYerbGpHXBOnG+qsR8EF3WcB9inilo+VZ0dRBQYax5JDLxitdbg8s15EFDEorHz4880snPa3Yoo7O5CAVkagk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719624263; c=relaxed/simple;
	bh=CUiA25dGyXGPDz4hHLxALgCBEslQa0h2KE2aP5JUr34=;
	h=To:Subject:From:Message-Id:Date; b=jSOaR7BlYI+L9EA3YHrOMr3U2aTCkF2ajzKkova2ijBoHVE7oHSznOJptVKFYNJBifYD+DiE4SMyrmFM+7RMYOsdu7Yt6HdxtTmh1TYb5bAC6MkrEEdbDIWNZr8rTuIhmCZgo/3DUHwhESApjL4fGy0YI1r3wHoJsWnSyRxSmBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxnWyjhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxnWyjhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CE5C116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719624262;
	bh=CUiA25dGyXGPDz4hHLxALgCBEslQa0h2KE2aP5JUr34=;
	h=To:Subject:From:Date:From;
	b=gxnWyjhPR8jAg2NR3Ygmc0WnU1j+9Fp5ysjSHEUumFlnF6XNHbgCpLDjfjLvgX4kC
	 SVjgJ3WuGSMJYH54ER9u0uHzj+vhpXBKeSf/+kE2aCnOSTQ4mMQaZyQ6LGKhcK+xhs
	 t+oQ1hLN5rIVbxn/4I3rVpcqrNep59LLt18EPVDFWDFPiUzozh4NtqjDVxucM6/851
	 MHB+7GRlDVLzi9EGgHvoXJZbTogRZyNJNdXCroG1Q1YowMHdB9HewNwH8PI/WH8TTP
	 4gPucUUvrSWVpe0aY3e3gPrzI95Whzl/vvfOTNSCZaqtJLUnQaT3WQe2u6IFoiWLs0
	 MuZIb56R6OcqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF124C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962426280.30419.2552042471830531308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d236508bac1d2a07be9d2ecf222353cbf9c46650429efa76d49cf785a20d9f4
Date: Sat, 29 Jun 2024 01:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719624262
