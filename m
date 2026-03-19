Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A3A3CF67A
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773936894; cv=none; b=mfee8Y1C71CGnnMPx9QmTdEi+6sAH35N1OI7NbYBrLDd3q+EA3kdZG43ajRB3s1MsEzAX41dU4rtRjJtmK2alfFydrF7+GGb6cwiPgc3Onh1CsIBhvodRbwqoqzwPBwPSg9Vte08olhdPLn24IJyGyFoH26J6389ColixCtsaIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773936894; c=relaxed/simple;
	bh=I7WHMzA3o1nOHVVHK4IbTM6dxP84FM9fpfKtGL/Xaq8=;
	h=To:Subject:From:Message-Id:Date; b=fxwYijbN8rf0TYHuDZX4nZLImWHmwPesug+Osctrwj0UA5TAglCrzoN8YRTsv9Ajz3wjE1hSpwDGJiV+udEPzODr88QO+CAp8m4ACwqeS28wMntaXNJVTB2JH0Vp0AVXr0YF9Hp5krKuEBNq9cZ1GX+yhlS2VoN24gbGVUq9otI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxqQSjnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxqQSjnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0250C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773936893;
	bh=I7WHMzA3o1nOHVVHK4IbTM6dxP84FM9fpfKtGL/Xaq8=;
	h=To:Subject:From:Date:From;
	b=BxqQSjnzyucki8XDE/ODSVReZd8m+HaluoWileOlZE87NANXIhQ/2pSaRdj0l0+Bn
	 pZkl1SvGhw911p/J5FhNxiVoVguFKQBm5QwPsYvYHdoJ8qCnPSFkTJlx8IgFzuPNPm
	 HjeMHVmeVfKvscqD8AW83/7wMtUPICJk64GcQJdlaFdv+1+Ild6GtA27OWge8Q1fvK
	 i5MEUHOc3gsHCkD610KCwiJwSTKoVbR1R0vQlsV535H6qw6H16pkRf0hFNLJlwbpU2
	 njgYx3RW7LQiGGyU+VeJrAb9cQS8jKrk1GS1yko9zz+EQ4O6Ts19la+Qn9fNm3Y+kC
	 UYyZRUF8OC6xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F537109024C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393689357.32611.3480347910954522986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d011a4cf144bb512c4271030efa4da752a8e38e0691b51572808d1d2369f665a
Date: Thu, 19 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773936893
