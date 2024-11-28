Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269DA4C7C
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732759554; cv=none; b=kHhnOCOPHb+rL/q5prjd4lalwjt9Ns89mT6ZrvkXNufeLMwlyLpGSE+iCIsA99zdmFcyG/rd8OxOW4SVEArERfsFkqFoyki8XtNkxNO3IlSdpTsq83ZtQJCMkjpi2ox7/Mq4PEyuLFWm2Qt/TuuAutCo5YSyH+xXbW9rEpJ6eMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732759554; c=relaxed/simple;
	bh=5tYb68xQiWOKfBxSd+o889HSxw0G06DVlpTV/61DyN4=;
	h=To:Subject:From:Message-Id:Date; b=rMof/WYEKJlaRwrihIdz04g0W06nNWBqw5LBRLCgpJqiZ2ip0Hi4cJGBg75NEW/QPu1wIiETza8WwZwFOiZJ2lH/ljom4dsHOc7ACuJY+lGmjqFMl436S/dyKyf7CKpR5JeKv8epLvxibsBehhjjg+OnMnBjGPrksRkV7pfhh+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkH0LpWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkH0LpWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEADCC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732759553;
	bh=5tYb68xQiWOKfBxSd+o889HSxw0G06DVlpTV/61DyN4=;
	h=To:Subject:From:Date:From;
	b=mkH0LpWC32NU7f/HNPSseLrdpfHycQ7asMeP3vwI6qKEQIjDbg70GxNoBHPKo8sph
	 bL82Q+szpUIxj9+FIacHfGE4xPrXTTa51JK/hSw37tLOGEQP69qwaPW+eyskjOStbX
	 9faNq9BeTF8n6M8oi9cNcaWw1zIz2RtigRaH5wAOruGcUGnZAHtC0uIdAYfKbTBy1h
	 bdr178IdleGRIeMRBLzdd9I6kcUc+ss+Z13Z1ixmeoNr5oO+g32ng527IZtvtXZDMd
	 wYAlPwAHIyuKZtqTmTifJQelpJHOeFqQ1Vm/CjWCn5m18eMlJuZBRe7rR/hmP25N3a
	 R7vJzZuUHjVcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E09D6D253
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173275955359.3120.11990608869537880919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40052463d570e2b06f2d629c20af7e7b1ae11a7d539ebb9fe9c4735563e996a2
Date: Thu, 28 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732759553
