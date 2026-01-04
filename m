Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414201BD035
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767513834; cv=none; b=KEAsPPlxr4tD9fuw9NjbAXVT0b7hlFZTOXBkVvyJkOlZ6+rveI5JYt1y3NnaAPPjJv4EDn6X4nTR6qkR60P1A2JSBA/uWrYTLtYcLMOu/fQsUNsYPFaARBmncbpXq1f3fZW4m0z2C0Vv1EmKEWY1zO3vHIc7HPcGbv+sGRVSfpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767513834; c=relaxed/simple;
	bh=JBZhMsTT5+ggU6TlaTFkO2DFPnhi7w2dt9TwBKTsrpI=;
	h=To:Subject:From:Message-Id:Date; b=GtPSNfeDF6o3T/CxBJORw37QiaA/zEpZkTzzPbh02EgesmhByGoazKiTOagwVBBxfiEBgknCm4OmMxx/f4nhbvzNnqfuCXTMKNl/EcIWFrJ1VMaR1Of30eYh7XkmQl8zDlYmrfiCaJOy9P6iI5PCqWl+el7EF3sdwuKJyfD8qVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=had3sL5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="had3sL5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A34C19423
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767513833;
	bh=JBZhMsTT5+ggU6TlaTFkO2DFPnhi7w2dt9TwBKTsrpI=;
	h=To:Subject:From:Date:From;
	b=had3sL5F+x3Er7vKVV52AKIXkvKXhzp3x+POWKXNAJf96GYKxA489OIhPOw15drTr
	 0A1wLmv7YXtBq445mGodqpXTfMzSGBI+LSPsEaiiXYbtoWYobujt+KvSwvTQnFSKHV
	 swxLetuIqav6dhQmWB7iM1UnRgKW1Z7p+wvpTiB9wksuHQIrrFy0jxfx2YN1+2oOGC
	 vFTF2GbA/S3bGONO9m+PPZeaBZychD7A5yUibHwsFxXMpjdCVK485cQoWfRQh3a0RE
	 vOclqjeU39wYnD0PriN6haFwpDpbQfAWGnsp2S/k95IDn51bmA091kVg/X8bvzVgCQ
	 fhCGvGPlwCBKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F17C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751383358.23782.16156390760076507129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0ea0256b61bf0a2afe5bb9475794d03ce37a28d727a191dcc01ebaabf352d1
Date: Sun, 04 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767513833
