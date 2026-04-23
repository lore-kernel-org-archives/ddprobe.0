Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172973469F4
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776979054; cv=none; b=FH7bPq5Ski7TensHwr8d03/U4eYKOInKbNiZJRKMxUMeyAubyXzcS4diCD6Bc9kTqv3SCdu5/YjCKYET80FaQ4e6qnP3RVn6sDZ5qqI2ox5O9RuAciL8AdkjMLPmwb8IK2Vmh3d52hmJn5TyPuqgfEpPvbeHG6j/4tISiOm84oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776979054; c=relaxed/simple;
	bh=8l1IFm6R9/4qMW9dnlTOnRKxaERyCVdytT12Air+Md0=;
	h=To:Subject:From:Message-Id:Date; b=HDdTv+4Nc6OuTnQt7D8sSSrAS6QGdaCwJHmL51ozMWnJzsyYV+zUcmFN74yh56ztWGyxs7TPAGkvA1jFFsWQVh525SPRjWOoc6BkkgOioz9Bfo/HqmvMlSgGfZwzUPOVnKW1XqOV8cP/vYMbfvMpQ0jKF8bpTgUS7MDEpi/Jhqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoRUyVGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoRUyVGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C195FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776979053;
	bh=8l1IFm6R9/4qMW9dnlTOnRKxaERyCVdytT12Air+Md0=;
	h=To:Subject:From:Date:From;
	b=uoRUyVGjfKhHgyOdYlAV2qA7jOQMXViq6NX4AtU3VQ0R4uAf8kACr8XYDiqlOhSy8
	 qsTRaNGwZ9avwGPablLBDdqu0yh3ILTNCjb2xXjVQAkxytHwPuE1HXmR4gUEJTBbmw
	 rzboUGIBs8wGeRoaJu2Wv5i0efN3WNgC9xqi2rycVpp8kXcqw0DjbbOSKzfetQw7qw
	 plDrVVygAd/EPzbYGruBInQavv0YL+o+x37X8PEgd7GDH0AfZqLTh7g5tzaeroDEFB
	 xPAUgkbCjxTqpF6pfDHjgdSKUl/oP/F7PF25pCIBSME5ZEoTQSIHig1l1C6IClrp5k
	 Vs6M7QJHXijZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF03FDEE4D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697905368.20664.1482654042521881934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194494c3076fef8d704d6962f40b616d8ed00a22a8c9e44b41d689aee4ee0626
Date: Thu, 23 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776979053
