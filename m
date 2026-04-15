Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1433D332629
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776244654; cv=none; b=fiPukdC/m6670lrlgdtDU8fpQNoLZcR1lPVr4qT6eMkhh5Mo2C8vU8RPvWc2wXeOMlfD4B6QMUCPKyrQeuWBq9qj1u1njtToRO2DCaaf42jGS9uFcfHjQQEpp9Set/bClumu9dWPPMeT8hI5NXquRcsaEA4EhHK/Hff5u8HMZ9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776244654; c=relaxed/simple;
	bh=+WUbcnVICND7zViLL0NHbSZ6dHQBpsYYIw/Y17d4kGE=;
	h=To:Subject:From:Message-Id:Date; b=VQHa8vey5a5xc05ZPppyhMRcx5hcH7LOf7juxSW9z5Gp4a88sAUO4h9QIzMWjkyanIp5H+fF/UVQh2k2NKX1TyPiau+QYWyAHCQCsfzANV5hlbn8G0KfVuqPYda8xTkieyIt9sxNMFFf1o5BtlJY/xyItxHBEovFY1G9RVkLwjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3Mxvtzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3Mxvtzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D8DC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776244653;
	bh=+WUbcnVICND7zViLL0NHbSZ6dHQBpsYYIw/Y17d4kGE=;
	h=To:Subject:From:Date:From;
	b=O3Mxvtzjmiy/OAupQDGSJtA93TY6oOd3VGqQCGqlf8Kh3I9bc6kzk4MkJoaIEPGx3
	 w+bUFwjBmwh0eXYs7x05hUG5f9bWxWOTywIpvV6mmDF5b63oCNYIy6ALtz6liAAGPA
	 X/4z/UQ1eYOw8eyZ/T7OhGzsejaafHKvKqLPl6ikhJTm+6uKPN47zBQs1QfoEWNkmu
	 zXa4pBNR6DSRWBpUHxAJEqWHVRP67CyaAuy7G3SfzNuDvO+WoO9W6248XSW1Fv/Din
	 TR9HSg8buUyzxr5oRVk5HxkoBSEk0gvJ4VFgpdYI/8v9vOXApZRW2WCE1V4jhf6q2V
	 1phwPNN3uXOnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F5FA0C5E
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624465368.13820.3828708006912516847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728c4371727faa5602a0504ffb797e980c21ef74b18966230353ea2a988dd809
Date: Wed, 15 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776244653
