Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1A1279DCD
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764136974; cv=none; b=DpE5kP3oeafpXaXHCSLuinPMMaOAtUYbRJQ74SWxGQ76oHHykKgpSOu4rB/TBQ/YVv8wJ+oD+WSWT52RMnNiRrhJ4diRZ6DUqj14W8HQw8czgtDMQodiYItnGFMeTduBV1f29d5jbrX1rIA33dHrYuckQeYMo2jMzRc8UvINUfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764136974; c=relaxed/simple;
	bh=lMHUqSYDunb3Hdesp5k3w4RjJ3nVPB5eP1zsKbHYwI0=;
	h=To:Subject:From:Message-Id:Date; b=Cljw8em2FhrUQz/JFDd4/85NjsWcegJof20FgU4UPgrbNMrYExESS49ah3EalNaR7RdhgFo13FakFxjY5BImH+VR0NvCj5cPZnc1hVt4Sbzgrlr1o7VF5mkAkswAL7B8if2Th8flBBV7bQ1JDtY5O+Yl4YKIfrv8O/gRPLNz+mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZiAWUz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZiAWUz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1A2C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764136973;
	bh=lMHUqSYDunb3Hdesp5k3w4RjJ3nVPB5eP1zsKbHYwI0=;
	h=To:Subject:From:Date:From;
	b=WZiAWUz4QsQLmaQ+VZ7SZdU53YDaJjQfkAX8TTzDKQe6KzbMc3CSHvMT8oMRwXZ8q
	 5GxzVBbLfTOB4BkV4MyfJ13mvixxONvZvxJrkX1AUJuxiOfPacPPEI/gEw/aC0lznS
	 k/cz41sYtSuI6drK/jN8tWntrK4LP3/3A5JvQsbzL532Tz9N0NAR/sVSqkeQsQJG4y
	 o+i1mTUI44I3q8qxUqxPQUnVBvr2NcHuX167AjVX1rchgyDphSpPdTsFaDkzsDbUVo
	 AjGMnvf5ACFAA1EQLWgrQtLsIGiTjOwx8d0+k24/t3IsvOmbG2RHNNKhgbt9fpMuzd
	 yQxx+cjmODABQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95783D1036E
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413697359.20119.16458411955756762347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0e3b8a58c8d234c68e94112de74a442085d2613c6ed9d527260cbee95e434f
Date: Wed, 26 Nov 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764136973
