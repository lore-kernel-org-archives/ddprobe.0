Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307A33FC2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748580594; cv=none; b=U9JYuB2fiRV6dQVVD+Y/og7fGCEA30W+v7XJ0uZGlU3kjeZ4zJVlIGfDdx0dWd3epQ1EVSXB05GlpW4GTDfXDK1Nt18HtkcYYjETmFwrTzxU1sLaAHHLQfslZ1TFijQO+s4JCOteHyLORcPCXwvkv8BuA5lyM2epApMBmSTJOXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748580594; c=relaxed/simple;
	bh=jZ0DxHO2kdPSruzDXhiRjzpNxxAC3W2a4z5uJoISsGg=;
	h=To:Subject:From:Message-Id:Date; b=sGepzSvjU3iVB1VaIkqpY5mMFlQvH0OjoqdtiG6e6zK2j/qKGMw6yce4CmhtShEP1LKOAGX338Lr1tMGHxvebf2MmtdFhvGPxpPYEA5+SMdyAKEJEGUDR/OYZj6TNuh/otM/MgM7SoxIlJCBfjRDZwKryE4xDmnghUWL1zt36ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ql+1nDSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ql+1nDSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E7FC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748580593;
	bh=jZ0DxHO2kdPSruzDXhiRjzpNxxAC3W2a4z5uJoISsGg=;
	h=To:Subject:From:Date:From;
	b=Ql+1nDSay8baOGIRNyBYUXNaT2PIWwbjOzTOen1Ecf209XgBjJ91TafeZyUGEnTgs
	 AzSTlR/SjKWC5h/ZjDmNp3EBNy6Kjxz6J89DAD5TW+GUwBlhB4PpiV7zKkp8V+rdmq
	 5dB8birn7yx+gUuE/g3WOGIlsVWzm+5FplgeWCQAgw3+FPWQdxuN245t6/flIMMKXL
	 2AbT6ftOUiSeAgs+7h4LzqzgNB314jtKZqaxx/DBuQOoK9rpuClpSJcQgrlJev4N9q
	 7KWMugxrrHBJoTtz/2EVLSc/CLk2rDsqVzFPskAdRIEAjLzRQ7F4QC3n6AssXfHjcd
	 iBP3szrOe/EAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9013FC54F30
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858059358.16669.11210010878013119686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb87cac7db0eb9add50d75d7115010dff2d2066a8c191b1a4da582b91132521
Date: Fri, 30 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748580593
