Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F07D27F724
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763281254; cv=none; b=TMX6EhvoAahPYb0alOEaC9SwFPWIjoATA28WfaIqWyW5M0/GxiNHAbolzGrrnYIxpijnxiykVRwe9NxU0AhycW9OiRqebuB9z4bTa428A6Q6Vo250WaRqADsM1LCqu5+XpTpmT+vd27hORZAruLwjCqBQRRItrVdmOuBa2YD4Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763281254; c=relaxed/simple;
	bh=umQsvfVJT8Qwd9CRmgItapS1elJfmXzIYxonGiFD8ls=;
	h=To:Subject:From:Message-Id:Date; b=PyrZLwfsHpNRu4viztaA96MaN4oYWZ6YkxxSSlPE2DUzXjA5UOEUpQAudxojW2nUmiLMpLMvUZ/NqYIRUpA8qJ/UyL37xzTbVXbfk904CMY56AM4tOZDGL+9aeJJ9IGYHlTFsVPmO7TABhZ7MBjv+osCbCInDSmPM9HIZwfQoqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZfquLRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZfquLRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC965C116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763281253;
	bh=umQsvfVJT8Qwd9CRmgItapS1elJfmXzIYxonGiFD8ls=;
	h=To:Subject:From:Date:From;
	b=HZfquLRFcQ9gPOVnCLUNo4hpltBUnBtw4o5G7e9k+BXuoYgO3Uk/0M2AzPS1Tnz3h
	 p90V0cI4ry3ByYEl8qgotII1aQx3eomeHlfFOoGZDfp+UzqVqZlWjRqilg5fOd8J2a
	 C5kQwgfiiQdu1ul/N9HLqDeLwAEiSIFnlSWko5r5SKfUh3ZkAR09k0DplCw3dDfgsR
	 v4Bx3ykeS8Rbc2N/C7hqY9m2NkqGWjVtbeNj9/cEZx5lMHU+r1akZ67a3QmUU6JvJa
	 ACQZzrOIFOGyOs8n865+f8fhWKHwfePrDneQOegHhlXugaVQ02iMXabTYfKW8pnsXR
	 A0/PZEyAEQq5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EEB9CEBF8A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328125360.11461.3242748955051219940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 213b090368061358c56c37a249553f8dbf57bc6ce9330e1c9335662cf02a0fc6
Date: Sun, 16 Nov 2025 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763281253
