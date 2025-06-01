Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 710F72DCC0D
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748763594; cv=none; b=D/uJsCLv7Y9lYEFzyKo5t4xD5Cm2DjoCPb/GUB/bX8celcSDjZhRTVo1vEccCU4JGyLaaxuKYRSXcv3SGafEy13bE5nwpzcLg6VowEmK0qiZDPtI9qjitpuLJAQgwk/DlFkClDh0NpVj7uwPq1y+UAj9dq5aOPu33EDAQBLN3Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748763594; c=relaxed/simple;
	bh=NQW88flZ4/zMD0G9l5jdB2KHe/Qv1OIN9X9BIMARS7o=;
	h=To:Subject:From:Message-Id:Date; b=DXjHNIdbDpKwcHD8QLhFuZznKw3U61+gWferQa76uW+xD1xAntNq1cwH1POfCkGhEqe2ifTdhuq+TOdqS5W2/F5w4TJj/9ByY04oG/KxajbKz4iqTVftl2/raNH3I4Zwr5r5JKjU96ZSwxwHsQJXwKI6Ksitd+OF61r3OO9wcy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQ9Wbw/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQ9Wbw/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31D1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748763593;
	bh=NQW88flZ4/zMD0G9l5jdB2KHe/Qv1OIN9X9BIMARS7o=;
	h=To:Subject:From:Date:From;
	b=VQ9Wbw/If44Guy/SJybm16+jsnmOdkNtv7hR9adf0OijHsQfoetXgWrROf+pbZ5S5
	 cWg+tohWH+WPpzyOVGTAzE4+jmciDlQDstts9cKOc+EKaSWT5CICz8XvzjTbHuSOsM
	 43PcHDWg7irrG8dAagCaQlkwMi/yPXXx+YAO68eP3JlyukbbfSxpDIwHkgM1VUxaV+
	 m8Ic5KvboV1QLtjBQIy3/y54zTgnnW/2uks+Z6NQDrrkd489FMUregS4k6JHyf9AHL
	 WZ8myxn14AWuG2oCqVw1wcklBdpVwYDmHHsorcXzaGDEL7c5I9Ed47BYhiO1WeU+eg
	 8GSPhVQmFzGSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E80C5B543
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876359367.30258.10989646102367616181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba224d8c35babd13481ab6142045825884dfecd2d4ce46e66522698c3ad5a15
Date: Sun, 01 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748763593
