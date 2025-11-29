Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B691C860B
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764430974; cv=none; b=qibGrTrR+Ylj56VBs0FyY2tOmFXESTNY4KLN4L4Kar0yrCLJjvd1Ndxaol8xasENZtandinhFFigdp0rtNfSly5ij15FKg+O3iODcR0yCv+QjOJdbD9P3zbPxj+tqNAt1bVggeWtsZO/7lzU58+hvVP1y0JvfZ+ThF4RqqTvpUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764430974; c=relaxed/simple;
	bh=dQtVWZej1CTsY4OEjCm3w+dG04MC5ON5j1gs5lIIkYk=;
	h=To:Subject:From:Message-Id:Date; b=ihlZRmZLHIxZd3ECvdCpvM71NaEHMiQcpZCy2zg0Ch3C3QOAs74RDt5Yajy7mn/N/Tpk5EK5winq/QwJOW4Ory67vBOtVP7eIjkc5rBo50tTsokysQDSsbisadvpG43VGsWYRJpO0xLa0BqxRfUaV3zypQj54ACC07+Glfm5nlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNnVnPqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNnVnPqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DC2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764430973;
	bh=dQtVWZej1CTsY4OEjCm3w+dG04MC5ON5j1gs5lIIkYk=;
	h=To:Subject:From:Date:From;
	b=FNnVnPqi5+dDmxA+SVgMWPOXoFpVo9E2zarjE7Bs/ZKPjNykXWKMyqHaAukmFKDmo
	 DrnLFiPj1c7KtL8qkxtUyBoV790P2vfNXdebTmlY1F/i8d1nokuChvKOyVzITMv15c
	 cXGvrX+6YOnN3xbT7+wgmjl0ikQlf8JLokVsZFyK4utHTRP5jDxqqbGDCG0uWJd6mL
	 RdRZpB2mu+Tit/j31LmVQGaamE1Tk7M+a7jsxEXA7I22iu6+dvTDUOihO/bEWtqvrT
	 kMo4Y1Cyo/r6v7dIa9ir0LOThNMqDunc3ghngV6clrczHSFyGYw8Mr8U9LXrxeNEsM
	 FMFis0Pc/sTkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C5D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443097358.8131.8364441539143879511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1964898d5a15ee5dce75fda19234214aa8bd8bd7a3e40999ebed40bdc699f666
Date: Sat, 29 Nov 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764430973
