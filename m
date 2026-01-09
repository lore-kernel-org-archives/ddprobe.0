Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E1733290B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767958434; cv=none; b=Lp0zyT4h5H7XpOYeBs/2JSzMEAkyP9gEjt94upgY4grY5ckUaqT3MjxiDPRVg6/R+rWME7QzxoffdH/VtTVpii5UFvrHHeEwW409jaeYao4SY5PA24cKt3JwWp3s561XH/NX8MkX89sUeEaeEaIPdL3sptdqpk7TToNMjZxU8wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767958434; c=relaxed/simple;
	bh=4wCOO0QkmgsKmQW6yVjz/e9lPIWbLU2qpr2jsGkvrmc=;
	h=To:Subject:From:Message-Id:Date; b=AFmNeJjjQNdxJ2qXbuKngT8PPsvfkPzv8hB8HrkWPnTzr3GNntyKkx4EtPwnzePgqWtn0r9t7OKyQ0Mm30NCUMsSzQYFJ6UhCmZrzySU5oiu8s8sP22kN3Av4kgSVTzDwaNwenttv/1dFlm7rEY6iqxWuDhvOk38/acTjBSv8tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJm9DblN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJm9DblN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2783C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767958433;
	bh=4wCOO0QkmgsKmQW6yVjz/e9lPIWbLU2qpr2jsGkvrmc=;
	h=To:Subject:From:Date:From;
	b=WJm9DblNE7J2YLZwF2A7jFM4keh9rLHRNqYenB1kHrHQteO12Q/g/LdhtWgUJhT5r
	 bq1wJJ2zBW543mTB9vOqPW3LbeMczsD1eEZMETr862rvWmNxpZ2TLTmu21s6qt3BSz
	 WRTeJ6bvHYhA4KCnQ63jrzWY9iPD4mw5GHcE0CXzuHneGimXwVrfccecs3KlfquJoa
	 FDJqUawXUSfWTnRIkk9spqWPxMSyUejU0wO3LvEZ6GZx9C/6Hh7FIO/d9m01RyTfHX
	 +fPeNMhDGJ5wOJ8dAW/TDBqbK3Nd/Zf6UTyT888bvvZe42NjwoiNOlwK66vQlVcdIu
	 6m4TmX0w4wIxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F02D16816
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795843358.11366.4475398993109541440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8fd6fe3dbcd998cc6251faea55c4c7b1f06d054a483a1c3e4a737f164abe7a
Date: Fri, 09 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767958433
