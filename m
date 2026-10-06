Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48131379EEF
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791313834; cv=none; b=oBdkaptcJmvlIaJ0/fn46teCAOptSkx+Cxv5qEoVTtbsbuR2tx8mEqjkujXorEEQSlmWcfJIM9jV8CnRGb50SfWbsWGzkbCKh5PM/uW3IF91Gm4To2kfyMwxJJ/UpadleCv7kqv3bwu9tGx8MZ4ZGqUNBgBB7V+zM+xQNToiY8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791313834; c=relaxed/simple;
	bh=+wmxkbpBP3TtjwPHNZTuvhScmgZR34wBTya58k0Sigk=;
	h=To:Subject:From:Message-Id:Date; b=PC/rCvfGzByop4A9pqcFYOCj+SNcIwud6W4zQhWBpqXb/VS3rrhKSLTKVAqE7B2Qs7Zai/Qkj4dY9l042D+TtXzLErkOVRV5YUr5Vw4lEmNmi5ydYyXjRwmBscsCB6hqAwlMbUprYul7y0bU4bJsasNH8hUlWmLDGNnJr7o4xCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xfi+W+Jf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xfi+W+Jf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53AEC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791313833;
	bh=+wmxkbpBP3TtjwPHNZTuvhScmgZR34wBTya58k0Sigk=;
	h=To:Subject:From:Date:From;
	b=Xfi+W+Jfxg1XoEiPjOM/2+j1GsAQfkxovggtmonHU3uwRqJBclWXNR0SWyY5KgkEQ
	 FIPg64GTgG3FAolMfPKHdm2uJIu0Q22peQenbEL68CWFEo+AaDlZFUqIN332xbfs/G
	 5Kvg1QYskCU4BP1M2X9HBgMUdx+Hqz99WXEoIdzkmeTHO3077oCohLkSCxVPDLNka7
	 wEQyD98+7UuCgvMj93XqfUJs/DcINQY4p8zdrDmk5mX2jEoTAYGLYBi818SYzSq1Zn
	 hnTC28s3HzXJC6KKLZ9YdQMhAvVd43wgruAFHibdFWESOg5YmHZ1TwfFC0Aqe+kcP9
	 bkgVYEzGJwCSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ABDCA5FFF
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131383369.23235.1665215921195703584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d33cf3d8dff12d2a823a01df075b8b96fde68da92134356ae52efd73d2e0664
Date: Tue, 06 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791313833
