Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CD52DCF47
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765495374; cv=none; b=WTffn19ZPICtEvnvGTDp4Yz3soYHnC4vXFY38aL7762F1m9Q3J3+SfCn3ni9j5NQxJScGTeTQ5SHqOXTISHaX435OFzntmRZLoEK3d2LP7IuyvatO44B2Pnqwzf8HofqfrV4W58iXnV2p9SmnIWpSxL4wWG+Wz4bNoUp2F0wLY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765495374; c=relaxed/simple;
	bh=Fdb0GVwmWgW+vmIDfVxg2KISNOm6RRZNP/GiB58Jhwk=;
	h=To:Subject:From:Message-Id:Date; b=ct0IjFmASkjB1BbxBqguy+x9AUzCJ1peWBTZKG3CflRIeTM7CIN9xXO3Qh9MMAczdDj5d4rO2jclCuVXuwxvAExhTqxsZGvo1jpQU2ek4EcWoupPwbVsVbJFS7lgk1Im621KYtC9PBF2ZNo9BCsKXlrbuycWK55eh/QDdHgfqq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTtpvI8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTtpvI8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0427C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765495373;
	bh=Fdb0GVwmWgW+vmIDfVxg2KISNOm6RRZNP/GiB58Jhwk=;
	h=To:Subject:From:Date:From;
	b=jTtpvI8rpM6Wz3818V45ZykETYmbLx/MNJidfPAgf5IKrPCmSFJ18Dk+5v1g9FN6G
	 GB0HSg6S27nCwCt3Q7QTnndZRMAGTzcSMd78TPYPhyeptmHM9Kn19qQXdOLLx+1orK
	 HcQEKQQqDldMoEINXXt/lJw0PICgJuoWWEQG/N3NeyyxYpQTuCxWZJb5Losxu94f32
	 aQSMhaEO+AGFH0v9UnMPQPajdeP+aq+wXeyKS0fgC0Vvdc+juPdPAg1GkueSaaLrtK
	 pfWwrt5p0JXdXsmiAorUUVoSzuRNcmxA7+nK67nrA2OvhN9r+4d5xHWSnZucY9Bpj4
	 MdFvdiZhAsbOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B6CD4335E
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549537360.20993.12637993210456565878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f920ab9e827e122aec07a1c612ca3580b065cc6a5bfa64ecc12f1b60578e8e2
Date: Thu, 11 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765495373
