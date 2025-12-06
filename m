Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C998632B
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765038774; cv=none; b=iCOfdRSIIy4A1GdSrS8h+2aJHVlsv9CLDv0O5oysd0fHbuoMzSo+Vmye3botmfnHX2t+8cxtvhSciNwmNQAhUxJo/fixIFv+zZVk3ownQfwWQeAx/elvoPnEj4AcCyHz+2lWixkznws4YHOkLGlB8eKU++DPEBlaYzwN/YVCwVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765038774; c=relaxed/simple;
	bh=o53znF+Rw4Aw7RO390XHpKMyd5vrOe0DiIOEPfTsYJo=;
	h=To:Subject:From:Message-Id:Date; b=XKzXFO027DJcQYPxMSvjivS4ufNqn6cbDxgNw7tJ8g+hfEZtVmvp5pr10NoR9YwKloMmKFHQvLVfWebsmIyrxgTdb+DMxXmBfufG/nAtUYG0Tk4cq55RTSed3s+UJY6u0h7lc2PmsDGj3e0I2Sh6XdTNKtyRJyeypMAQqOGhjIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDyFOcap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDyFOcap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A9DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765038773;
	bh=o53znF+Rw4Aw7RO390XHpKMyd5vrOe0DiIOEPfTsYJo=;
	h=To:Subject:From:Date:From;
	b=nDyFOcapyBI/GAQE1lYh4JhvE+9EQDtLo7FXiJLby1rLy+WvOofEBSABkhqAk+8qG
	 5/sRCaY0sMPmUOi3xZPZXQpOy7bPL/x1Hx1Jk40K0rz7shRV/EdsCyE6bfWug2KVtq
	 pRucr/aDDBW2/0wjD1yYLyhDe3XFGCP5ve1TsRmBQm4AWN0P93Glzffp1oQ+oUj16s
	 Ud6BjOfrmLQUamx1ZboQfr+Uy9xukzmeUBXlb7ir8ImAU/FkAY/2nB0jRJnlWjkqOK
	 OrmpW6sE6vyGIfugHmks1WSEm4nhegcz9wffR+6pesvmg1jdvpGrXc3odZKnB0RjxH
	 b5uH1vLipT2ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9320DD3B7D0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503877358.26239.4692642799502763422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee38a7c237aeeb16067b4e111d1a06259f707de9fa616d0c467bfb9356d83a25
Date: Sat, 06 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765038773
