Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3700938DD1
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732872954; cv=none; b=tfxAt7yHjwgGeiGf6EKhsKBP/D32yiGYsO0ssPeib1u+BiomQV/792zwiXFyFOU53+TopFmJlIh+vEXGBkKDOB3tEAA/ar6Db+/VrD0nWB/nHYnnppp61Nn8DLhxYa3DDPPRpa/ga68AHI1ifRD7hBx8Kp8IpvDiS3X0O2rwNH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732872954; c=relaxed/simple;
	bh=CURn88EgR94JM9AWCopWWItuaB3Ke2yS2zy7h/1cpW8=;
	h=To:Subject:From:Message-Id:Date; b=NlhskE5bmHS3JIardWURHi2JycwHpvIRxyE3lz9cKWhVAEAdEV4Wd71KRCb05XJpFGL6tgxv6DJ19IRUWyPhn1Hh8m04cZbFgHJRPAj0F9OnL3Uyy92WU6U7VbgNBD9y2CH1EsHT0NCkXFLRgB+8NQO7GLL8ZgzxkSlhz58VFDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RejGiwGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RejGiwGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEB0C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732872953;
	bh=CURn88EgR94JM9AWCopWWItuaB3Ke2yS2zy7h/1cpW8=;
	h=To:Subject:From:Date:From;
	b=RejGiwGTQPws1M40j9vL5GIpdYwS4FYwqOSbCL4YOqQVnh4RTdtxXsRD1akw/2btO
	 2pd0FHM8qBym0I+JGoglEp3AafKQkxA6J4bIDs+CoJXCa8vdJayrcGBfvdLfHNRv/g
	 zgE4T01jz5DdfBA1TLI4QaiNzVKdnT9/PQ1ZgRTGafXb/HkXpVABYJlNQQmExXBLP+
	 /juCVLZwSwXRslJ9f7uceLgedaLcto++FpXW1Xl23bOCvYMQF5OLcxWbiB0h763pIJ
	 T6PqKzefo8BmLrbP/Ay/Lk8uFAVfX2VktiCSg4ec4AiROq10qLAmwxEWjeWFC64tD2
	 H9hiTC2shpgXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96637D6EBF1
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173287295360.6977.15154408912937939623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f071f5cfb1023d7a42cb6beed5c4058e59ab474b5005759f9ceeaff01a4d74b
Date: Fri, 29 Nov 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732872953
