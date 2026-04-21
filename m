Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E4134A799
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776809254; cv=none; b=EZyHcvp1Hgia9+8SiGbvgHPbCFBkF9n52+4FLMsPQQL5oj/dHxiu3M4fjuwHc059RVRBXlAGDyC4U9eOgtL538EvWcqSvbozx4KOW4DWtaB6jNvZuYTogEpdgSfoKshT152O8fukpB+jFfIBo5EdDDq5kO3F5/pGAiRapDRxQ60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776809254; c=relaxed/simple;
	bh=xkj79tiYaAdnymo+tsg8ewE9MMoxU+Zs73rXTqDoT+c=;
	h=To:Subject:From:Message-Id:Date; b=AA2UOXnZoU+gJDDpQQgAVDRV3sKSkETimogki1MY9ya513mYRm7e2LBk4cvbmBLF0+FDYAWz8pZ/0vBk7mW0moPuU+ccIx7UBGmouI3itHDLx7zN0hR7ZHB5YTTaSdCwYjxpIupDaha9y5gVdq22EmK6fTp0A7Yy1w7gOnfXe44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vI8VV3yG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vI8VV3yG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7E9C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776809253;
	bh=xkj79tiYaAdnymo+tsg8ewE9MMoxU+Zs73rXTqDoT+c=;
	h=To:Subject:From:Date:From;
	b=vI8VV3yG5ku6mw7ZbMhCTI1UP9UhtE8FRPdRS/1MZGQvrKy/AHIvsbcdsiavy3hWn
	 Kuhph8eOCU4aQM4cFIiGOZdFBsZsluxf26wiO9A4Pzq2mlBg02I4N8Ag9zF2ymsOa2
	 y0KLOB5GUP0VcwJKg2tpCe75eDPJlnCK7ugTF2WGGlmX1mAdT/6b+jlXdoqwKOw6jx
	 Ne3ALQC+LRrsyxyk16vuEfFO+dJScyuP5PxotSJQ8Mb4dM3yueQ63LRwwF63jiA1s7
	 TSLr1+1D1/ir6qS3d3VqErBi+ELhtXV0KRCYLOJ+AcHrZ4NckUZsLbANeddiAUUV1p
	 d8cEnmi83qU4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA11DF94CB4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680925368.16378.10244904201830645047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17aa340cfc61b351910b078f25708b453d71d7c4b2db9c21cc54f38143e3cf6c
Date: Tue, 21 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776809253
