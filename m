Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A983170A13
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734975954; cv=none; b=av+EbHqnBRmcTRIao/MToWeQou8KtMhgomXnTQSlAQ19Yo5+sH3rLyuQW4WjsbdBivHIXind9zcWWb7BWg5ZaZ1j69y6eA47msbtwVs09Nlki/3Vf9EZsxV2EmnUddDKh6eNGMJ1YNKPmRNspatYzYNVTZbWlzScGjOr6OavCew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734975954; c=relaxed/simple;
	bh=/ymBx/AmnouYeY4Tnm/Sc9ST3WPWYy5Nc9hykk4IxiU=;
	h=To:Subject:From:Message-Id:Date; b=KnfCt0fMQOBy66T7kAnLakNAQX6aZMF2wDuxM6jw/S3t8r/yc8MrHntvmM7h0KNe5SZqx8abre7p77cA94zqdeMhYIsN77hih/IP6X3EiohjshZtGqUJ6Pf/CnSRbkMZVkRRc/z1lI8jbruPEVnebSUq/Vehne4vOxCI/CWndko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AD0BG59B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AD0BG59B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8EDC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734975953;
	bh=/ymBx/AmnouYeY4Tnm/Sc9ST3WPWYy5Nc9hykk4IxiU=;
	h=To:Subject:From:Date:From;
	b=AD0BG59BEBC8Bv4IDAI3Kj6JL5UTg1lYeyqayTbI2Cd/nBaZhTNZmL1hX4JLQrjiv
	 8A2C8VWwLAASuqVI50nhjtWC+dzos+s68tlg/pRDlab+Z6ZiEfEKiVX4Zy5+Er5RWH
	 EmpJLtQnGfZsRoM7sw9A4ucGRHSYq/HKqGWEkScVvp1UzpowDPJc0CUibXxZeOAQHg
	 S+ibyCSXPiVfc+Fow9YDhp8NDsoZZneyM6FKDbri2U6R1CbxfF/Y5Sxh+yrCNJQgH5
	 5ZSLCERHcbyr6TymertARyjhpI3hdyApFBVrcBynPGxZB85sht6HhC7DaiSoAWSSqJ
	 DzjPhFnZCaqlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95315E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173497595360.6181.8365675714342732103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c8ca081a18d2ae111083515ab4c0865ff867050c3653da2ef0cbf9eaa5a76f9
Date: Mon, 23 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734975953
