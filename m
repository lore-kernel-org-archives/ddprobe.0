Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D502FD877
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752179994; cv=none; b=SLbEn6Xe6BcI5LSMyODi4vpPTcACyOP+NmNryLCTOlD2WmbUUYYOkbNMl4keeRlwe+qb0l/CgQPibq4rCecaMaxbLtt5oqozBcJ/C32seL6NGEW1gWBVObSwIdAkoe6mPhNT+F/ylpsYBWEy0SLIbiaCVlpchEcVW86r6mv/e2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752179994; c=relaxed/simple;
	bh=gZwzq0nOA0uVb+X9sbygoRFxqC/c4obU6pqMQJwelF0=;
	h=To:Subject:From:Message-Id:Date; b=WHrOsGvtof0Qxp89p3/8KKGNBIbEajsqDrO6+Pn2cKzt3x1mFloCHu03AFU3DOxyPmIFQ6I0BQ+ntXwzL+DkHAZRqrCH/5pSKw//v09TuNiAotZazfugDn8KRsbJbANWhePprmzPXp5u1rq2X8RYtncD+5IKVeIAPcgWbxnxq1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gjto/A3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gjto/A3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C69CC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752179993;
	bh=gZwzq0nOA0uVb+X9sbygoRFxqC/c4obU6pqMQJwelF0=;
	h=To:Subject:From:Date:From;
	b=Gjto/A3ua25OpN4RzkOxHBiLRVyw+sLrQG9XRsSjPvjqF6wVht5dULbh1NqLJgUPg
	 J5EVLs1hliqCMqhJOwR7km/xkq6yKwlMr+Npi/Hu5RdRzcN0yImONLWORze+7iDJZT
	 fK27cjZuJZqEJFY87KS80RMVWhkoKPhgBaq+iLUcMX6UnGks4OV0u3QDFKysj3TRi0
	 5843qST3OZZ8M1Ypo1cGv6Nq7dmYPUis/Ml23sNkhdZzwaYYWDpvOL0/FL4a0Sla79
	 WDvEm3e5InPW6f5mL1QH8CR74GwVfI3pedRElOu4yrdFpdg0YFD4al8hJ0X0bxW+b1
	 hevuq+b2w/vSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC11C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217999357.11147.6593370360705362947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ddd6b2ce1929d057ddc9b6c3ce650611a322ba9bcb8606767a9a6e39b8d6074
Date: Thu, 10 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752179993
