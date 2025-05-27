Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479D3276057
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748373594; cv=none; b=OdCnP0Z4UhuAEtyxelJeQVgG1iI2jEUk3a6X9Rsc2qzYmhv1190m4zNVhJoFSAGOSBptIimK2SmxQ13IrsVBJK3oe+lsFT77QciqlhJdPCjF+ml9w6QPk8a8mhYCEPZHqgi7ybFB4EWTY96YXdG61jZttyzhmMSPLeOoyBHSv2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748373594; c=relaxed/simple;
	bh=ulHShz4a/eWnb/M9QddURczrcsrRSbqqqRTeiTU5yd4=;
	h=To:Subject:From:Message-Id:Date; b=W7j6jIMe1GL2R7NdSwJFx3gRC46FiHrAhKrGCxHGZYdgsdG8r0YpyFdFBAeBFIXPKbhpVa/FbUafBQFYYkHDjRAqMPAUWZk2XyuvqiH9/YT+Ld9lwKc5guaBvNbAfltDT3E7/pIsWCY2Ap1qCx8YfuOLv4sJeqR+S93UjdePiOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trftA3Mr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trftA3Mr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B1FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748373593;
	bh=ulHShz4a/eWnb/M9QddURczrcsrRSbqqqRTeiTU5yd4=;
	h=To:Subject:From:Date:From;
	b=trftA3MrL41cG590fPcfJzbDs2XKyYWJCFTovJsDCjzBStn7zX9TqfyuCc031kISy
	 FuxIBmMmm8+dlkSZ/9mcBZbQEwNVbuZan5C5nBo0ohUr+u03WfBggNiB2/RwIaRRo6
	 CO4mAxhp5iEtRdcLWXY2gVOLIn8JbeOIGmzynagicuGYTsfvE8lL2ivJiYEGg3tlTx
	 vr2AMjujM0aWqGf0OeGv3IA/C9gSgbaBg8BwFSTnPli0Z/N//nmpk/du43TIPvLFra
	 oPl74C8nYWMXXEtmBUlc0ldp0Oh7HdEmKAdSEDXdAgACwqZs0EE7/0hwE8ffduslzQ
	 NVsV5VxlrJ6yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F622C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837359357.27548.8513754960633395911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef99e17f8fc8cde5ecdf68fe0873315373709acac86c2d8b76937df254a691a9
Date: Tue, 27 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748373593
