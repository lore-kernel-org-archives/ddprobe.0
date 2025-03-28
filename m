Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6F6126C02
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743125394; cv=none; b=tGahVxlUOl3TykeVzblDXUGFj8kzSufyW0CtLuguh0g3IOYYVWsByLQcbv/Qp+ug/YTSV7ptqG85NjB2gZVm/BVYw2O0utHIpanDw66zfx9FtVhqgFGkKne99jj5XrW4aXaWoc8wmBvRI139RAY6VjEdHbW8pAyH4B4dKNobips=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743125394; c=relaxed/simple;
	bh=20iGqguUznaCDpiv8WqnigVlzjL+o/HU7cfW9bITxPc=;
	h=To:Subject:From:Message-Id:Date; b=cpetfOXtpvLXJ6iH4NQayIOgGHRzGqjYLIAdOdXbqtovuk7Oh9j+EjfNRN4slAtfTE2hag/V9C+co8LWKHROKdybdZtDGowgxLvOBoiNUBke9670O4pdgVSLSDVy99mcleKBEEAkJdGizeIiggTpaOA9SO52DSd+ojulQLcRxcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiR2XSer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiR2XSer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5B7C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743125393;
	bh=20iGqguUznaCDpiv8WqnigVlzjL+o/HU7cfW9bITxPc=;
	h=To:Subject:From:Date:From;
	b=FiR2XSertokXcIKngvBqGWEx+RmjEpWPSywDh/QnzUfvheQo5jtpyBVbFUGizBJzn
	 UrZzTdCaoybcyFpV3xn/mM4oZ+cPnhaxs2yU0UFR/coWWjyEreb5ElioNuI8dyRGYf
	 yBBNXdmFxqvf3eHIJ4sXbQjgZzWbnamf2TGKq7W2fcC4MVeRX4+Igjo8D2nmBzTDEg
	 Wsn5iS70JnMPzvQ6J7Vs8FADmIwZiB+zmsEtpO+sukPWE10iFnYQ4S1S12j6jlz7w0
	 6d+zvcs/3lX0gXcB+ZPIU+xbwAKB7s/ByEBezN8hfItJ7cBIOxbRGtupKqkKDBU91x
	 uqQjLwIMQlXcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FABC3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312539360.1766.16612250972702443973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8ad6917caab4ba46fcfa106a86819628f92a1b2583f0ad48658edddb2def9c
Date: Fri, 28 Mar 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743125393
