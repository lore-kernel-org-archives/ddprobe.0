Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B46F3B1B3
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789275634; cv=none; b=H7yCy3bUM22mGPzu55qcjxhIS/3NUqF8AKMZAJrlm2ZLYyQr9yLWqOVFByiZxigRVfsPMjw/vyYv9t0aCCnrzE82bPUJaMYWepKJcGqs2+HaUF+qDTPgxJ5N2WivcYooIvWy12kTaD+MaMrOJMfziVfKuAs+kaWqPm3/EGxmfP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789275634; c=relaxed/simple;
	bh=lGmrf6oMwaRUc4bhM4i2aKyBpypr4myquQil94931ZM=;
	h=To:Subject:From:Message-Id:Date; b=foc1N8Ln4aLcd5h1NWHT9gPCg1E50mZFEvOtJXACwdf9i80dbXzxTjfCX4NmR2cm2+A0aLVcP2UDmkB3zQNHAC84q6x8ZBxcW2yyz2UP6SK2Aqla/9qPNszt7A0p8QK+UEjdE5QLH7baP9+jpcYyYD9AoEQsNPdm3OdubRpM0tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkNegWUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkNegWUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB87C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789275633;
	bh=lGmrf6oMwaRUc4bhM4i2aKyBpypr4myquQil94931ZM=;
	h=To:Subject:From:Date:From;
	b=GkNegWUeSR8ZBkHrdaua91r4hgj8hXUysg9+y/0AATpgsQs5AgfJdmGUR20uEBqoc
	 S5sXglZNu9J2SlMWV7oaM9IurgpUKzIfxg4fDI25a6AtQn47AvVYKWBa+lGQW6Jzmx
	 2F7LEaHxS2T4iRG8wEN2BVF2Xjg9zASQhORkT0ip3cOSwIj1yLrX5APk7DJYNsgJMq
	 kSvWZ6B9ergGFa+sXFqntammTXWp5/veC/wccoTqtenVPHsWVOhu1nlnesBv7PSdRg
	 PhTNank7VpYGVwWm/nEcIFfFqVM8yx16YIyrlK88usBO17zOutldkvhPB0w49QUIFb
	 V/Cgo8XtZqZFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CF8C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927563368.13280.7201837936906908575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab315802490d4bad8237ad7e25215c96d29f7badd3985307e492227d38a69d1
Date: Sun, 13 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789275633
