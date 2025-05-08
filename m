Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414B7289823
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746734394; cv=none; b=nwoC6XLMGdNCo82C9X5QT+2pklXToSW+QTaQAQZSHL5wr6Z+rFYgGZlP/uXO+dvAq5g6mR80YJEIVSLFuDl8UwTaw43J+NGDTeap87jwrsu0jUASFfeqlSaTesFYro1AfbndsHYmIIKzVSRnYYc/fJASmxJkskjStmURSFMxl5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746734394; c=relaxed/simple;
	bh=GhsDvmnu2DSCt3m6oE1Zkds+BCvasbkc6Qc4ztKOvmA=;
	h=To:Subject:From:Message-Id:Date; b=Ol+aFUbPm2J2PzBHwDZE7oJOxc9ShxSov5/q0h9saTY7tXPqxxAvntuZQIIIenEOhO3+Ct3Vsg0Y/oSj1I+xDJAJfRhOHMhaQDWSLbt+ErlWbP7VQlQCoCQxluf2BG28nOeoAClUvCQCG9Llx498OGtsrB72hjzy5o6Q8VpfS+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tqc8CMM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tqc8CMM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADED7C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746734393;
	bh=GhsDvmnu2DSCt3m6oE1Zkds+BCvasbkc6Qc4ztKOvmA=;
	h=To:Subject:From:Date:From;
	b=Tqc8CMM53crEMPrAh0EMa2WmsrRecKFGL55eFYurUqpOp3fOGsXI8N3uQtiGvOZM9
	 p04oGX8jRyUu08pgjzqbUM1EzCR0nXU2JAPqkvHiB0H3pGps2W4R2HuuIt4UHsiOEh
	 Zo2ssZEY0k2uGHGIaoqoREaDC0nhz6LuE2NU3LkOovEycQpd22Sd+3c0Yaq3SbCBEZ
	 QebYD4yZFMPzXVpoKegtksZivOwHiuOCKmHlOIQG2Pk2m10UnMuw6Uir40Gzat0ewY
	 qH3VCFs8lZerCwWEJnzrBWLy/Mavufn1XhaBfjpjL0mrLSxpKxG2QZMjQWLOsqaB3s
	 cxCtAoav4qX0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E5FC3ABC6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673439361.2335.9294635845341198637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c629dfd8cc66070910510ce3bf2a954859e5ed9ae9ffd7c1b49988a20e039c
Date: Thu, 08 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746734393
