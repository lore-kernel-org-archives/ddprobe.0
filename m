Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F231A8408
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735872354; cv=none; b=hs1Na69p1H8mhloqZS1P4ICb4TMvqFZG/zMwkMQEXTkVRFNkBa7LqrKU8HYAOYW7LvnQbSa69Iy92VJjdNeJTcyLVRbznJULfQ662OIuPihrAAA6Rc7BsEFaDp6xBr4lOuXC+XtSROMLE5ZusMruD4OuQF6ysswF4wkU10W/alA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735872354; c=relaxed/simple;
	bh=b4Hs2eDn1EGjQ05Wjl7vpG1twCbo6BhU4ZZQMIoUtrs=;
	h=To:Subject:From:Message-Id:Date; b=qa/aU1xPLMHmnLCirZq2ZzqpNd4uAs02dgH/bJ9CM/JNlA0LVIBnDEk4S12dJSJDsUUibi5EmNKpWns7RgKV9MfkzZpfqw3SvNkMMRnM6qi3vQdubQJy9xO3XbJLOViu8bS4Sezz+ymiFYc2eMSdUXXkGZo8kceE7/QuYoW9uJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z76ltZEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z76ltZEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42F6C4CED0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735872353;
	bh=b4Hs2eDn1EGjQ05Wjl7vpG1twCbo6BhU4ZZQMIoUtrs=;
	h=To:Subject:From:Date:From;
	b=Z76ltZEpECyCmZ8Wgu0XKlYaftDOveCeo5twuTeBg2RgTfnpN8D8gNCUhSa76PSBM
	 XvDIwvSW+M9Xlv2ius7gXUocRCYq8hDTcuF2oXbQFMae5rx46wFAf7UgITYF2i2spd
	 32bKirWMY/NWg49LYZXZ7KbeYLtq0KdRnkHiJ35jl0nE2OtrGoASlwlAsYhHj7XqIG
	 wn3Rceg1MKeGBUvWpsj8YUo1Dw5k9vnejGX3q9k6tjyn1gAoRDYzlFRgoCQnq9qt4E
	 CwObZxldF2HpFuH7wxEyWY37TZHwA5vX6UPntQGeXILR/54GzJhlyW/NyqogtyrDXB
	 k/Ijp9D8iPWpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3C8E77197
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173587235362.5200.17751340646561674855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a93fd4eca8936e8c3c8970fdaa64c0c690ffa16045fd9ee947b12713604cbdc9
Date: Fri, 03 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735872353
