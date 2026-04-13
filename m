Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389C0189F43
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776040054; cv=none; b=KoJ1+6MAIq9ZItY11O+6W53MPzgfHoYG6dMe5rbOajs3Hd6nHvIC9cZUgY57iFcMfEiLpNrvyqCpy3aDUkIF35iAPt3+YMkyLZHmSHhf5WfwazojuCnTBmcDgLPvqQmS7gGEWbbnMTSuEwwkD2yKH6cGwSiOVhH9A6/UzueEpos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776040054; c=relaxed/simple;
	bh=YPFE7QlHXQb9RUso/9dIRt/72v0Hh1eJsH3HJwo6tew=;
	h=To:Subject:From:Message-Id:Date; b=i2hwgccBL2fkAcw9jrA5RWGwITTn7NxaKYMPVNScWVmZgZx6LhDCFI8dpbf3qy9u7dR7HgjsBxKo+PGVuS8ngmq++EJ50dsqNubBqCEwQOkhja+A8jm8HQy44Lr+5OTT78EiuiyQRmSpR7AEbkFke4tcyeuIn3s2axPcWfr3To0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxDSU0ip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxDSU0ip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C4BC19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776040053;
	bh=YPFE7QlHXQb9RUso/9dIRt/72v0Hh1eJsH3HJwo6tew=;
	h=To:Subject:From:Date:From;
	b=JxDSU0iptlDL/3F4Peltd4LYMd40vsGEFo1pAS+ittihTDAsbiMnz3fM1fNyheYA4
	 fR0aeg5uskDfEySFX5bWNAptzZnKuZWS8JNoN1FmjpWP8yGKz1nz71IvUKRvzpTjJd
	 zOfMPy2lyObJCYHY9Zq8rPIr3hirWfvKceTrch3G1iUYH65QOyq6g7hitkGLWqWtEz
	 fiB9Suq2nwQClO/DuD0hZmQWeDntIshrb3apNK/egw6i4BgLOWuW+tBdZZV/DkDl7U
	 Q+VNuYN1+cIpdF6x2P8IXx+ap091/7BwQ5v5nGJ3CXJ+DNdeIir6d0N6O7Toi8knJE
	 Vwf30lEWfY3eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC862E93808
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604005368.12132.14200838402780441882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf6e51edcba7eae41b76ced491feb99624cbd08059603d0ff67f929f28bd0e3
Date: Mon, 13 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776040053
