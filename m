Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5071B2745C
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765080174; cv=none; b=hkldMFxrtmEFaC7PvwnRaso3iATamb7+aEB0yOEIzfEs4e9Oq/Yx1xY99VSU1fcBRUGNzvY594VgASL/lCd8coZa6cawAeYvP04iC+4MSwsk8HRevJ3Xs2nLH9exJKA04E+o5U0uaYTED/52yio3l7JutNvvTOAAT6GJjKFTZp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765080174; c=relaxed/simple;
	bh=h+wN/U26zkmXMQFLPoUksLTQwlmi1nBHCPNxR79S8ho=;
	h=To:Subject:From:Message-Id:Date; b=NyKBXdPWyAgrZZgsIY8UgTD87QzRgKMURuB5XBbj7dii5wX5ug1OuI5JN8uUr2rjdhBh+20nZZnPfhfyVhEwi9YxZGsvoW6dCMCEq01dDvniKTh0apbkKVdUjSpVHKOvmn8YbEqCyTKz3JcrRN2aBXn/oRzbQZi4MI/mSRIlbxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoQoCyvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoQoCyvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C41C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765080173;
	bh=h+wN/U26zkmXMQFLPoUksLTQwlmi1nBHCPNxR79S8ho=;
	h=To:Subject:From:Date:From;
	b=AoQoCyvRLzTtLbKa+uWWcSDYhygRKEbUzvstA+I5rZVp1zfiN96e3kkbHQ9LQ+n2F
	 ra+pei2v3muNBb5TFABwxON0yp6Yhxynwhnl+ExauYCrveUsfkH3b06GnsNh+mIIRj
	 fjbaPG8j4OCG/PQQSowB9kmkuf76QfqsHFaWUlzdT6W+ALQoaf4E0Ro+PYGFLv8xd6
	 mUUSlKFKrkIK6O5pp28GKJ8D1nPof6sdaUIfeEmXKof/2auIvPuO6d2MepLe36HnPb
	 FpV3Ues0liGwZdqwJJEdyIlEQ9+mpUMo9iEE8QakdeWezt0JDj2txUMJXRMGgbiyrg
	 857KTSSbBfX9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A17D6D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508017362.7611.12196044697838781546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de59d30acf345f658158772986af15c8d083026904dec967499daeb5a9f08f6f
Date: Sun, 07 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765080173
