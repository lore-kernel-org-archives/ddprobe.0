Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164B23207
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730235954; cv=none; b=hkBRFq/txXzrCh7juBK9UYrMGAPOUGJG56zq6jvCebkr+KZMv3m9B3oXfhpUeZqjeD0v7QtJ7fNCH8WqJ2eTSpA2zbDSVDc1Ko07Js+ozPAGgGMzj2nwBTUBQHO5NPxVy6LorrytlX7Wxfy9zUez+tlAOEIx5i5OaSZ6ketH7/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730235954; c=relaxed/simple;
	bh=maCSSANmHMOKBFeouChHeeqyMYTv/0IA+MhAxVT3Rto=;
	h=To:Subject:From:Message-Id:Date; b=qKxyHYHTYM+gMbF1FrVJCgltDGvExvPWul+9ojP5ED57gC2JOPgfSYD8ObktTrgNZR1ZH+vQ7AiiB58o6gnYUsqrsEwoqKCkZJntJWYq4s/QfaDoA0xkvSbJVvpI3VzxoxevCmNDInJzh1UvPNDM+eri0U75fpXD40QxZrm969c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qD8vl6zE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qD8vl6zE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B86C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730235953;
	bh=maCSSANmHMOKBFeouChHeeqyMYTv/0IA+MhAxVT3Rto=;
	h=To:Subject:From:Date:From;
	b=qD8vl6zEUJItnFM1XaEfy0v/YNqyOKFZwkd1sgnfquZ2rjwL2iIv5uG0sKxvJCqol
	 I+3ZS0LCBJZi9w4UeL0MOsqYcI1CsyWpA8cmUXKYwwOzW6520cdwCo7PMkbgAuvy+U
	 wn40BJVzhh0aMImiTZV7Z+RN5PhVNIo5y11iNPM9FFh/UqEghGE35f46n/uGwsJ11Z
	 PgrF5O+UYDpe+dSMqmPQpAQhD+kQ5p7wg/a9l+ON4Dnd7Cqox9J85ZcUtN25S9Zqj5
	 YpV96JMflou5RtPbmKdIrxusluW/J75n+0QouBFpL8fhP/ouAD6acBaV7xsxRFKQke
	 GzqiyNc5WuyVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1727D74940
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173023595365.14471.13925661280548853062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b631efd4bc156c4e77ee893724a2326491e9836ee5bbe627d8e7b7b22d61923
Date: Tue, 29 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730235953
