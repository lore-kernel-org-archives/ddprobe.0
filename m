Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C242EEE80
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787811034; cv=none; b=Fejg0yEFImX6hOZfH5IeP/SWDCsfY+CDdMQKXljlbr8tMhiJVfeIg63nt797914gfo+Zd3kvKyFfxi8GcLZHZ51VNzyfNAlekJsZprd2aGW5c0fW8FPojC2WjAJ9oExrguNiUAVRkWCk9VPLM4O+bnhFORC6T81Q9/3gtUaZnh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787811034; c=relaxed/simple;
	bh=y8zgxU0YljLXgXY7l4l8Mt59JPmiL7QSpv42Jd5A0T4=;
	h=To:Subject:From:Message-Id:Date; b=rs5Eq1poDd/FQoYY/F7zEcVqQBwuhS8TXVN6lAfzbJdTg/3myUMXPafqN0STVRJ3VlixdiswhlBKS82cclcCisklPcMczWbXPN5Hw32vyOkLDdB03wpG5znGOJ+OZg1mQNU3T8676Zo+A/+k/TKPSgBZnMNvz279WlwqRLdj6iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KV93E6yn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KV93E6yn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ED8C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787811033;
	bh=y8zgxU0YljLXgXY7l4l8Mt59JPmiL7QSpv42Jd5A0T4=;
	h=To:Subject:From:Date:From;
	b=KV93E6ynpqeOyn9w1LzY3JRtEZQZHHX9btNW2Ben8/2nlC6QkHdWz88TNu9hvYuHo
	 e5ZlJWTx6Luy7pfR7sMs7+zn76joVJzt4YJobiK/a7dlYtMN66Od+E+5QM06mx1gSn
	 eVrHVm2gepCErFYKvPPOWilDAlYTAv9Uwjf0fZ/YNc8bZEIfiZ2HuxnmfkOVCEhW46
	 xIqNmCVNCe08YLhSFmRBL+ydY0FpB0PwBy6yD+RSuKrsF5hjmnRsTpGxn4L8MpJ8ja
	 7jqRiJhXyHZDoW9xOULz2fD/C58SPzICSXfKovUPD72lMjJ5VfdjhWamuU6Z/UUJ8I
	 HtJPO9MPR+bNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C34C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781103368.14430.12064869199481370955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa5d1537232e240f281672e7605eed4f2d6f87d02f2dea94440fe019eead1a0
Date: Thu, 27 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787811033
