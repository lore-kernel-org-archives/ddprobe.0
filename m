Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672C417E8FF
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 05:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716874463; cv=none; b=CCU9Nadta0YJL5ncF9equqziL1fHntjpozyaLnmRZ3texmetrCYPYG2XWI3zDb4o8/ohTZEqP3ByiVW58bDulrs89vDh7TqSyFiFwoIjUZu1tSTy9mGrpBhJIzXJqWCZLYv3kuGLqTwvdibj52Qwu6s5a6Pp0kDv0lmYA4Mmi4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716874463; c=relaxed/simple;
	bh=kRS/SmttN/N5Lj8cYiIBX80Y6jR0eX320jxOWonHj8U=;
	h=To:Subject:From:Message-Id:Date; b=bsslB+hGyA0oPMy5/br5Au1iXwLccV4SHnOG1XQTlSulk35RHRF+evLVbBbJ34Z8dbetKQGCV5x0pyTHhJPlhHoWCD5E9bBQLnA+iwW7IcsEqcIhs7nEtVjormhR4Ymh3oNT8sstNTbqP9+ySRA9K5qfwZTedN6TsSpV8SI7oxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfCO5p7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfCO5p7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E85F6C32782
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 05:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716874462;
	bh=kRS/SmttN/N5Lj8cYiIBX80Y6jR0eX320jxOWonHj8U=;
	h=To:Subject:From:Date:From;
	b=pfCO5p7FBjiMLAQe8dRGDQ3/iF69UfmT66e/ELtcSdTzomP9265IjpQA7iuK5GUUm
	 zlNFzuM13rwOKCgO1M7Tds/rwe/v784ZJqu/PsYLZU60ziexXZyIoTin0Rzy6tUAzr
	 55hhKIKXPNzcA0FQpCOx+HeFwA3mVvIXuEyXMy/1NJ6L9opRGMwGFOFpbylUia3SmW
	 oErNdsgFu4gmI3q6qwrMmdjOJB/Y18C0FjfHkVdQUPyNnUI1OFUa4rYxbT/s5yLtfU
	 lOGMCJ+vqXOq5o2q2L1f7+ZB9cGksWV/3Jzkc/2qKQZlURBNhqdpVIND33d3X3Gyml
	 3ammmGoIOh4sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3284C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 05:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687446285.25971.11667402916180795232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda3de68e0ec9104ebe3eb640d7fc5b1c04a00c5a7e2dc07f83ab6f799ef9310
Date: Tue, 28 May 2024 05:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716874462
