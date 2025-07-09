Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E800235050
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752083395; cv=none; b=Hh6fMbN9WdAglMkqXcKjQI79QsJwKP1v7aV6onjX+7y8fASejMBw2KyRmnPaF8fCGfYCt/Qy+b+SBh/ZLMEO3yUjf88iIhGYGzjoIxFzI7URmhvn+B0o9QVE/5OBBdTzaOA33PjJmbXFMw4APLjzlJA6u4UQ2oWgS7ivQf3sVYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752083395; c=relaxed/simple;
	bh=g/3O/D5yuhmoTMH7FP7GecpvGvDI/7k0dYkf8B8tw4A=;
	h=To:Subject:From:Message-Id:Date; b=K8j1wr163HhYBzDgn8iXaqsLoE2Plwyq0TROogi8WAvt0LnwBvz8g+0bW7SRZCrXiQ/rQMEGns7/HRyj//n78/mbPraBqc+9a9ijirvuvwzM8kE2vJGczY8b8KrgSipFucqTE+NAXNVK9MSfY9fBK2Qqugrcs4WzaYL+KHJqd0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dz5MSVlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dz5MSVlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A30CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752083393;
	bh=g/3O/D5yuhmoTMH7FP7GecpvGvDI/7k0dYkf8B8tw4A=;
	h=To:Subject:From:Date:From;
	b=Dz5MSVlLQEb2aX9o7+rrTly6wLth5/zPU7vxKeUld8UKgAcU936QzpiRjMDClX4uT
	 EobLIz7ioBsv2G4RNL43okdoMBJt+BG3I/+e2Z8OMMHIQYH81Drp5eHkDz1oTHADBU
	 r6vaQSOB7R8QEvG02HvifZX9M1sjApUroETDNENE8XsTaO3FraeW+T2buCJnv3pZab
	 mD17k9K4fLY1pZMFAkBQKKTmXabmHgHTVJ5myOQj313Dx7VzPSj5Q/53QUQL1mqlxd
	 fpSOK7DppHfDX4hQkPeIXzpSoP+RfB4vYCLAI/LqhCby2P3V/OWBYMYrG2kxnphSkL
	 x+vUfqob3Th/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E848C83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208339357.4149.530860935221720112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d535cbc1dca48fbf7f212a93ec0b123b7e116a0d7d3713d6c37f439678a4ba7d
Date: Wed, 09 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752083393
