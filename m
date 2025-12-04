Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20205329E7F
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764840174; cv=none; b=Q5ZwUIUCIobTPbkH4qHyXLb/Jv6eSDE1zblC0enE34SOLSVo5FB00Glh7PucOdZ2lKEQu9wSV4s8749q71cGGZqYEyuDFRjj4gQ0TJ7H6iOK26dzhdUwdWtbErQirGv6h/i3TXpdcHATYOyhuiUAcwwKqcODx0KVmQK4RSTsz3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764840174; c=relaxed/simple;
	bh=VHVPjDRlCNlfK2cUzFt6DmfMUb60lZeQ7d/UbwE57OM=;
	h=To:Subject:From:Message-Id:Date; b=mSPAMAlDzG7YAcpFz8LiRqAm/0qVfP+eAET3w622SMr15+l0nRIeUYjgV93MVUdIqI2lrbN+oN+0T8Yc8HRvEqWdXPrWxnSR0m3Jjn4RK2G+DV3jjOCFYealInR8eRWNnV+XhAyIpVQiKfib174yAGbn17T3pZAGIPT1gNuwHqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTeo02Hz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTeo02Hz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B65C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764840173;
	bh=VHVPjDRlCNlfK2cUzFt6DmfMUb60lZeQ7d/UbwE57OM=;
	h=To:Subject:From:Date:From;
	b=cTeo02HzYINraiFbHGcsDzJrd6CvdDPpI6HL33ktUvmJ6Hgh+VBwk5yowaV6uZkcV
	 8F9gtTwmrHAtw5N8yRy3VEv+2lgNdpljwY9Pddepk71GSMN2tHps1FutJT3MjNGQpG
	 X6We7NbF6zMAtKF27qxdkxqiJnxCaYYeTVzjdHS3ZhJJYEWz8MDiIa6YS6LOsMHkV0
	 TBOiApLhc2CH9ge7XN1XbrewY2mmDJfkDWUoI4JJIfHgH5SOx8L0K9YcuY6DLcGNFE
	 OIc1z23xS4N7CWb51XXe7jQyzmJejuS/YrfJkRYtz/saYHEWXNZGxgSy/sVlCFNq45
	 UE7FJAkGwsT+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932B1D1D899
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484017358.3020.10981071638352889491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f66a2b52759805e44f3d0536bd3fc03908a9661566ea2c708668bc93ec3b951
Date: Thu, 04 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764840173
