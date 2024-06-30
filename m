Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C55F3B78D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719731663; cv=none; b=paJ1HjC7cxOExfHgLUdMnO2zhRHID8cwrqLPPI0og9kGFaT2S5xZ7DZSu9gbERdTpFOS/c6Bb7ic/g76IfKj6hCvKVgZ+mkxkmN6oGQfadwfQoEqJ3llVnfNTI5WcJTnphP2JI9w+Gama6g6ddhJOqlK6ayeNtjefMqq3ccIH8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719731663; c=relaxed/simple;
	bh=tKbwQ0jGyhvug3p7P5ELEzKUinERsj/R+6sktkZXYYQ=;
	h=To:Subject:From:Message-Id:Date; b=nMeWchmxyOUVK1YPv9pl5pvOqNxN9M4RvTGhmyECjCMp5+krU4K1PJARK/+9KQ37jvMQnbplV2cl59aqQD1RO8PQkVXKIy79GPlXofJTrMs4hgVrZGzBS9nmLcFWPe7UN2lQUMF3UY1+MyV+kfPixqB81gK77A3xA+95SEn+eCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/YYih2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/YYih2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA8F9C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719731663;
	bh=tKbwQ0jGyhvug3p7P5ELEzKUinERsj/R+6sktkZXYYQ=;
	h=To:Subject:From:Date:From;
	b=L/YYih2HqK4kBjx1w7YV3B3kio+yoha/lOJU0zpR/Q2Vawn1tiOJM188mpdZr15CU
	 LYbeQHWz186twuwsv0MG4KcoHvbMPs3rafa7xMTrUxXXlO976WQaCsYWNHkH8KOcqP
	 clAgcf0AXNsAGlSz8xcZ2iBtSV7i8IsedsSXtdAgcvNzQ4GtFHRgqEnvBVlOH1rRJa
	 JwRgwndKKp6fr5rFkWjdmKgPWS7CXPX1jBfLmdlC2XjPoJjYT21jSbXeoMC4QjjG8I
	 EXDtvbOQpIrS0ae7LQ7j0sZPg+bGY/F6dU+XS1Bj/YEe0mlIy3WgeonQKnpR6tkpw0
	 Za9Kci6o6l/BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF0A2C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973166283.32309.5419809673633493562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5df824f0c0daaf4b3432662ad8c0c529766eaf13c7d4e849d456cf33e89450
Date: Sun, 30 Jun 2024 07:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719731662
