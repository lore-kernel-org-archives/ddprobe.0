Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225263002B5
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756720194; cv=none; b=ibJE0fJcjOOm3WD9V9S5kwHgT74PL/qH5vHKfaMqOOdOyjnpql4UCM9Lv43qfDDXFvxWySSYHY+TCAuG/3cUzNXCnE6pNm0VWPJmIVcJa0b9l29Ub4pDt0vOSE4rgdJuSC+doYS90lusYkLQKnMdwZlyMCbP1FYvKf2ezayfebE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756720194; c=relaxed/simple;
	bh=AZrO61lMOZgtiJrrBX0KuLJOqlg8LwOwChH1KN0gIW4=;
	h=To:Subject:From:Message-Id:Date; b=s7X5PtPtLwY1dZNuM04zG20Jr6dBZlz8vrqye3cCi/wGFz1avGVzFvafrqD6mZeukEPeQGjya2MlM8pARe8tC5FLbBjqBBQBtGKZBL5D/IRiEn7vc2NinKFvSbRa6DECq3yGvLMaSGSobh55Vpc0hgI4WZ7D/veEgHW4i7fgU4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idrmU20z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idrmU20z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF2EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756720193;
	bh=AZrO61lMOZgtiJrrBX0KuLJOqlg8LwOwChH1KN0gIW4=;
	h=To:Subject:From:Date:From;
	b=idrmU20zSvfg1sNr0I0EW+W7xzAq2ctjt1eEoGfVj4CvqbM1jLUqv4raatxKj7IBy
	 t5PVU6ktrqH+/HY1NSK9Bsk6eNg2rElZim/SoBQf7lEylNR7J4C2gzbli7U66tYLj7
	 7KwL9M9OSqJDbOJdc+xMfvOi28+sXJs9m7vQoEKjaRXd6ffiqIyckAgwNbF0nno70/
	 l8FSta/D/0SCCBw2CeqbLSRd0M5h8WnSEx0QmIXOk4uFMRGkr6dGilxRbXLh1sdCjj
	 oYk38wfrrsLGKZ/ZlqeYlrvxyhsT00C63kp/UVVB5DznG6e7Ezw8ew+jEBu23B9JGY
	 z7wNdskNAn92g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9114CCA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672019358.30110.10585365992134310837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88f29772421e18bfdc19ad34249225ea21d53f9c3474ce7cfa8acdfc64c2431
Date: Mon, 01 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756720193
