Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CFF14A0B5
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755962994; cv=none; b=r0rh+ZugpK5xEBA8jmWhdRsTkasBceWu1k+ozSidHqzTFBqK7kxhiiMW0Bsb/PfCWo0Mq+Xv/NQATayazIavssSW1ySwU5qX1tfCet2se2v0lK/97EoVxulE5TEPJEWR+5gVmIdKMSWMH8/EHqkP8CGxyIZt2eaPWMkZEyPNB/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755962994; c=relaxed/simple;
	bh=nDwQ96jXhCP5IUk7YqAR1kYHF60LHZDwsnG9/3R1V+Y=;
	h=To:Subject:From:Message-Id:Date; b=QpNesricPHBDD7Q8wEfjnnlpn5MsG3JpQoIdMKYo2WWE3jA1Gl2YUpwGCongU/HCZ8dLjJWeZmyDxqwrmGJYWwm1uofaK9LEFJ4jgmc3PSyz6DPYWmvV8Yxhn1YLE5ArH6+7ds5eU+PzK+IbNrnxGxrN7fsLuDeZBAYg0PJUHS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j41qnEom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j41qnEom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BD0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755962993;
	bh=nDwQ96jXhCP5IUk7YqAR1kYHF60LHZDwsnG9/3R1V+Y=;
	h=To:Subject:From:Date:From;
	b=j41qnEomuNWpUFm8zQzNFOeLDo5mJno5aDWAbvDgsUfnidjK6jRo+7S0tBPcZI/ly
	 2xqmSdTiqivjw4kFzvjzMn5YZuKwFUTUUCnhR5nSbFytXQrXPqP5GZiY4vIGd48ZQw
	 jHOS0elHaCK8VS/irCAuPxvgllFWS9XuGVTRzUnAVuST9msj2xrKpS0I1QOwrXGoX9
	 iqLy6Gi5pMcgBEBQu7n4hrtGqw7Sx3gENGdEC86jTe/Ijy7XPZECm2lX6KILMFd9yw
	 fww1dhDGSBEiI0eaIsawXzaAnqmjDT3LtGSGio4VhPeZdTjOxy4f0mTkwQWJeXBBo3
	 rd4i3Rzoml5uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC6CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596299357.21740.1107074804926342834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8174090d37249a14ee2238d273d8ddc04d7dab0a73f816bcd705327701149216
Date: Sat, 23 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755962993
