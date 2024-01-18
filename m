Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5B19444
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705555697; cv=none; b=UgsGk5T6C484muEPem2n+gHlM2/Iw+nI1ArqLPFXiWJ8MpJrIBdmxCYKnWoE3V6i+1wgAm9b86jBMR/5Lva3U7vxTkcyInJcHcxsUxS1LWo6SKRedFqL+pt0csVn6keVl4AhRFomCnhCMiCUt8wUvFrIjB9crn+EDB0dGZkhYjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705555697; c=relaxed/simple;
	bh=0BwdD34oxyoWr+XCr0hq5p4cTHfUIOWtHy57v+FmLoQ=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=DQgvBQJFQJqNxl9DIy5d98YGo50pT+fU5EamrtrjEe6nHBuLErDVkIDkymKo4udJ1HL88G+Ny/+mSDNPu/CZITyDMHlT60CbyXoh9LHojCNjTzBDqkbvG9TuJ11juK6nqGu8QWLjkjUbnXzb6duvG4tTJifLEAeiPdeWjW5I2Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXWLNXsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXWLNXsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85369C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705555696;
	bh=0BwdD34oxyoWr+XCr0hq5p4cTHfUIOWtHy57v+FmLoQ=;
	h=To:Subject:From:Date:From;
	b=hXWLNXsF6j+Whh9j3sfhMmWXQ4WYwAQNeMDuZsNysE2EE0YbSq4hzv3ZdOOjCCnms
	 lKm/figJm7pn+pZF9suMejhqU0amYyj97phqvpEsiwH0ftamUMzCMAWcvcHTj9MVWk
	 sg19ogr/Gzk+rm0EWfS+a5RPolSWubSRdAIL5rx536qOf/VRgAPWO2WSEirr511g4l
	 ek24yyJmLpltezYJvo/wL8x8l52Y3182RGSDqpt+5hCW7P6Z0yhBCb86n1q3LlEF2Z
	 jlWOH3DqJX7fRRxX3dfAl8c5Cyqqmg3z9U2WNnioWMU4jR3ztZ0ZZIu15Dq/gd4H4D
	 VepmY9vrEHF/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64782C47077
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170555569637.19745.16633031279473225002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef344f5a2ce47fb27f27bfe72b9d24d1f0a3a0b3e66e5bdf7380cb43ef3f403a
Date: Thu, 18 Jan 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705555696
