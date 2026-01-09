Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1603318FDBE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767924834; cv=none; b=XBIe8B4MdGq43534R39xolEYhKUTlpxyg5KYCbdw+ZUjjxAjefUaEIm7NfZDLt/LOiyDbVTltzy6uwAZO8jYWXejnefi2XgEba/F000GGKNQPwrow+32FRF0LmKMQW3vamfDZJu2erMlwMEdoYcefw+OSmtW6L3NEtDGPxYHuNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767924834; c=relaxed/simple;
	bh=xh4F9gx01yhA7AcbwbLqiuy7/lNBq9++pq3xfvmdFJs=;
	h=To:Subject:From:Message-Id:Date; b=oRDibBSsbew6IchnViolUDbC4+EV0ULprXgln7O8w2ElRNWu0KxD9I8kQN07WJ49akz9uE/l0+HDGoZvvVEQnOM9VCY0h3Kq6VP5TYQ9vRhfzTonWifP/CIjyDwWYhLKpu/zkFP2uNdYP5vlRMC4Yg09ceHQKaOg4Uyh44Nv4+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfOIck41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfOIck41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EF3C116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767924833;
	bh=xh4F9gx01yhA7AcbwbLqiuy7/lNBq9++pq3xfvmdFJs=;
	h=To:Subject:From:Date:From;
	b=nfOIck41gkrlxNSvMo33e/olUOkIxco2BcunlXSF43i5LeCbS6IPG/rl33ZnJeSML
	 nYgtBdfPVydmQoPZqfM+905NsgkIB14o4HglpS7yGFEBRmhrHmIwnLhfvHqYYclj4v
	 dVYTfYz/ThWFG7aXcU+q2kNBJmWCEwjEPysooqBehbpUZYi66micsnonXD8B/Emivz
	 XI9hP4fiJRWgKEkJHRCA3PjV91SNNATzS9x0lcbZvfkESeDsQiJ4n005KfeJxso0Pl
	 oGQf0XWzAqZ3G0/pYceXvXphuxcQCGOrMSVA9TYHSqcuaaTrpMupgVyUL6YkNqlwKf
	 1TQF2+bzkLjxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A7D232CE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792483358.13084.10534244024104880281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e27d7f9cf58e8b060fc73520504eeda3c232252f9083b1ff695a52624e98f58
Date: Fri, 09 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767924833
