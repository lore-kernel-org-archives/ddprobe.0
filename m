Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17080249E5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761351594; cv=none; b=HhENUqks8esetlEcuQpzd5129+JeEFsvkdT77wLYR6ocborzGP4xQ+MV90Jq0YaZ+Neu0UwJqiHHZk3Opvj7fJYnQ7kh12FifAThmn+cRKKOHst+mqlGoFxLqDeBOycX3vTQD2NCDKN4m5/cJ4ZEP/tYjvzyOOpZTKaDBkXG/k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761351594; c=relaxed/simple;
	bh=c4MRs8AJ1465MwcW8Spsfp+uZYdKP3SnEFaGdFGlyrM=;
	h=To:Subject:From:Message-Id:Date; b=BJGJMEWVOGbjnPHuYeG0aR+q4a7V78KNSQYzgvTciB/zvyvVNA8mMF5YY7zG/XMbw3hJWfiUkF85kd8qUJoMiX42BXwT1QHeVu5fbhuggNc3F3AeS05iOj7Pkl0j36IOZXBqTVchHnRu6kuf+1gchTfLXXay3Kkdg3n+w97qHro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d16G/l9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d16G/l9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E27C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761351593;
	bh=c4MRs8AJ1465MwcW8Spsfp+uZYdKP3SnEFaGdFGlyrM=;
	h=To:Subject:From:Date:From;
	b=d16G/l9+C4YFvyYSm9t+GwTcJFZjIIF34Z72U21FibDHAo0CvMDZgHwEXz+sh2e5T
	 5nbJwV5rNs552lflv4LOHRE99tXF/JkL25Solbl1V33NSM1Vrph5+jS8QAVeRaxdpf
	 gaXgn23YJbI2aSqUazZX1xF7SBgjbnPwSu/AMU4j+POsMnIeLOYyWJZinLO/VPUfJH
	 za68hugo+DRhkIFhLJduA+NaaP/97z+SSPPWAT9Xz905iU2NLn7ON1Ts1iEdeBDC+U
	 QkOTh4sJA4QgV1bgp5WJOtstoN+4fk7QeFfuJP77cBMrS+yZdJnmYrVh3bl3XJZ9c4
	 AhLklDu0aX/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F4ECCF9E0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135159358.13060.4508486289852405193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ebba951e065b5759d504f1afc2af3992c334e4ec62fa7d4f1c7518a3248d83
Date: Sat, 25 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761351593
