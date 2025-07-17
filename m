Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3039A28A700
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752749994; cv=none; b=DzPphqi+YgBvPajyRc38QT0Pr5bvXUp7uMWVI0Lk3Z9dlk1hjVVhZEAmnG7k+i1LQ13PZUs8zgfzJuwVbPwcrt8YXeWjTZEAJrIhDvVsPzJR94b6pq15SpVy9uOcm/FuI3ocdpzR1UQSlFjNwrGWqSRGtwW33O0KnA3+iZSMPNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752749994; c=relaxed/simple;
	bh=tGMvp0Md2TESHYrM7iJDgBEoZC+jsWlx4ZQ5gQ8MXDc=;
	h=To:Subject:From:Message-Id:Date; b=S4IwtWCOJT3MxG3fL+0kNjO+bm8QzqctkcU9O5YMWVkBMX9LfJxjQLMV6xfaghRtEBkwhhAQvRpnvAWDe2m/cS9EPqfzSU7C6YZHMSXRfGwpJfbsR9hQ5itcgG2X96LRslItMF06cJq/IAnkb/PaXksKcdtJ/ASKpZnE+hI1WZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5RdykYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5RdykYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A145FC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752749993;
	bh=tGMvp0Md2TESHYrM7iJDgBEoZC+jsWlx4ZQ5gQ8MXDc=;
	h=To:Subject:From:Date:From;
	b=K5RdykYPa5eru7+gxuvQMIZmLs9AcQrJ88aMw0+SLn5R+28aWqFiXB0bc/Tf9cQra
	 zQcvJd6pC+4wsoOL4bfcBytchXwSCp75giJGKTLfT+1Jyf166nkoGcH9n9n9+SGZGW
	 87aCNat7sOvlgIJoKRk7X/KEd/pjGn1s+lB/oGHAotEdlffPuRvCTH1VWHC0d1bJRI
	 WNgzROtmu6S0z0cFPxo2+IxrXQmeKxreKPujXC8UWRYPja35XOx1hI/zz2SKHcrcSo
	 qVzK2tDzqjoyS7WEUz4JrTqPBpOVl4VgS+0svSdLKzUyQQXCvoHcCKNeVAysbHujgb
	 OdWIlqf90zgHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECAAC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274999357.7686.9110961491927485168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eac44ca23eecb54ec4702bf85de2cbf30b841a470473118414d7ae1e15aedab
Date: Thu, 17 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752749993
