Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC8028505E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767059634; cv=none; b=gFpdKcS4p/CAqODUuZU+gNt17vsqBnPzRiWElgyAESITz/qYsV3dWA4cJSLahsYKd1S+yO0bGKGuDFRjo1Bii8V1Xmeisi0VRMYoDVP3dEVYTrY4V1otF2rKSgLAPjvLncStN/2CNsGjPkvU0IQEyR6o5Sgh7T5+azRr8puiHf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767059634; c=relaxed/simple;
	bh=WPrFjEvxRHranfuzZiNvy2b9B5/Q4nX1hI583fQITHg=;
	h=To:Subject:From:Message-Id:Date; b=r3u3pNmqMJDk0JEFVxjx/JIpghjvH3i0WI/GmhqPBsyyZJMX2D1r2x7z5Nu8MSi18+AR/MCcOIIMSPWcamM+O9In0Gd0y3/ftDMsLK2IDFv8iMDm2DDuQZ7YG6HSVbxTG68sgB8TpWs/LrIO+c5t0rLsER6j7UNWcSoF88OE7no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vzjjc97G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vzjjc97G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6565C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767059633;
	bh=WPrFjEvxRHranfuzZiNvy2b9B5/Q4nX1hI583fQITHg=;
	h=To:Subject:From:Date:From;
	b=Vzjjc97GYYGORiNsO6tG5ykqY8P/Fl8Qbh7V7vDzMPvOrkhVJIKSfl6fzSkE7lWwF
	 qBqKfH9PPAVioiUZgIiiB8zkWkSin0Nn6Oa3nmMRSpr0oOtJwWoFLE7+DE9Wv3zh70
	 CcrD+fMFHaQrQjzXJZ7Mo8AWSu1+D/mkmJXdIARsZ2nbOZFar8GnoshWlSCP+L4xFF
	 VBHgxHFmKLqNwx+0BqgV2US3BYbzTBU4/0Tb2Lsfa4KMTiVh6xap3kFCcumKXdjPSU
	 d0PT1ticC0iMqh3CPGWWFCMADbORIt02QBJaFcRDCIyJWUO53VdPwwAzEf+q3/w5xG
	 z4l1u6L94NhlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93805E92FE3
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705963358.439.1018945414936305323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e551c47944e27ccc508d67d693766064bb3f67c55f47611bb8cb5e045c3e4b
Date: Tue, 30 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767059633
