Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B97221FD4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791160234; cv=none; b=nfr05G6ahi8uDZcdtIoy6biYAlmssIxlKvhARsuOovDcaZxZWbwRR5N6ys0308kHipRBY0GyeYb90Td4dWwwTfJbrO00sebvTLPSvCa7KuQTBFnx8d0IT2hvWQS6Aj3+QoR1SxWdKLocnkauJV+vbRIqEh9IpWfZR7wrbxBi7h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791160234; c=relaxed/simple;
	bh=8XAaty4rAfy13AmvE6b4HaI+Vo2fbQx9+M0gSnKojkI=;
	h=To:Subject:From:Message-Id:Date; b=m6E4yexlVB/a5KTf1TPf0XTKb238O47R7ez8grER6KVNi5qYViqywMPZdqhzOCCn0v9PJK6028ZqSZKo5/KBvlClqmOTojEpYP7ssQxqo4+yFCQgPxzMCVmvl0/3q/BrJx+hK7Jeal0EHaxpwk0+H6V9EUXleFIuHNW25MbFebM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcI+C86h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcI+C86h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62BDC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791160233;
	bh=8XAaty4rAfy13AmvE6b4HaI+Vo2fbQx9+M0gSnKojkI=;
	h=To:Subject:From:Date:From;
	b=OcI+C86hvB+bKzk8hkRCC+y/1Yu6BV82kBHzfKsmcD1gDu+Qd2eypqNeAZfOsj29R
	 p4/PCbCWTjCNBBq0N1I4NJmjqjXeto8jLmsb3FsfUM11sLjA6EEIqXjMbOUBxmG+Im
	 7tyblH/pmb+Uuyd220bVUXgNWLEX6lQe0NSl7C0IfADqAp6SzjE7ncc9w1uDV5snnO
	 G0xpgmfiEBkPOpfH1ozb8A/pFkcEIYCeTszWnON90dZuM7ublW9uJTi5NDN1KZbpCf
	 DCQzRUpZTHllix44AP2advnYySGhxRSU4Nz7jx//fCTEQjkeFarbdbsUJvt0CzFOhD
	 VLudHTZtVq+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17AECA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116023369.12489.10812661219223445157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bac2565df77217b64d52a5cac50e60ac90f40d58e7a18eb122b226c7ffbfee4
Date: Mon, 05 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791160233
