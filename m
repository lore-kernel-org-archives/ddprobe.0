Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D0D47A6B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763186394; cv=none; b=cwA2W835Q7mOuDFWhlDEAA93aRnPa+l9Br8zQnDWhFnRFNOF5m1Gr6dpHPk+8bK/KHvRieqG/0S9Z2g5aRIOAPGZp730Pw0pYVxDK5/+FL6L5kWcuHkP8PlfComdAhoRsklECinkd1f+tpsJqosIxS9d167RX0KFYzyQ1fZ2gps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763186394; c=relaxed/simple;
	bh=86aufaCSwaCebMZW44WHTXQcbpyevmWbjoT19wOKElg=;
	h=To:Subject:From:Message-Id:Date; b=JzKvb7a35/LAJDFwok96tiuVQJKxG/MVOxxLekNskzUwAoZV35H2ZLbTfhjEPDlM0Zz5w22JD5SSWFgd6QptZb0wLNJJbiW1G3i7Ednr2HNr5d0LY2OCgm1BwfMxnoymabSiC6lfpMQu4opx9H4wDyUMgKzSE+m98g2i9Sx9xp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VH8094Um; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VH8094Um"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD66C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763186393;
	bh=86aufaCSwaCebMZW44WHTXQcbpyevmWbjoT19wOKElg=;
	h=To:Subject:From:Date:From;
	b=VH8094Um+AvpkYx9QLoxrJRAp6lI2cMZsC5tetVLMVMvAHLVNgcj9rM/U1Z9WybQY
	 EwUp41sZSt24YT5aGUIxVdiRPchGjsTqcva38munPeGRBb4bYr7wLWi7RNqfCP74sw
	 u//44W+WngpBL5+ZnpsOPSCNJNSn8SKjh3gnuogF56CX1pG1njQ0iV9ToyiCqw8JbH
	 ZzeTLoUduWkPTwyRIauHXCbeVR/5y4fz3aChzSPMO47IkTEao8cpss+qpJX5Qd22ro
	 N9ayY9BtfE1HCe2PhthhdPPXDK/hnA89pfJchhMgWHIATv4Ov0keY4KsbXIK+/pW1c
	 DcgPqYPEDxKyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91049CEB2C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318639357.26821.7411076153028052192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df500c62fae8f95958d438a5559f0c66cb0c43fc99830cdf52867681f1da6ae
Date: Sat, 15 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763186393
