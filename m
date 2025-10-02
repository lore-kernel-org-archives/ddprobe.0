Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE0E19F13F
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759408194; cv=none; b=bGjAEoYr0dAmq9jT0JfFcnX1I2vFEZXp0kkIzOF2W7nVUDWKrRR9q3BGULiGFZjoytbl7Io6QUPFNOWfNeMRvUZIV9i9aGQf1XI/+MOQ/CBeCPrchS1qkVghCHOjjqKklv5YnONbiv6MF3wQVoJSr4A2cI6o+oL0UC4QWTtojIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759408194; c=relaxed/simple;
	bh=w+y+lO8A3yuKxlJolHtLZxAck0VFTGPcMxrDsN7VSEc=;
	h=To:Subject:From:Message-Id:Date; b=ORKC9xGaz43pzkZPfNTAdYA3mzWgG2uuI7nDmdPTanNAmVeztk4sAYyLElFfxoCJ8UdjQ/mZV51CLwJ/d5R+GLALWl7YPdutbTOn72lw08HAhKrv2gwNqrPPs9Oq7ej+XryrtiP3FIA5yRorBZPkvYKlv5TZORVaHiwa6F0ALfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPxCaF+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPxCaF+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D628C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759408193;
	bh=w+y+lO8A3yuKxlJolHtLZxAck0VFTGPcMxrDsN7VSEc=;
	h=To:Subject:From:Date:From;
	b=mPxCaF+lybsqQI9J1YbEaNCsYc9va/pqOCMmWpvlHO8fHjpLNX1Nm6ftXhyGYOdoS
	 rFAvL+cXpXVTSa9BuaugMZXZqZMaIbOFqU965TztJF5G0sz9jl4WOQcqzLLkbk3GcE
	 TTET9lYYK9M1yLBIt++mtczXLnx8XfJFaJ0tooGv4PVRoNPSDOFMMiUiIz81q82FSH
	 XUatrXrsfwx2/9up/8D5KMf+Ehv4TP0GVV7MncIxUMCb67WJb15oWPXKAYiclgZ7/B
	 SeSNuRSZX3MvlLBSBc1Rjx5r2eGiityjZMOricdqw+uZnMVAIR+gnPdQxdSDj3r99r
	 CdorFXrTNfHkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CCCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940819357.31601.3598755547782126975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94cd6864ab3a9a60423987ef35bc7d496b97cf586ccb86d6f6cd1eecfdabd9d0
Date: Thu, 02 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759408193
