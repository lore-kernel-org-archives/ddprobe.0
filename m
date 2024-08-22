Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1544D14EC5E
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724321754; cv=none; b=m8rQt4dkns+hYrZevYOZhgTmLe2gpqvuf+QFdFV+QPnaDtdSTRv60K6H98+SP4BELebasuM1ZzSNulMMRLSwCEw7tMj+bEXoT2meJghAz/9AWkB/3KmNtfTHus3zyip2AGuKvpWmHR0VGs06/xpqtzJD8iwWYd11QUJMORn4Jbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724321754; c=relaxed/simple;
	bh=wqe8dvbMMpoQDff9sMhxGjI3YC/PeBQ9qC06zuCldRE=;
	h=To:Subject:From:Message-Id:Date; b=SmzNXOkK07nTnjS7dzfoavYNj/fkWXd6cP/WXJ6H72rUJErV5qWR/aiFVc97VuGTUnutziS/tftbLTEhrz1rAGpZ4rapLGB7k6FVoKBNyi9i8PsQZcCAcYUFew8LvFfVR5o6ViLtXTb+ybuMPFx4zdQTRxfG2z706negKEopuuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aT0jOSY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aT0jOSY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99AFC32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724321753;
	bh=wqe8dvbMMpoQDff9sMhxGjI3YC/PeBQ9qC06zuCldRE=;
	h=To:Subject:From:Date:From;
	b=aT0jOSY5aZeJ0RHrwoDuarS300E11jfyvvVb6o2E1PFZ07k+tcNJ1zkzMmgig69KB
	 zc+dLSqqJKetdtIsaGaTBtq4CqxEccp7OyaDATJzxjGv0+OVE9zvNjpCYEkdLXFlGN
	 x4s+s1cSlISeFTJpQT3ZdhzLodWSx3fHzw1EQGkXFvRYKpJ/Nc0rAmpAONn10IeNP9
	 ER1/l+eGPmnvfllC6EQD6SyZhF4vlOYDwE66JRDHkLESMHP/AXVSb/fA3+1cL9twFc
	 8eCSGELSD6DzdzG/KHUpSmogj/jK7aoAyteY/13oUfQ7mJP4NUyW9V+lNsjczf6LSN
	 LBjhmkKKb/CQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987CBC5320E
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172432175361.6956.12502787305519247860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efaf815fbc3ca6460b55e1a9f7e42b6d3a3c23acc4c6a52e6201a07b96ac9826
Date: Thu, 22 Aug 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724321753
