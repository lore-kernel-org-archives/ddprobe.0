Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB644207A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764119574; cv=none; b=tvilD/fIT5MmueErXzuot/h1eKG2veCEOVYFs9vNdWZfsw2/Tqa+7i2AaeEg/l1NHyhjeZm7Dog5kOyC/h7so4cFyHPMSVhUpi6v6LkcABdlzS4B83TW6q+1onyJq6YJfI8LZIhoW8BIUNlTQMfbnekUzXpvU8cWWZlakh45kL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764119574; c=relaxed/simple;
	bh=7nZtEcpW8l0uM8OQA1xoPILTE/Nz6UnFj2C6cZa3AaE=;
	h=To:Subject:From:Message-Id:Date; b=FKx7YGgNo1yzUHV1wxGtvZ7sT6PmMe/Nt8u7OW0im7OFR1Sjueib4gyV+ncMQaMoQ0dZMzBsDLEQXbFyd4FiXMhMgVAxkrAitowv3tD//PtljMIIYfRr5SHhPZ2+aJI/JZarNj35dSoExncaxtQc4QoMDCJ3R9Le6lEt57EiCgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TN/ScGvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TN/ScGvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0A5C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764119573;
	bh=7nZtEcpW8l0uM8OQA1xoPILTE/Nz6UnFj2C6cZa3AaE=;
	h=To:Subject:From:Date:From;
	b=TN/ScGvvDnOh1Ls0/mlTSVQsho2GpfNskjIMIwYhuULUnoppNTP0KOefPNQfKl5R8
	 ORO1/Zduh344ju2fJS6/8/R5B2ujbKqt+fnE9MpwT9Elv/T8VC5zJR060GNucIJelT
	 b9D2P03KDIHcLjLW26vd/jauMICkzgB17AYZSbC5EQrSdFf3jW2Uc/132sFg7lDK+a
	 EzbbLe0SXYQIiOE0ZbuchFmNJUtF1j9mWeuZaCO++lOI9yuvH65NAqDLsvo+96a80n
	 142VtZEnXyOChPGFscaEbbph/2AZHzun0Fs+4bwjJVR5AQtQvU1TCvyN0g7HJteEFN
	 lXVttTZQWoJqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90553D1036F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411957358.20263.7869501438395281436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c4f39246388541eac7e3c5d364846d38bdb5d72282817fb5929803a81d91d2
Date: Wed, 26 Nov 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764119573
