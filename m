Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6648A18C199
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721054063; cv=none; b=cTI8OEa+wp2JettqW9f3HcobBrim+NvCW4GqzAvhs/haXPLzW9VzVJ5GnY259tT3JE+w8JE/vHetj5y+zTX3sUGR+J0YHwen8RaApF2E/ZbWQjj0axRRgWo99im+b0uTyuEEqrXfF/nUhbwfEXBHSUXrWug3HQjpwvqr6KqUmBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721054063; c=relaxed/simple;
	bh=YZjdAmZIODIRM47qCmlDN7yKtk/pbW+7eBlVvpbvaE4=;
	h=To:Subject:From:Message-Id:Date; b=DAf4RM6/nuZ+zZQFHQfBU4qW/2YaC03snHK8w5IPD7jltgYnXR90YahWR8TBprlvg43bzPVUx7rDIoJMq8mxuoq3K/WqpY//Pa0U66g/8ZzHuFX/ZSFYRFhqUONpg5xTLP6Na5iH5SAlstych7JeSZ0NGNtifXcQg6CCQzZKL+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHIKXPID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHIKXPID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2104C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721054062;
	bh=YZjdAmZIODIRM47qCmlDN7yKtk/pbW+7eBlVvpbvaE4=;
	h=To:Subject:From:Date:From;
	b=vHIKXPIDOq0jtd9FkCqu4fPyZPrX5iFFi+82aQe6lPQGXQBiNKAhcN+B8NPJI3NQ/
	 +P61ZP1HaGPSQJ4MvS37HGkkGEWFH5WUDMLFd6GOZa+0UNnq/ZadwHZntTXJg1/fQ0
	 Guv+6BWZT67wl9cJ0deJCSBes8Af0GqHUaEvbNQKuk3Fwfok76Gql8e7bexGKOpLDq
	 3Vb+sJpL2UCqqpMdAWTGl/RpsI+59LI+AdJirXGJOtchoIhvoXRuBEPKt9zNvMvWhP
	 C91wUeo7ZHv4usnBpui1OCvRN+vLs8FlZacUL8ZlAxhQ6saRumMDiR7onYwpRRTuv/
	 b5YPvHRwJKKgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD323C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172105406282.2444.2672321023496475152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28e8c24e0772ea0d072dadd1ba45f7c6a0648e8a551022468617df36f2e3f9a
Date: Mon, 15 Jul 2024 14:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721054062
