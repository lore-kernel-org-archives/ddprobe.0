Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3597336405F
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778000254; cv=none; b=JMLlUr+z8jvYI/qfH5vSMrrmlk5mj4JRVeTm9/XgDsE+YrZQk2M7HBl1aDLCgIsY+BYPdTJphrlM2Nzh17JjStezVhIaXME5acgJmcXzYHnWJkj83cmm+hRbSP5PWwBinIein7APe73QC4AsHtU9Ed+/6GMQ9jxYvdH+NJAywWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778000254; c=relaxed/simple;
	bh=4sypG529FIOKXUZVK9TcwL7Lftac3yFtoL+lXpcOT5s=;
	h=To:Subject:From:Message-Id:Date; b=MpoXqKXbTcLASBiFwNPHPZEaCE02kM0kndD3iCxNr/i5iopl1rk2Bzi9FRnjYKerh+uoxIsWKCce1OccgFBiMffCbVSBvlyUnug2p4CzD/m+k2dkf0mBvIDlyG85AysjgxPS0VYVRUNM5/WWl6CQcIBAgXAWl0eAeF26AC87X4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPtuemUM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPtuemUM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA307C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778000253;
	bh=4sypG529FIOKXUZVK9TcwL7Lftac3yFtoL+lXpcOT5s=;
	h=To:Subject:From:Date:From;
	b=oPtuemUMDNOp5hvx/aJkyrYP4JINFwx8O/A7CoEGhnqsX3Cwf0WViZ/jjvR0GtAoY
	 6Y4pyAUcW4ZvbNSoFOFC5wo3NvYm6a0XxHuy0H514kWmQmUeAuKO6r3fLT6mIXcVaT
	 3Gju5Y/dY4nR0E7W2JQV/z/pOvZcX5ZAQgdx9+TLiSg0qYIW71vcUE+DtwZ4L7nWYL
	 P7qgnvmAGYFNGuKYUPlnMZRAMBNpzlZmk9DZ43bYCLx8GphI+p7oMKVacoU7V+nNr0
	 Y6m/pOUSs/WQEKQfBCJrgGBnoBj6oSBs/eIx7jpWYQjKySlTML9nZbbWo5WQdIsH9c
	 Ck2aHoV+G6ZPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB508CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800025369.13142.659952339262572980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507ddb2d16294b0741980511f0c5df2b1f60e356a86063c56bb8756b76069e7b
Date: Tue, 05 May 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778000253
