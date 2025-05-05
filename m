Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DDEA31
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746403795; cv=none; b=nDmq/DgCj205oETtpLOMiM+DyEjXx5sGHayDqWzYOorW63zEA+3gipiMPwtnGzC7dBZo5y6+WYOKBODrYkWCTSUjJlOeftY01GV8m9ov7O949Jr/fPkzSAD9GThYEFqzjLkMbh8+tA7KZoApZ4obOqE+hhEALBlYWyNPvFHc4sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746403795; c=relaxed/simple;
	bh=NojfXUnddcYYdzVwYi4u5yJRKZCfYhQUjXbYV1syr7o=;
	h=To:Subject:From:Message-Id:Date; b=B6GklZhL+eFkD7ugQm2fP54znT6auY5DGQMTAps76T5QrdiHDQw24lquAiL0jpThxQIAFL6yb5z4Ft7s1inEx6Rd1w8hNVTdPDjn5dsVJWBFEYXZNF2XKTV5pN8nWqsgC2jRdySIGvRTzSO0Hn/jM1otMRtx09VfhQUCzAXkdoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFsiQAOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFsiQAOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BB9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746403794;
	bh=NojfXUnddcYYdzVwYi4u5yJRKZCfYhQUjXbYV1syr7o=;
	h=To:Subject:From:Date:From;
	b=kFsiQAOcigYn09jTm9o0Jf5ShGoKAaKrQJDmR6v4hChj3RzyFBEGadRTwH33C7sb7
	 BTS+o7WYfR4FFRiq+9uVlPS1fXHrIinFii1f3/AvLbGUhKhJ/D0HQ/YAFzODRZPl10
	 7Y2836a8r8839S1DKkt6HzbGvZSJVBAzPp5BeUyUg/2dqyWkBERXTq/tf3h8c/cGI+
	 0toq3sVQzFEd2jhE5S9bwoUFN3xcuWptrnTilhxwUs4k6jS8VhEoLa8Fc0z+55MNZn
	 5MYcccRrzgsEY5lonSYEIfz6RdvB/RTsayy4mmN3fjG1QWzmgrLZuP2rtcUmMhOTPU
	 /eQSz65Njqx6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155AC369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640379357.23050.4973089466370499724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277959678c860f230085405f298a6cd4d36efc6cdf04d640e94acf307d335ed6
Date: Mon, 05 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746403793
