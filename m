Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293802A1BA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750297794; cv=none; b=fz7yG/WvNoryu8qPHsR68a6OQ0XfxXyKg78Ab9BFuVr1d4AZd/pcjnnPhcDtNGesi6V9Q0zZDDw6vQsyarcYOrgck1kqeq6m0DGjJDoieVcFEVfu+f6gEA8CHXg/ifZaSThA/KRNsNaUCFYH3EliRGXLRDSyhS7/3PX1matpt9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750297794; c=relaxed/simple;
	bh=54XfBm6BvO8Jsxoa9i3E5rgon8MYTS6vBKfM6z0U3yU=;
	h=To:Subject:From:Message-Id:Date; b=Ua1OlWrwvuDpdHHUdVJINdnL9klCZZSJKcaahBBhGVgTUcLUPGJyCDCDvr2do5OqdgLIZJdRYBN7hKyl00/zrRXSKExo0oYsYMh4c1ZmmPjSUiT+DqNb5UmJ9F9O5q8VLLP/ynqEzhJj2Ht3HuUWZwjWNK3NcmgllhrLygdgv9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n77TQTXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n77TQTXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7321C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750297793;
	bh=54XfBm6BvO8Jsxoa9i3E5rgon8MYTS6vBKfM6z0U3yU=;
	h=To:Subject:From:Date:From;
	b=n77TQTXo4Ij87WsCgNJSrCqFZ/MxqnhRJHkBmMOjXBnsLFcRCqcrqLteSWtw+jVTy
	 ezIe4I2wAE8fybhrPqKLBYc01AHqDlY2DRYxvFZDrmYl/ZQef/ruZNtlYK/uqTk/U3
	 bYdEzzA9kLNtLrSI2KAH8W4tdslx18mWf8X5LboEeTDoKvfE4fmGm7OMY97TI+bo4h
	 kruBEbQan74O+IX52Rw0ftJnNdwmIr2JyZ6NtDKvHBtyIYIp/ZxcEBezziqyaInk/A
	 u6gnbIsFJuuiauIcbZiyEY0tXT/oo2RwjW2qH8EwbjcUiy4I9UjeXZESmHY0GzZ2Qo
	 EssIrRjfYH/Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92703C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029779358.16058.9330252447187407026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204a3251aa30deb07ba6010913e6f1159c42f1840f32d0a627a0b83bb5e6137f
Date: Thu, 19 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750297793
