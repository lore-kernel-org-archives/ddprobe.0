Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38066257D
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747559394; cv=none; b=ozYp04S4dRsv63PoBIjJR9iYsfYeFxZsWqmmZCgbAyLJ6ij5kmENme2zmLDv2l8FpVpnSCg4/JSqXMFCBfytRgRKZqZdYwMyJ9Bc4DVJZjz6mrL7PJ2PKeVJvINqY1qgGFAWQ3ihQVI+rTIBix39oTz9MP5G1kJjMNWYojmikE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747559394; c=relaxed/simple;
	bh=y8aEsjNCZvGT23eKoTrSeeCu36yyd+d/yCg6hw5h4go=;
	h=To:Subject:From:Message-Id:Date; b=Bg1x4KoTiqf8X3v7rOwVm780UIuMkBeh+FntEIFNOeGqOW1JQCz2k5YxgQtqLAPgfDsDy3AsUdjT9kZbQJbtNsQwsVZrafS7euh+gtpcMRmJuOSKWw7NGohTKpe3dt2WcGfNEeLjCU3yHq2EMMT6ngkHneRyonTJxqRnYCZsZd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQhgK6TK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQhgK6TK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F97C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747559393;
	bh=y8aEsjNCZvGT23eKoTrSeeCu36yyd+d/yCg6hw5h4go=;
	h=To:Subject:From:Date:From;
	b=sQhgK6TKHrOmdM6SMpj6fdwc90QoxownvAzP2MISvPcR+c41v0yeS+e5mqAR+C4sd
	 Qvkm+LMJsciSrUYa7gcIVNpdQTGBkW+QGyyhVD1dya4uFXxffv9NcUimSqkuX6GbI2
	 YGJtkipm4WX37i53Munqh00RiEE7j7mvLWB4kjH1Mn5FhDOhaN2BqZBJfcDZm2Dxey
	 13cy0kGEl+OzG6lOzIbZ+QUQ5ejmr68Ikf9PD0XQpCyH1THqhCfkdTUWUhyIUnycdl
	 Uopda01O7Evgp0fhueH0dfJ2RVFogfrTW7CdSk8rjUmhPMDyTedee3iUoqfai3pssR
	 c9DCOTg1+io2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91022C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755939358.23927.546310435297557042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3edce8449970351c5a8e54e642d0fc8395024cc90974675fac8a9b1be8ad22a5
Date: Sun, 18 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747559393
