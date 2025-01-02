Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378ADD528
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735851954; cv=none; b=DHvIGA8d8K52u6yL3hToaMx8WGb3SM3rHSha2TbMKq52i4nZ5/gShbR+/gMElsNgI7m5rIafEyq1oJSKVpnm6KZRU/hkGY+6gadlwj2iVXeMNgovJNA3YVMlBMPQ3llgcy3bsuGlWJNCJMfnLi676ANZVfIkCEW/C/wySDGWg0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735851954; c=relaxed/simple;
	bh=FCSkZyBHhiJSosb4AOpAm1kEHhvYimFJv4pV2LLI5Wo=;
	h=To:Subject:From:Message-Id:Date; b=Lu1urFRd8/jhfnoxvKbDH00W90/+eZg6JievljQ+iTZOxmJvpdK1kAkQEfMupTDXJIVVmwT339SWU32+MX1lzH+A/YqSKvyVRejIb5TVFK/bJAm3XmhtuRCttvNYqS2NFzzJJWxrRLfGX3VXWUDBaxC0z7vPvClD4d+vbKPZ4CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTFXSIM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTFXSIM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C05C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735851953;
	bh=FCSkZyBHhiJSosb4AOpAm1kEHhvYimFJv4pV2LLI5Wo=;
	h=To:Subject:From:Date:From;
	b=NTFXSIM35a0Q5DKMomxUCtEkh/2BWWF9DsGNY4eHmSBawoUesJLXaseAY47Kg7vpm
	 x2A0d5PG+N9xi2btjHISjBSmZwVIu8PbqXseIVDor8aPzL3bY19PFniQ77sJzjQQs+
	 Ie+yc8Y54exribOtTq2JiyLTj8yi4qY2HjPhGeWcYdbMBDqUqYMAH/4niVMihs9QzP
	 IzvhUlAyXsYRG4P6iOT4b5YRfX/jzWJd56v4Sjmc1YSmryzhlwlUJOru05NdcugUdh
	 8NkGe8+xTGc2Bhk2U4pPEVKn0wOdmBCbvsxZtBkR3sCwKGsvtoQhTV8IUPs/i6/wsi
	 LaskXYwzJUR+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950CFE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173585195360.1010.8630741980863235029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1155bc19c0c378736b342bb82d70721f05ed2ef605ba687d26a3a863a3fa46b
Date: Thu, 02 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735851953
