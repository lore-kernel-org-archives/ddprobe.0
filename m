Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080C336AB58
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768294434; cv=none; b=HkhJb/jmQ4mcl6IZEoas8FalRNnJwKfbvq8zuAnK4lxoF3TRMpsy60Ck5JyQTdoUBM9Lot4YrBc9bebCtmLa5iob7PUrNXO/wrugPrdlfrV7YQY7lW2qO/isDHv0ZEL0Ht6V3aw3kj9/epgZyj9hhaOqtpvt8nSldrmJUY0ih24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768294434; c=relaxed/simple;
	bh=Vqg/kdqhdxZNDYmCDvOIxnPurAn2XhwCisQbqJkk7VI=;
	h=To:Subject:From:Message-Id:Date; b=NGElrP5ZjzC6909/y0ZgujhLcAEAaL12T4AMHGx/pkwEca1JusuB1kpGsmLVYAcMMbT12q7J8AFlA2pHHD8IpNpsvZ9btqmMUUXQHJ4WHzlAyXgMoFaLSf1BdDfkYk1DdCPOJbIUO5nuC8oSEp9qKnT7npyM00UdFoXAtjF8oTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKMpMAgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKMpMAgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E414C19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768294433;
	bh=Vqg/kdqhdxZNDYmCDvOIxnPurAn2XhwCisQbqJkk7VI=;
	h=To:Subject:From:Date:From;
	b=PKMpMAgpVjuACA9Jdt2SEYskZ/GmGOLCW/6fez+FAvXzOjg9PjSQW6/qLwHZG3RHF
	 8F9ltmHSIFcM6ZDM55apDEjNeiyGc5oUs63badzhnA6V2kvmGQRWgHOV3esspRmeys
	 3EFzoi6UhPjrCmjIFkNhqQ3XVQWRoxUrACjIShUrOpGST2fiypwQ17uL1k1zbhlbBy
	 gA9AirWXCqBmxwvPT3lDrBVtCI6aOe3FAee8iR2X+UC16MxaDrWpYsys7usIvLPALy
	 oPIT/QZMhTebCtOSZ68d2UJZCVita4pbwWG7s/AQ9lqXRd5QY1Nfgpn1qmyYdJC/ta
	 oIKxeXqvsXnRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA1D29DE2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829443358.1141.1255998975599775525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69267f60bc6cf8019b573d83a9252f5981583617814e34570415c560a965ee1
Date: Tue, 13 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768294433
