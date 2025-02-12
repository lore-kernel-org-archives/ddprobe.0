Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73767215050
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739379534; cv=none; b=CvmBOAsCqscFdkXHzFvQnGt7Cvngc6Ay31KPBJRUfGKCbRYt0VWkfO+jDJAz+QVWelbFlrabZ+vt5iiyhU7aVZaCJfAkkdeZNFKjsuz522oNdB3DXGHBLmGrjEI4PQYVOUHdCV0+KQnCKdTken5AI9B1dh6FYUV3ZBzBsF1VYCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739379534; c=relaxed/simple;
	bh=nZgrxpDuFibEf3QnAtKxAHA4Pi++q5DAKChauwkYORM=;
	h=To:Subject:From:Message-Id:Date; b=S8iiE152Y0iLXnZcyDqYR3saE43YMYKgI3zV4H1hAjvxGcsJKp5+Tzf9otcl7HGTLMpJmSCIB3BpwrKPeoXYQQXQNz9+eoi+FLRdQ6UrTtzyXkrf+F4ODydqTcN8mXGMy2NEO1rH/Eb208O3xTuCPiMJJ5NVylCXadwtZ/s4xA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZffS8eM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZffS8eM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C232FC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739379533;
	bh=nZgrxpDuFibEf3QnAtKxAHA4Pi++q5DAKChauwkYORM=;
	h=To:Subject:From:Date:From;
	b=YZffS8eMC5EHqvPXq6fXwFZ2HrGK0zo1Ymmsrpn9ri9S5CZl4CwH4aoq+Jwsnm6QS
	 FWw4dj8kAhQQWiTVdX9X+MCxUh+0OVBEf0xYYaZjTARngHCeKy+fNV41Z1H2zuucus
	 oU1udBB6eaWfyLESS/+NKMcF5KpsyJt0rGv4mEYEf1+ifmwdJVCTFWa+iJTODdN2K4
	 JU3XZPa5lICA8AvfsOCWTfUfLCbFl0O3MXM+KKrY20Dc9sSK70LUjCJvKdi7GjnYwv
	 antciFT65JGzXIqWvFSdafKcOVZXPWClub7WlaKAg3AJV81M21D/z+J79YURNRFWVm
	 6eldvupSYLRfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F38C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173937953364.32514.6361432489809238166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0769a6603001d233a655a8c06bb722c0cd7ba2c66d4bd898df13971a26f1238a
Date: Wed, 12 Feb 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739379533
