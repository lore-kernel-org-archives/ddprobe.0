Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AD554763
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765549374; cv=none; b=KG+zhUDbfPv25u99rR8/YZ2eLqUNu49HA/qdOMFmVOkU3M41au5bGTvukWtR/fZRhRhvIiPxjYvVAWToMLpifQwtc2RNAs67ivtkWc4im5r40kkg2kylWrxTieueHfzXPhNmV5OaWyy29nQ4ExPIO0be5w0ShUA4GozOk+PKZus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765549374; c=relaxed/simple;
	bh=SjJOCj+Mtngkm7WbSFf8dO7SxXPsjbG3iF0N+PJfZok=;
	h=To:Subject:From:Message-Id:Date; b=OiLXaLay0DYXOGlWviiAUdBkt/pwFYfW7+6KPomeXDAfa6+uia63m9u+usIOEXu5L4PHT5jollBmxH18937MLHHvxdiIP3LiIN7Fkg+4bTkrGRErjsm0qgsNGKqXYWem6r+SALFIFW5V+N/WWp7OVkiCXm9UidqUP8trskZ6RHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeZBvZ5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeZBvZ5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7435C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765549373;
	bh=SjJOCj+Mtngkm7WbSFf8dO7SxXPsjbG3iF0N+PJfZok=;
	h=To:Subject:From:Date:From;
	b=NeZBvZ5fsFgST7iM48uWxg4tOuUUwPxduHHCHLa7Xu2szny1v6glBDM11o2jikSbD
	 XkYLA3z0jX29xjrxdxe/NxD4ghBG4K+LOZYEgnRYGqlvD0r0vj/FxATH/XapYmoeWD
	 vOFVX0rxHcPz289OjxmwJMQz8YgZF1SVxuihwZXKgOtno4HIAg6H/VB3J/F2hFV/y2
	 EoysZa4gXIDfAwaIp/zKJk7nuuBIjeoGUwZtHdxZC8yUpoYKlvM6oO3NYDSB2ekAIV
	 xb29vQUt1MgemkpolvpOC7xEle/h7xxzLMzEnLqW4ib0Cdz+8qaVqAGebyRdDETriC
	 u9foFx3ZdVgKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968CCD49230
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554937360.29678.2150211782538909449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59bd966ff47fc229f9f19481fae472fb399c14e781a3f680220a2ab373561901
Date: Fri, 12 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765549373
