Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7EF1CAA78
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792023634; cv=none; b=ri4zW3WO08DaXT7GdEzqx+iyLOc175p/li0qnNUhwE+qPAwO1cOH0MMYFt9mPpLOtyK7hQKn9w4QvnFCgoc79QzW7Fdo3Z1e9qjRt1RAQpfgpss0FhxtHUP9GS8wiO1FDkKzGHqPTDPZXXnXmVfw5m5hGyWt/uubB2RjPBSbp7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792023634; c=relaxed/simple;
	bh=vdTyf4amUNrH9xHDluCgQJv4Tf+qweE7OtE6WR/bkJU=;
	h=To:Subject:From:Message-Id:Date; b=ukXgszdeDMnWQZPJLFfIUyEk4H4wHpx9JXIR0e9PHOokjXWgT/na/+iGigTML/UW3XX2chwYVov7xSN5a702diINPdrMVA1OFaL6G3xqS+AuuApQcid1wtImP18LlDa6MPsM8pgItJ/n2bOLw76luWzGKz1MFhLlDP/1q39tCmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Udmt9qJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Udmt9qJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88CDC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792023633;
	bh=vdTyf4amUNrH9xHDluCgQJv4Tf+qweE7OtE6WR/bkJU=;
	h=To:Subject:From:Date:From;
	b=Udmt9qJuwUFN8LQfgkamAFE9S8K7yqL8yU98LcAASx+EdjUUclP+QBuj5YP59Hp2q
	 NMhBUNeHqdfFiWurChhLnxTypsiA/cSauRmjoCpynLYJVkIUh+9qPjQSrttVgLY8Ba
	 m3HFk86VfXnqHIyPelOTkVLBIpHm3YBf9p1P9fPFuc86lTnuB+jxRO4uwF8nzN/wqs
	 w1papZnadP1+y3x6KBRy8/n1bbcyFcziKJ2P3OR6wTxSTyKkveWhNF3SyX6H/vuNpu
	 O5IRcX5nhP5uBhxDGnvIsDkz1oO6RykYBv+ecPyb+9y4uwmb075ZixlxQI/qqbGnxa
	 xJYyylD/BbDXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A33CC6B30
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202363373.29209.6584531832392720096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c30b6705dca91be1c3109f04c52fd6b950dd8148218a3766c063f4d1a3377318
Date: Thu, 15 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792023633
