Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B4B34F275
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781538394; cv=none; b=t69fgOqL8lONQSb/+CCgH4iqH6n68glZxaWjyOn0SCMDhzkwhBFj9a/0hAWf/UqSTY7I+V1i8zY/1hbiv24ANISzCPyz5cW26r69qKrhuG5SduxKtcQoMw5JRje0V+hRNu9P2A4cex6DsiWzkIgpPq9folMeFxvBFGdbQp1vjBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781538394; c=relaxed/simple;
	bh=uE4YaaUO6keArhM1cqXENvaFjI8j/8G9Xp9V+jPZCME=;
	h=To:Subject:From:Message-Id:Date; b=ctd3Q7x/kxWSCpxNxHoDib6N8lJxLa5AnB16EPbLZQffutecQlXhsJo89Lpe4DXDBuuyf6yqHYJIk8ZyrsBgZHs6rZTTXKZ+xgk5bblG7lX3uKQ1UKw0J11rVN0SRa1Shu+7e0YWH3NagZPs3tE4oWnggoY0D6BILb+r6QcMadU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMCbhssO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMCbhssO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C2BC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781538393;
	bh=uE4YaaUO6keArhM1cqXENvaFjI8j/8G9Xp9V+jPZCME=;
	h=To:Subject:From:Date:From;
	b=BMCbhssOARqh0BHGqZSDo63XxDW6QmumfjJWqNcr6eQUfBFzdNWcaWzpVr8yTNq+y
	 5+vr+kC9YHqi5Y7pEuey7sEbchLdSPHeQlgx0eGikPrVeJxo/z2uAnYadS3ZU/ShBl
	 WfQtPpA1ALSzERiWRzjyH7WFLi3FfxHVfhPy8plBoNUPuFs4L1GuwyRrHelyFYOA7l
	 UoXwY/4vbSI8L4CX2FhIeEBC2tNzRC2ITg1KETR+dRRUQ1OCeaMH7pn3ObM7ycypUg
	 QcyYbieAwLtA30giqEz0BHZxyHuyeG7EMGjPq/FqZKmzfjTcEDOYi9VZ1PeEO92hPz
	 vNNyviYc238Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C78CD98CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153839374.19002.6145554235715985522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766017c30e343e477ea76ee4d608f0e1e60ed1b1dc8ab6ebb911fdd18cfa10c5
Date: Mon, 15 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781538393
