Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446224430
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743838194; cv=none; b=EJmQK8KXJsiEmghmfcCzRqNJOxAEW+kKBkrsubqyDs0tsRMMMuLgiqtyUVWejJRsBbR3SE/FrxIHgjQezFisY0oPWeWRF8w3T3TX1251eoHG4NTCiKcIenDCK5ohu0Zhib/YfLovJxaZj8XR1gOkBxsBfZ7V/IlTEUkQKQaAWFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743838194; c=relaxed/simple;
	bh=UKDjXCRlSw0wslXwYqhNpBQmwBExn2wlU5zOonblyWY=;
	h=To:Subject:From:Message-Id:Date; b=pIzlyZploxsL8YvbOS3WbDRoJagintXU6UAsdQB9jRcCKeU3GX13eV9Jbd7wZO1PctFsSAgkhxYJVuGPu8/V8vcYOHi8IbH8CndUkDZAimcw5hVt0nBTWOonLsRZya7dV7KX8kzwZtvM9LS6lWjbr0Q2ytceFiA3WiuhRfaMMl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZyCRmNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZyCRmNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA8AC4CEE8
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743838193;
	bh=UKDjXCRlSw0wslXwYqhNpBQmwBExn2wlU5zOonblyWY=;
	h=To:Subject:From:Date:From;
	b=FZyCRmNRGHImmp0okcCp1Hd54uUZM/027hLFGLUXifwSXcvkYf8KenGziFJOJGV+2
	 SLJMi+TxbHHAiZN5or7t4qBeN7v1w7XYWxDIH+H1U/JSycXW/uN8gKcSJ/HpyBqJe4
	 oqWMN5eTX9ttdm4noq5TadTNGdd+WoAeP3xoA+ks7IcdietaG/4PbcacvPAYLz0aTa
	 nl66qwPIWqdXM51n2fDtx1fdBvkobVSeyhKEdU43UcsYQhHQM/AIVX0I0WzJhbGg64
	 w0vMH/1TvvN8Z04/1/LsQX7Exe6HigODV4eSdOkgMOwPL0u8ZJGv+LLg9fiEOepUrO
	 gfXubRgzL5oAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AE1C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383819359.8227.17890001213677885444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d449ae544954384f4d048c109afe88559778292bdaf85e0a1626b4b9fbee350
Date: Sat, 05 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743838193
