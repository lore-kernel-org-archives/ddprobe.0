Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE781DB95E
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788934834; cv=none; b=d9W/6wW34uauZG7dJqwkpc5cYVUYUdwaAIdOzJ5+OFQlvCbmhs4XFuXT8qOHOnfxYjUK5P3U7pUj7cL365dolkiBoqUvQIkdvWbSGTBr1fj74kP3NGulmc+XUQjShljEhgC6nK7eDKc01u8K/JOadCXRAtdQ2+6ztz1ZzbwdgzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788934834; c=relaxed/simple;
	bh=fDPQesufZbqswkc0FnaJdHqJC9NPoZ2e5wXYxnDDUuE=;
	h=To:Subject:From:Message-Id:Date; b=MQ8oyco5XD9B9kEQctiHbQQSlPAVXbIFwNLxnBMV8U1VY093U8fhVT+woZrYawd8b525t/uWZPdSBg72AOXM/Mv5iOD/GdDAAgo6mMFZsGOt76nU3lT+iXPjSfYh2SAzE67bYcc8/+iX/oPIkCoEI7/XsNfRE4K5VTjrz9LBVRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrSJrKRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrSJrKRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2921C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788934833;
	bh=fDPQesufZbqswkc0FnaJdHqJC9NPoZ2e5wXYxnDDUuE=;
	h=To:Subject:From:Date:From;
	b=XrSJrKRct1F2XfninMzuoZcM3NuhVca6rHo2lKs/C0YGyMc3Qumy3MybRdr44OxY3
	 mesv+6eCi0yV5hghCANO5KgaK+4HbBe2EIp5VRS7NiP9r2aBKkptZwTRwmzJJJxQMm
	 CeGeiUv22u/KYhGfSIriLzojKSGroRrITyVrz5Iu3q+82hyhzZSRjlTn1WNC0d0UKy
	 R952Ao/a7sNwACo+Q0ePnaiNRdUaj/N1s1TQ4krzeZcUfG1FggUZg5RHdVGQZ3KYfz
	 XE1LMskpaF5Zl+kt6u1EPyFsIdY5H1EQSLQ2uPtJut/tZT9sIf+rB/heIAvDNPwRFU
	 xdRpCy83RF+AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00EEC79FAD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893483371.8098.6493355765928382788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cdf851923bbbf9dd5bae7388c931a40b9d082c4e155ea85bd9fdb56e12482f3
Date: Wed, 09 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788934833
