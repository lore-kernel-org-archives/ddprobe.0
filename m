Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1E0D51D
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720932023; cv=none; b=uf0znByf4Jz7/fr3/lPqI7Z9h9XAPaO3t05TIf6kBlMyTXbRP8ofVx73jqVlvESvpQG7yco+Aaaw2DVAfsXk9HrEVlZK9N9aQW7N4vGeK5C13dCJQSBAna/Xsr/6uWTrmiPsz1GIUekryE9cWCZTgvlgEoK6OU5LIb2ZJ2IDFLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720932023; c=relaxed/simple;
	bh=qYTsS63eYPYheXXxh531V0KN8JV7aYTF1HpmRaqlV3E=;
	h=To:Subject:From:Message-Id:Date; b=DvjQyy7PMfKvIGKVQuwN7NGHlW6TPkAXQiWG59LPYZcx1rF2esmFfAv/fA8k2tmaMwsm7OqTUd0Ryev4hF4KAlJwFNhPAs409AAGz6FmdfuhvWqi43/tGpA4GLDfUULrOIbkKAv9V9HU4t6RUtWXG6BQWDdUPJr8JCblAbksmC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmC0a3nB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmC0a3nB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D535DC4AF0D
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720932022;
	bh=qYTsS63eYPYheXXxh531V0KN8JV7aYTF1HpmRaqlV3E=;
	h=To:Subject:From:Date:From;
	b=JmC0a3nBlvaYYVBeHf3iXRjCeh7armO4lKotBZlfhxPdrHl2bKxLBka1/tUwwIEVW
	 UDce8kc9YUqOcHnqi78s41vipdi1uihAo+8WiO9z4No5rd6L6tPk/MIEuV4rsfO7L8
	 pBzZ1vTqdnfdV5rAFDyE1Oz8u+SxOMDp0U05XSiidG/3sdvn8zzRd4oxtzKQKFjgVh
	 HWeiViq2pXnGKLbGWQ4Nn7tFGxCACtwNRc0Cx/c7lhRAkTAyrdarOS9aSPf0jJ3CR6
	 88yEdOnzLUpZsjXM83NfQoXV7PFHVOwDLXAyqOvDHachrZsGBzuUaWJTVqnIAVjELS
	 Kf31VE+8cflyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC2AC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093202276.27582.13810238186273580738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd3f9b333ee646a6c5f2779811688301e660f8c6f53abc2abac58f9239d2146
Date: Sun, 14 Jul 2024 04:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720932022
