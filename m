Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E5413AA35
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734681954; cv=none; b=R0P0bkkSr6MG4UXPgf8gXLOmdnUSeSRO8/d+J1kZlY6sGE3Dqtlk4packONZlYVFU+HEpdq0KnPqxOOLrI7KxUPBzFF5I5H+9p+IpfjD/uHAQjy9TL+3Eu36t/PFCd4jLbZXrgUUmdIdtPsaMMoxDK3azt+t7vMECais2Rb0RgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734681954; c=relaxed/simple;
	bh=/5npY3jb4j/dg6EjMBl7eF63bOWKt0oZllZHcL0J3zE=;
	h=To:Subject:From:Message-Id:Date; b=tHC4+i+qe+7CtG/YAkbcwzkIZR/UDV9IqMRuQsntw87zonnhWld7f9kfLC61oAP4om9PQ2tFMnqhWNfqvb/iZyf8+/82743nWVB3ncbO2okjbW8wBIDSudIyFZc/NuoH/asqybWdBpu7JrS1s5d4VIjmW5XStmoMPoYdu4Xi7/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdFR1T0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdFR1T0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01B4C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734681953;
	bh=/5npY3jb4j/dg6EjMBl7eF63bOWKt0oZllZHcL0J3zE=;
	h=To:Subject:From:Date:From;
	b=kdFR1T0wcPd67vZ8OarvJO8IzUGHUXSfmDMV6cT5FssbChC9zjo/2BmHwCGWqplox
	 njv62GY7C74dyUiFMGBJ5bsquHBg73UIn1qyYpltkWPCff/7AfYhkjTzM7f4NboNSO
	 a8l5yBbOusXwm7YvvXrdnivMvPrOPnczTuVXcH+ijIgIYSwpkTY0r4KRY4UU/Vgte3
	 XDAha9mtpL/UKuL+N1fvtcYdiATkCSY30Z3PSEGkohl+fmWZEaRJzRzEuBE6A6LG86
	 71YwjqzPLNKM9Do4SJ/oB0/tOMDfDqc50tfDGXA2y0160aW9lz3uzNm+kHVfS8Fd7G
	 K6WB8d1qHWVbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CB5E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173468195360.5581.12050338554691112775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb89e70bf16909b35959c1e0e29851540ab0bbbfe1eaa0aa35225fdb58a4197a
Date: Fri, 20 Dec 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734681953
