Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4409623CB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759551595; cv=none; b=b1RfSLD/4kNiSe8q8QBK/OCJEpivgznvV/751Fp4Rg1k3xU08qeuv5okibO/q9rJRnR+E4Gnodcnbmq7pCWr6acLifvHsUfp6c05lDCdCXqyA9N92NgiBzGeuhfR02YVKr6SJbF/hXtP3u2F6ABFuP+h+TtacJtdQEMYmiQAl8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759551595; c=relaxed/simple;
	bh=LopcxQC+lEshI8pnnhEu4DLKsFjIArjk3SAskV3oJ6I=;
	h=To:Subject:From:Message-Id:Date; b=C22JsMLfBzGb6TYVuC+UZT8KwYxK+fN2Mus2XAG1aseFc47pS71P0dGq3ZecZULRDcGOBwJLkqMoA34YGTeYfZtCfdvUt5IfDlucNBPLTXHIMNLfRG3IgGDBvCDxQrVJuQC8W4WkRjd7UeXZgV5/FYxTsJjJgMK9c3UboIAvdlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPGIca9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPGIca9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB815C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759551593;
	bh=LopcxQC+lEshI8pnnhEu4DLKsFjIArjk3SAskV3oJ6I=;
	h=To:Subject:From:Date:From;
	b=jPGIca9EPBQiqWG6KMGvieI+haB4mubeS4BXyQLThOqpPKkcVZjGvD7zu5kpufqTO
	 nDK4RuqXoXBB0V9kWGYml5aODg2qH+kM4/RZCpF06udQr5WUMF2b6C5BLH2nMWg5r3
	 TJrQIu7BrUDc6OKSChj9T6pg2iO/o3uTlTg3AVTvVaf5pcq5A4V6IukA+m5wLJvM3B
	 MM6vBUpxDd2oK4AfnMii7BmdprOMR467sSx3/xUGPi9mk0kW72emJ2sj2jfL35f9cS
	 6XZFvuH7y9ECHRSxl4s7KTm3Nc39nwgw1hDwYl732Oa+RtnGBjyYRdXnpS38TgpNxX
	 A1sxolnl9B77A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98943CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955159358.17679.7876451605218739027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e782f5315d2bed38be76a62b06eccd4b40c36a5f19bc22bf5db5938c4b58e3b9
Date: Sat, 04 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759551593
