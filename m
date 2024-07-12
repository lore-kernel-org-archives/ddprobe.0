Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3C51FAA
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720748843; cv=none; b=mW0B8kTCklP2zuctOxZBKpIuOASNQzVudoka9HIU7fyigpkEn9j0XPKs0UvqJuz72msIOmDWNsRr2OXVAqehDRAYLOR5loFcnAM2sPXEtr3QvfUn6d8qnyK41kGRm0gK4+/7O7rIIbvaYOsfCNaSr3JrgLY+wDKvs/TzQfR/rkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720748843; c=relaxed/simple;
	bh=H1n3exam/M6GpfYTRT7/dMMJWvA6AQ/tWNcFA7bYQ9Q=;
	h=To:Subject:From:Message-Id:Date; b=STdOKM1HkZfR6OS0CgzJ4JsNqT+TYyz8iAlElZ/GStm77isdzxIDcMdVEUAHxIFV4SbyuSaRGH/8n9+5fGzExM2X5wwQs3ToFeEBbPpiyDnWUQlIQSWPZz9PLgu6ju4kbynnybLN3R2oBnJFisU9u2oiVdtfclDQsciZtRyAtpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eogpiAf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eogpiAf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E771FC116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720748842;
	bh=H1n3exam/M6GpfYTRT7/dMMJWvA6AQ/tWNcFA7bYQ9Q=;
	h=To:Subject:From:Date:From;
	b=eogpiAf3h0Qo7bNcFHzQ7jYlRBRo3lKvgXcrYJW8YJy686yq/9ytgIJD1aFGnv5sv
	 +Q0N5XIJpR/mb4kUtWUA8zdLpCwr4Y6x04ab26xkKgBuv1nV+44oKR3HH3BG1DGcs9
	 KfdS4WhbJeZhJIoqT7kR6V7gHi5pPGPKk62PQ2FpFjE3zfSUtkOafuWmsXcdEWiGQ6
	 GJ/UDZ4OE3OQ2Hg6DjPN7JMPMa0vf2ebHvj7KhdM3Zk6Bo+n+qmM2tKBvm3TsToK+9
	 xqfZ1K/BL5FwXokP1FeH6vw/dr1F2PF8ed/XBMQd8DBDRNUBcczagbaRv9cVQAZLQw
	 VNBraMmGJSuPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB321C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074884280.4350.17910131403197894150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92aaaffff29e3a30809ad2e8e40cd35c2439d2703d745b9579d1ba9922fb1a9
Date: Fri, 12 Jul 2024 01:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720748842
