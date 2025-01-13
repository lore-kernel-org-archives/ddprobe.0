Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3468910E0
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736747154; cv=none; b=LedtFPY1rbMVhTq50tHgFThuneBFOwlqldW72lsdlv9dN6alHBdweKThGiQexh7rKURudldCOu/xhX0JdtdsK6IvIU5ReeERAyccfq/bxNwj6FEvko8G/1TKMJUn9rfKmM0D7QBGl6Ak3D9Xe0RnZvpgUQ9ZuyM9Ly7diXRupLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736747154; c=relaxed/simple;
	bh=/Ne8aC3ZCpXx8wZCIPWeHDC1ZDCwbXpn2K7xKgXlxrM=;
	h=To:Subject:From:Message-Id:Date; b=MFX7G9efGt3foIoUV6kpHWAm3q3FzNaJNCuxvrjJPdRdeTv0kzuOsNdFbMjNzuMKedJ4sGtTD9+A/Tarx3geypHkpJG56JBI2/IsZVCdQzL9JDItVzdEnUjlgILv34OOnRbbcYpwiejJpTLGj+witSx2FQxBWJC9dVS1uC6T8Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsdFYL5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsdFYL5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04D4C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736747153;
	bh=/Ne8aC3ZCpXx8wZCIPWeHDC1ZDCwbXpn2K7xKgXlxrM=;
	h=To:Subject:From:Date:From;
	b=lsdFYL5bYvHFzEMnTaCb45UmyUio1tci/fdrmaaCymlQVijzpbLT+HZDjrQAy3Ges
	 aelffsfvhw+hm94mF4nuOkPuV66HOcchLJ58/ql7tIurvLFMI49r7QvNkIWikHqpwS
	 WfCWt/E84gf1RNkNmqXuY98+ExEIBT+Qdxg/p+KvQV6+ywhghPfgdQBfh6ELfijXxm
	 uHLvboaAQmyvgBKJmni6F4AOpgk50f/w+Wtr15fFe41deaSDAXV1GWpi/pKcsX1Ecl
	 cIJqKt+pHOLZ5MhDSETYrugYemE977vok+ULQy9yeyN1hM+OS7dG2XLfve7DYRDt2n
	 ujyOvx1Hj/PSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4C0E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173674715362.14221.4859785717452598804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62269d5179684dfb132369027da1f67c2d51dadc4296f718aee63ba77930d0f8
Date: Mon, 13 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736747153
