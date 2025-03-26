Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F2815381A
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742981994; cv=none; b=dXtNL9Qxdd9FO4X5OVu7S9rdi8XeMTIrKrWPlOwE/AdUg6PUkhVb7Z9cVxU2N8woLn3pbKZRweW7DXTTdhWIoEjIxNvVPh2HOaPmku+f8Ea8ujVUqKTJF+dAy3TFo+e+fhz+oGX3v7a+ooz/m6aSI/BUrqRVK9VSHxV5Zd0+EBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742981994; c=relaxed/simple;
	bh=ktCv5iCeVc4l5ELcBdUASRs3upZ2m3MXhsUeV0fDD9s=;
	h=To:Subject:From:Message-Id:Date; b=f+gKZw/TAw9thDLfkYHbkMwybZ2JAAQGdLI60uxhvjGI4pWk0oFTYLyTVOkEDZFtD9XkNSLMZSzP8yPcA2J8vO6g9Nlv2C+2g6wtD8EmbJI8UD9NqzIzVrbgnOkGmWoTnrhTAVo2LdnALmgTpaZZDUe7WpS/7I10S9f7oePWOhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBA+qC4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBA+qC4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8728C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742981993;
	bh=ktCv5iCeVc4l5ELcBdUASRs3upZ2m3MXhsUeV0fDD9s=;
	h=To:Subject:From:Date:From;
	b=YBA+qC4b8OckuCSspdSYCRsCt4wMrnQWMKgLsunJO4UMRxN4oujrrEKp4Bs0PYoO0
	 bCdcLuy2YTmstcX/nHIRq5DbFre7dr1Fss2L87ypk+OLEMzM/SVh7KF4+DkRuQScGN
	 l5EYnXltCc0/GiVRPazGnDg3993XGTtWP1mOQCujpmK/BYXAEIuoXpI8yQeLZkwIA0
	 2avro02LpLtlPLODpI7J8+Cwx57hhUO+mRJWsP5V4ej3QbvQQhaNey3Pr3ObJUUQX5
	 sLOR+PzrQMtqafzIsRKnS/1d4Jsp4MkiIwh4sr6cn86RTJC/39A94g5EWPGhCz1Feb
	 IeO2JP6dYZ+8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94952C3600C
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298199359.6765.5132504309135737962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e02c4022d59ffa98cfdcf402d8ab826396147d55e4c8e554a858a551376436
Date: Wed, 26 Mar 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742981993
