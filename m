Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C61224AF8
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742467795; cv=none; b=q5Skx2W79YpFqGfeCoJhqf6dQtVeMW8McOhiFaYsB/Tngq44MTT9mpd7KYBMwpjlGPuKwt8QIixCt/iLuVlmdbW7zkfEQz6dua5MrhYhmkuV0jsmVVX0FZ3QyqUhZ0x2e7Jwt08KeIQFvY8k4xv+0g/521BpavJeYLH8bWle+vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742467795; c=relaxed/simple;
	bh=p/k0XFmWmovQGydjtsWTukYF0s8UZBkoXjzhImGQ0dc=;
	h=To:Subject:From:Message-Id:Date; b=rEpejr3Z3BRnwq8E29Aa+EaX0UrKvWDk/OrALCypYvvKsJ5UgIbZt9zY/5kwcAW4M4a6vrCupO5DKmj7zu7FSlHJQeap37PBA8Yvzfwi91CDAwHKHGTnCn9beqByWmRY9WxPm5Cmof8ALzhgO8y2sycwpFxfzylAdh8Po3HPD8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kL0a2Eyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kL0a2Eyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB76EC4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742467793;
	bh=p/k0XFmWmovQGydjtsWTukYF0s8UZBkoXjzhImGQ0dc=;
	h=To:Subject:From:Date:From;
	b=kL0a2EyiwDMd1fyK8DyJJP5UGILmYfxmZM26TsB8IvXKH77znc0Im+DANCMgDSPZg
	 JFfaN24euO5jwtt0sTeMBeYLH53QLHwDfayQOCxN6ZLEC72kGgubaV7L/iu6hEpNrb
	 +XFtwLCSAHa6llO79rV8zZHM19ojwK0xHhpk4g2NqZF01uQImj0xY74Etgd/zoqMyo
	 QXwSrmm6gVOoS0EMiuXd4hyPceISEp6KAW9Gx051lMg9aMMGskOCjMIjHxNQkU0CNL
	 9BY8pva94GFX+/9dZ10sFSfQF+tjh5V4xNhHivjruqXMqQaupMk1UM4SRUV6zp8ArO
	 XdZ3KD12LLlqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CCCC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174246779365.1436.2167101826409760621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca438babe27860765064506074fcf31cccdea1d3508750cfac398fe20b2e0346
Date: Thu, 20 Mar 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742467793
