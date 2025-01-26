Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B81038F82
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737899155; cv=none; b=qXYQo2Q0Jq1WnQEYIlD/dksplcJrU62C8cJlkTnUIgYDiVs6U2jU3cH0uZ6vReJc3iEwSLTKXOZYAyaPIj8G9X9mKhgyz/gJRWWii5XTwqexH9rvZIlEVShSdPd5fXzB9jHduol1JUNGEqxdVpvrKp+6nt9JJCZwvE2rRqhh1sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737899155; c=relaxed/simple;
	bh=OMMA8WidwCjPBt5LdxsoQuse7JSu9ZsDBkS62X/JrFs=;
	h=To:Subject:From:Message-Id:Date; b=XLVb/DAqCZpF42R9zg57Q74fXtuQO823qsod2YVor+XRtkK5IcZwiue6on5Qw2ZCwciVrXjin+aSUM8oW3WRZ++nP5cnGTvIAZAUOXRNGBWS36lfgYWQsvaOmEugG5SnK2O8dzf+BA9+BKsSVZpFtD27ojgqiGnLuK1Tv94INJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1DqvfZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1DqvfZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A533FC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737899153;
	bh=OMMA8WidwCjPBt5LdxsoQuse7JSu9ZsDBkS62X/JrFs=;
	h=To:Subject:From:Date:From;
	b=e1DqvfZJmSwalsPM/6KpO1Iyf8lMDHtiIiHMEzesHkdaw9iY0wPq6SJo30ERq+Ild
	 igDGR6FmrzyxKDKtpE2MmjpGS+nkWRtaAqWg5dSNpQfrXWFa6ZsR8ZytdNFcN1XPyu
	 iouML9SImFCwQRXaykf6BjftvuuhODEP2edxwKYja83r3kZkcob+z9fmsGve+sTEFM
	 xOr5ma5vozfJYuCURG2wK510zcQxiy4qikBscAYzPU5HE+nCbxuuEn40Y3bmeEQ76l
	 fWKCwLaYxYUTCoBAuvsg5pybXYW6/ZsTIK/PYZyR8VtNGET7aNp9ZZ/6d8xmBFaauw
	 /dJkAuu1IT2PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D6C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173789915357.522.10768581118206058405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0daeb9a3601bc83bbeb01b9d665cf380d06722dd67487cfaf83e500755c0925f
Date: Sun, 26 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737899153
