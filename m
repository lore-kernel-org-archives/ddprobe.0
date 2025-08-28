Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E95452F99
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756342194; cv=none; b=ebWGFt05j2UhbyiscGk06osmQ4W0vifrMt7byIXISbQU4t1m2SZopS/Kq4uqyB+t0VaTR+ajU809vwOvjAS2eCH6hVJ34H/znBvV7hEtyMIeppUCtam3YjxCrtJSLvEYRgV2W1PQm3X4utYLPlt3jqOQF2W6ZivkDBt8lcexZVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756342194; c=relaxed/simple;
	bh=YvSxVEnu6dJsnloQjAN9tZKDUsIy6mpC4U90ABtKswE=;
	h=To:Subject:From:Message-Id:Date; b=iUS8jv21XsmOqdWCawqVrdLisIQqTu9qsC7mjIH14GWxgclmjpXeGMXZS638AIznpsdiS4kETotJrTTQp/xCWvWT2a5hw5MUDubNm6xCjdizeI8OrYVGjyM6jVebi8nn6tOh9yIOkbV6iwwcZZFZ84HjZHhHJqXsmaRi07BY3oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APVuKjAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APVuKjAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EF1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756342193;
	bh=YvSxVEnu6dJsnloQjAN9tZKDUsIy6mpC4U90ABtKswE=;
	h=To:Subject:From:Date:From;
	b=APVuKjAjrE1P65p1cal86+g7nDOTFLWh3o5lg/diUxa5N+XMOD4CmS3lzP7YqoLcC
	 IgAkCGwYuWn+D6d+dP2DHoyy44UmhO7vuhdR8KRn3zXx+nR/gxd1CSnmo4PGvQqpUO
	 CWhDRNVWkiku3EIz/UE+1T1IlNPDiaUIX0o1CfiGNkjkESBc0MW/or6XeastIusloU
	 ADT3F338r/sBHLnJzWDgUTjF+h1rl+tIQ1WTvsIbBkTwwGOKmtWKLYTe83emodOqYq
	 Tbxk/AAcKH47DShQu4zFLcF9vGrLyV2A4EA1rOLyLwOVDNByQCAhrB5HkoPT60/CUF
	 IYJZNsRIIfz0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9330FCA0FED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634219358.20104.3908781927313461526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746817581fda19deabb2f7e17b1d5d495dca819d360d90ed804e94dfcbf509cc
Date: Thu, 28 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756342193
