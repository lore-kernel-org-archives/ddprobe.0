Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8221FFC59
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747300793; cv=none; b=GjzbCRkmaG/Vd/6qfADKXALqGsp25q1yLyHDEdXZDTvbiT3y97uJkhXh6jebCfWnexmE/0GOynQ1s240ahHFipOyYfPVlvJC2mw8PVRB5/b5buWla180uaEvaMKKUF9t/cPpy+79/GyvheaV14uZ8LzSdBgMmalNtQLgUqoiWZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747300793; c=relaxed/simple;
	bh=DhCAetk3iCWsM2N1XTz4d5AaVpAOYlL/sie23oQ6KF8=;
	h=To:Subject:From:Message-Id:Date; b=HfunWABsixdMSyFpx36c9ZqUlIQ6IcQt6yTWsYc9gVnLT/Hlc8Zagc/6KOIptU4HKHNifgLuLA6rczoLMDbVlZ6YyedadkUCs+5zDsoSoeOHDqJBiUnf/plj2rD0thAlUQs9aDU7BoWqqfHUX92t1gVzmaURCHdBoBqdjqguJmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHgTbbol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHgTbbol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A360FC4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747300793;
	bh=DhCAetk3iCWsM2N1XTz4d5AaVpAOYlL/sie23oQ6KF8=;
	h=To:Subject:From:Date:From;
	b=hHgTbbolubZSHUfVGh1VHtOpHRRm4vkJ8kk+jBn/NVzZwANzNzA0ISSoGCe2dlCQw
	 AfT8krLAsRUlILAKxbwhoEdFIbMi17zVcfqKauHhmQnDwjdgDo/rnxotq07wXlw3UQ
	 NthoimEcbDmy4mALQjbmIVK7txH/Rx2VYaME68COp1z55Cqh/vgfEnxPms1b3tPPh0
	 sCZS2zWXLdMYNGWQnN3PCJypZpWBv8kCfFUq4ydCJOrctjfGVVzmE2NjrxKVeJOUUN
	 9tHjicpwvo0Ug+9kB9bBSmwVNWUeunz0tSZiEWc2QKyx/vXkXWmJiv8h1LdYxG8xrA
	 CV8iHmknhrsdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3ABC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730079357.19165.2281942410506855350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455bb5c78d2aa51fd2ce5d5170e1dd94c88515741be7e9f4eda87803914d8b27
Date: Thu, 15 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747300793
