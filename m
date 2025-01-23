Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E8120F09D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737645354; cv=none; b=GSJshkvzfVDd6XrWE5GQMVO5b+OKhpzdgYre8feTWs2YHVjCpJWm0QtlqWdDK7sDkTXHY5dN9y1Rs2ycJFjisCHQwIFeuamrIWTPoT+FE/Z5FRdhqMiToxe85dreRPUDnhXUcRxJHq50GzzAj8WIpUnQuDJX0Bd4gxEJmTP8/Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737645354; c=relaxed/simple;
	bh=BV3EC+ffAB68krqr+3YSMXIy3U7N6ALJ1SnuoKb57sc=;
	h=To:Subject:From:Message-Id:Date; b=U3SYh/v2x8QMQTMF/WFvfFasQM0VbUGpPjqbh0Kx5UFh5t/YkvKql38hTlecf7Lg+5n6VMOJco0jc7isWnkUb4zWu6Ggrl0tFREypoTh32VdHKeWytNtxBLz+bC9ZGxbenafwtYQGg/4coa8PMTOwclerMFGCbPzmEP4stH9KYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGM823kV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGM823kV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B09C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737645353;
	bh=BV3EC+ffAB68krqr+3YSMXIy3U7N6ALJ1SnuoKb57sc=;
	h=To:Subject:From:Date:From;
	b=uGM823kVMAsDoTUkK568W1hCEIHRhW1/lnnefEz4l5adn9NxcCfGDJBXaBxRVtfJg
	 D+jfRIz0JvcPyzyzY3bmybZITE5YQwe5A1Yd1O42MMzi7J+UxoZNE9CzOozDzgefHz
	 aJz/jKtqEiR3O79tq3FgyZ6iWxWDmh+q2924MrdEWhE70OJOp12nW2UKOi0W8LdSHi
	 mNtDPmMURs+6f6ClG5IYV7Y2Q6zbV/ysmRC8uX88eG3BZZVUeizfJWY6gu82ALMVtY
	 39pqB0gwETI8vAKXb+QfTZF2KRALUrUiXewGGGUYIAabldE6hMsPOfVf89OcaTfwib
	 cWxKFYw2MdPSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949A1C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173764535360.22874.13336478935496211206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4516c0d783092f894c3156782473b4d3c27bdcb78e4f5f09aa883752f2ec81
Date: Thu, 23 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737645353
