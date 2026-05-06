Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D07D157487
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778033254; cv=none; b=P29SXbPtwnEh6gKM0jd7MOjg2tAMH62OEMVXNoOX4yxGVfiI2kzfHU92A+2PqL2+oyRvzvqVT1veX8CAHmuJpKZbAgy0i6zSo0TTtR8tjBq8bkQMpAzN85utjIPCJ/pVcYStF5wIX++Ni2LjGsQpk7ugg9e8DvXDtnUkwNSwSjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778033254; c=relaxed/simple;
	bh=YB0JBGASwP/WcPUlaseTVbA3LGWg+fTNLd25+ruwmkg=;
	h=To:Subject:From:Message-Id:Date; b=VM4ziYA0/0uOSuWw2qic9P7+ExPLIkS4mDiKTGBsBhygC5R/pPHQUfUOJX9B11RhGOS1XxsHB87BdXhIYMa5GGarW5VoK4UDANoartKyIEsNjuObr6tU4P712C2Mt69EIOGOcMWnDFCfxh175/imk3hbpopvY6Rd8G2+eXeonk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsjOZWK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsjOZWK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1B2C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778033253;
	bh=YB0JBGASwP/WcPUlaseTVbA3LGWg+fTNLd25+ruwmkg=;
	h=To:Subject:From:Date:From;
	b=HsjOZWK3KAsveQxafTz6EpUnCzuo/jbh+2yMqd9PrgRCpMNTi1hdTYXKCFGzAUKD5
	 bYoz6ix2vZFTYTyE01gpJmIQ4WYjt5hZFV8ZUoWZCqevj6DLWrJq4TBanWqlEwlMPl
	 GiXbOkqttV63/H8H6XzffwhScJTYs3zbqLeXuncTanFyOcLCQDopai0N3QMRtsNJx7
	 p4Aj+6MUnq0K7sOs6pg/yqtZydCpBPh963OzqyPe4l6sOw3aVIKyLU/YzFeMj3e8UW
	 5wKyT27l6fJpebg9SIkMqAwP5tPOFNHRZllDwvqqP0MyFZABWePRowFZo5f1G3bbcT
	 TDYpjWBGGIjVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF3CD3427
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803325368.2398.18266167326391494035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4befed6f4fd4892f475583f1a5b25c4f334fe5d520933ad49b5ece966991ab
Date: Wed, 06 May 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778033253
