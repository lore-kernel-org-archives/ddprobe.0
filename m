Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004D030EF9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769178234; cv=none; b=ouOxdtImRG8f1kehxO00IRiZ3t0qDsFicnyu3m+i11bbhWCiFshqRISUAncK10W4D535jCPg81/hAEO/ID/DLbM/y2ee4Wk3XNHlxZbbC7ybyKxAKGB1AyUWfAXxtVWpz5eXwkm8ZNAnS5aBkE7bsRXo0xtUb6qdwSCdiXW25pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769178234; c=relaxed/simple;
	bh=x36X6lqYv34zSYMb66l0MQxi3A+B+bfb1U9Yrg4GOgc=;
	h=To:Subject:From:Message-Id:Date; b=eq72MGwdvCW1/8XTT6Clug7Mgzbzv8Oh8MLQ5qKiZwzqdms1Dvsoo+HBSzUjEHzeRuCMgQqFGR0/GKTZW+7AOu3DjoLz5uIt96TAPU7TvGXgVvUx1NFRvFiwkm0UEXEHd2j6tJwF+rwHJdH8cRYvmRYWlZDqTraaLyVrBWBmwps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSsz28U0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSsz28U0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E798C19421
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769178233;
	bh=x36X6lqYv34zSYMb66l0MQxi3A+B+bfb1U9Yrg4GOgc=;
	h=To:Subject:From:Date:From;
	b=BSsz28U0uoZ2U+uHU45tjvz0dJyb7Bl2ojbNaA2zbtDz991K35ksHKp9nj28vXylg
	 5FuCzNxPU+Z8LCo03WVeLDhjU1P8tQH7zI7ZauZry+OKQ3bS5+oMK0iiwKBesZYbyZ
	 uLJTq/I0mzQpUjGQUkdknQO5jp6qP8mwh8nYRcFeo/xIRouW1IfAdi+yMsA7DZzh8x
	 EU/lla0+8ZnWTv8Pbb4qMNMikledrL3LaXsheCtktWIjp6B3CfabmtAbUtMuVg/5Ib
	 WM8oquuFiPqtS8K0SEeHft289/0LmO7HG3+TykxuXDNRmVJQ/MosBHPdcF85RY6a8B
	 dCVn5e8iXvfPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F2D74ED8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917823358.12333.621770648325913928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca496c7e097c25269282b9aff8ef21deb4c43d222a4ef94b173163eae0b75ac
Date: Fri, 23 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769178233
