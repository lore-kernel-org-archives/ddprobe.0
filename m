Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329063019B5
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762169994; cv=none; b=nzK87K4KXJalijMKzT6WPpov0CwFHaJy05kUbAl0TC602MxWBJ96dtvADLgcurd9NJDGSq+mUi7QA36PaSlqkTY5NjE78U/QW/H3GeEImhERW+1NBi2aqK1UwXZhoonmku/I3Vm8wDmRPMTFJxu14Vu5AxlyYDp70G9xUbRy/aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762169994; c=relaxed/simple;
	bh=3K1fsTFkWr3G+RwG2VZAUQ97SnSBMD65nQnBsK3YS58=;
	h=To:Subject:From:Message-Id:Date; b=D9X+LhQTEE9Y3coit8CIV/jKIZlhIUL+ovS/5K85EaRj/jMk0t7S8dJomZ75jqp6llzS1L/1kkySmQM4Uvc/oRkfvjuyGIaPlaMDCJ95A+6iYGLBKUlKyDcbAT/VkukJDey3pDGYr1DrZCmfFA+gn/V14OFWwC+tyczmZMe0ByU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMhigRjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMhigRjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA30C113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762169993;
	bh=3K1fsTFkWr3G+RwG2VZAUQ97SnSBMD65nQnBsK3YS58=;
	h=To:Subject:From:Date:From;
	b=tMhigRjHFFRF5ljm3nqbFQ40CJgvpRRSnCAPjCQ4GNyFQV2q4KoJIEQpD0I2F+iFp
	 eBZLrqEeNW2x/mBnk28NxAliaIxjGHWO9KfTo+feOt7Ay+cJl5z1u2lZ3kEoSmvMv8
	 k62qh50Z0cBVFvRxDspv78Tl1EO/JO8HlEon/N3IPiYYTSBikGDQsPNbNEvWc4r8e1
	 2RudLmNbOZuiXXPXgy9dOqXLK/ZOkpKXQUbFdRTJSjOGvxa9lbypndzqRLvqpys7KY
	 /idK4islPJ1Pi7K05mAtYy298wgZgWuudu+IYCHmatc4V/3qkeVU+gbh9Wh+WW8AIu
	 KkizoppyceeyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91292CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216999358.24425.3953401092392545144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fe7404503dab786971a3a4be835c12c855ad4ecc8ade858e685507413d6a8a
Date: Mon, 03 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762169993
