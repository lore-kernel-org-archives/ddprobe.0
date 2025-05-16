Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A033145323
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747358994; cv=none; b=VlXO+8NX1oKJCbX5R/AnDL1W9Po1xwTbLvT+e4rDBYCz0u1yTZelX5A9nzAziRKDn+VS1E7wmXD8BUzsuome4WPWOawwtM26Mtk09EkDXajnEHipIX4Sd8+Wz520mwx40AiyCQdmQXYd8EuOhIO2xR7Pkn6T5q6zQDweLX01ZZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747358994; c=relaxed/simple;
	bh=ahSlsN8U2Xw/mdgJRRcRM3MIg3zDbleAwQmrzMJBrqs=;
	h=To:Subject:From:Message-Id:Date; b=bbfGKC5c4wE+rQBgyzICXxqycW020jXCcdFw+OzMIS6Z+FohPJ77ljHVfh3hTXZWdhAvYnFRfLb7yGE2smT0fYxfo8lYeUfpo2OvPhT+0tm/zcaSWL6+EgoecOdRPDbbf4VvrI00NYKZn0KW08xeaBMvzF2G5Me90ZKg8LdU8Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isgcnvAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isgcnvAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40D6C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747358993;
	bh=ahSlsN8U2Xw/mdgJRRcRM3MIg3zDbleAwQmrzMJBrqs=;
	h=To:Subject:From:Date:From;
	b=isgcnvApEoX78MI4Cq+sa4NQeYrsmbU98uPOoRWe/1iTWKjxoQJ+dGzbLPG20AjxO
	 IPXH8E3eepRTGSMBsob9oO9nThP3e/DsPneL4WDUKp8W1QU2kg1IkbhwedKb1CIIOn
	 iJnv0I7Pb3jmdCcxiRSvfqQRAFuH0UbjT85Fbo7zDKYCbCVKIVRIf9zqg0JtMXkqGc
	 KieCAQ3PliAgPmhDm0jwjKGGrYtxyr+IbKyvIkZ+7+2EGpyr6F250lZQ2U2L0hGION
	 DJrWcfpD50LhS9whly5Z2fFNKEDidInffuDzdBvUBOuglKWG8lOLpKT07Miub4MJsO
	 n/nmnXYdTwrbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9098FC2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735899358.560.15703607010457382007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94891f901821668c2be3d6c618b375f420a023e7b0309be99881198f4a1c9679
Date: Fri, 16 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747358993
