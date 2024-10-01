Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B71A1C8FC1
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727801754; cv=none; b=c1Kp9NVrPtK9e8S1z3FdsKHiC6ZIVC2/QlyDaFk/oCYI8mtaafEW67fN5Ogzaxm9w/SnhqatepRTNIBpwEZhtCDrcwjJZHD5ozo0xxZ9P9rvJzVRCylQ1s1RuBnbdDeE5A2Zmn/N4gF0ykWrdtysvY9AAnH/aIk84pDKB88X7O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727801754; c=relaxed/simple;
	bh=S7/I1q1ZS/qeGDReCRyGjDGnTYrVn4n9i4kXlAroI7o=;
	h=To:Subject:From:Message-Id:Date; b=GHv7ZpMuBt6nMYgUOVs1Dhzph8PxDjMQuEVaKK0TU6Ta18c9jBB38H9Lb+v+/o91gAzAdeDKlbkZpoVPaG21utfbYfL39uuzw3IeDiKwsdpSDEVXJ0hfqWx+TIbvi/WeG0sT+eVJKR/Zp7VzB5JaIww/TaQhex9DX337QsUO9+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/wp3s+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/wp3s+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3649C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727801753;
	bh=S7/I1q1ZS/qeGDReCRyGjDGnTYrVn4n9i4kXlAroI7o=;
	h=To:Subject:From:Date:From;
	b=Y/wp3s+vP/X/gLL9BQCYBRIatB/NWiHGC2c8hb/JZaqv+AYKFkiH6yyNwD8/08Vsl
	 oZFY2FIB9kvn9m32COUvblVdixIHLWpWz7GsVmjNxXFFMTurb/XmDu3szi/qfo3zzh
	 v64dPRTIL9cNU8WcZPWTYkCUcXnq48u6iDpLVP3hC+nhKTz89pzXX7BPiVmA5UqFHT
	 QnRokfU6ylJZSstknBYvMoODC93x2NJWdtnpU5RMbuuWbrimANnBTyX1451MkM2w7s
	 4+8XFj88VhiI5/UGGw1uvZ5TbDpUsN0T9AxZztpSg2eRtPubEhOTigfeVJGmQcxymq
	 +9Rz/GCxcJr8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B7FCEACEA
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172780175359.19474.1448486082618366908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b336148a9e99a21b43cc07e299b389842a44ac0a93a97d9b64b0d64536940ac
Date: Tue, 01 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727801753
