Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9A2193419
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732652754; cv=none; b=fxAYUbKNB4do6jeYuDFLzcZESGUccuysLwajocaMfa2MmkASRwcQWNWX47lMl/7SdS+5GMaBFbTZqPqjqMHkZWnIBdwJ0yLQ33sreVm3XCSoOCl4C4rClmXkcYXqTu8MZQus1tL5he4fmxJK244Od0vu6OLvKD9kOjRimL30S+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732652754; c=relaxed/simple;
	bh=WSAQ7EHnGvaViWiSd8dajJ35baRIgfjkwzUAwhLLD9I=;
	h=To:Subject:From:Message-Id:Date; b=tP6GYlYmJujtYGwJzuBa7a9E7vlp8FMmMtwLNlLPHFdUCIccguGsvCZLTeA3/JPsHITaM7yUKOa8JDud4lcyc9H1v7pznsEyE9j/y4VEctOvNTidOgLppe3Lfo3OkxJlU5YbkdaEVqCV5G5K4YDz+46YqXtiu95MYOPl6NjngSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMs6y5RW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMs6y5RW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9BEC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732652753;
	bh=WSAQ7EHnGvaViWiSd8dajJ35baRIgfjkwzUAwhLLD9I=;
	h=To:Subject:From:Date:From;
	b=lMs6y5RWdMmLy4ivFYyGo/7/FW2CxOScmmYxfq40+f7g7XFM/kpQ8FrAM6BKg3B08
	 I5hw1y2O++WiOUYkbjvu1lZAVJPJLF4ww+YtK4XywXo+yuEZmH427QFrkwRs8c40Dg
	 kyH5yvLBix9ZGpbGlBK76AhsgmEFW8R83Th4kc52VqK87r7E/LOqwizFSivpOPcNap
	 72XpqkFIyCqDm9o9PQDKdDoRqRd+klSUE86jFKZtx7xLg0wv63V668AeDrVblNIkrw
	 sFhb7HFDmkDRIpiyQp/tYYWgXfI4Vj3fNdOLX+xMovTv/7SDN3otU4cBS8AYPNdtvn
	 30NwJCxSEJYUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C3CD65553
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173265275357.11521.4072991827063208220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34599c554ad20279644ec98c21f8fa61d2efb3daefe38dbe745cf4bd65f4e842
Date: Tue, 26 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732652753
