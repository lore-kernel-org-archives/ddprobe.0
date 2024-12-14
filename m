Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4282F154C00
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734176754; cv=none; b=VO3BxxtrFFZZt/qhna/sXMaC+zpa/Ac52WU1xhgipJEVQqM12+AyeyyMh2nlmaOuKbcDB9Ebluaqid68ikoVK69vqlYN8LQMsNQfQoYg+ZRf8688dHm84kTCUlrYfEQnIw1hSbw0Lt1RpCffzpOZLQp9bF8jVNfH20VG3sI6/58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734176754; c=relaxed/simple;
	bh=bAoX8ToYdx+UBHX1pUQR6q+KrkLAigfYMwWkMh+87IQ=;
	h=To:Subject:From:Message-Id:Date; b=Rgk2jynL8CEaYIgN3+i7Zqgw6L1KDUkVCoObJlqLUTD2P16EhFCWLUHdLYyq6chXrQB/g42ryOfxd42bAXe3dkyDeDeTJr9Om6hhcPrfTDmW/aj/N78kUjgvFaax6j8mc4crwCzUccA8DPGO63+wsyz4K+fyXBCP01ayaW2/fYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NI2hLAXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NI2hLAXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F0AC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734176753;
	bh=bAoX8ToYdx+UBHX1pUQR6q+KrkLAigfYMwWkMh+87IQ=;
	h=To:Subject:From:Date:From;
	b=NI2hLAXxPhn23Pma+sIJG6W9CvnWKJx7QAxKgevi/ipFMN/EFnq5LjASOSQI9OPPd
	 epz2soe5ZW9MBvEMEkIMEaehabYfBzNQiRwhAyCyGOAM5TI4i5v/us8rKMRSxM7VTx
	 FOEXGog2pwkcmcwr4lYh+RwvwG1ph2wVBl6R7YrWLMTXHb2wtuy2RRMH4p1WimXMDL
	 hiHPw8ZHHa3bWRLfr2ulqi1LMqZYVxFl7Pu/XYlsiPZ3gefBjE216mJumhYyGf9b5q
	 2EXt0Z4uwUUNeZBNZBzvhpWohmwmVHIBzhFTOhBkocjw1uVCp4ABYBthVE4guYELKH
	 fN+qcCUZuEsCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FADE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173417675362.4563.2085674767406971176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e758f0616d58b849794a8590e9a00e8f1fc03726abddcbf038372b3447afc0
Date: Sat, 14 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734176753
