Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2517A2F99B8
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776407854; cv=none; b=QFgc0L98ZRUr75/NShN73ax9PI77Sb56B01y0qtGX6TLdqOefwTtjKR3p3HlIm27yfHR6PmTqpB8r+EJvv8BqFO4mIg+SZ+6TOoaXYpvWnDg5FQwtem4V5WtDla/Ig7j5RgpIvHvdNIma2tYZPCFziZu/XZ1CiwAnkwHr0n2B6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776407854; c=relaxed/simple;
	bh=Zsx6To9qjxh+ybXNC03tLNCf4TeE/QcSS95saB84Cws=;
	h=To:Subject:From:Message-Id:Date; b=jBcKo9M1Np0bj5xCUS2OcoQE0hFl5ansxCrDGW/LC/RIZugtbKxt9hzs0usAe11MYhBoTjciZ9kDjPN+fKT8+Ag0sr6UQBPHlo7WNJb0Qg2HkfVY7I771L3oJ8XqWrv8QzqAb/h5QF2kT1Zz42NDRbA3Aujl48Q/ioft47KECuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNrxDnWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNrxDnWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE0CC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776407853;
	bh=Zsx6To9qjxh+ybXNC03tLNCf4TeE/QcSS95saB84Cws=;
	h=To:Subject:From:Date:From;
	b=eNrxDnWZjvUe99hxp81cE1i4Z+u34EuBE86u5Hgnqj5bqGsUElFTvh//D83IwmxtD
	 G3E71vzSj6nSn5nr0Bk9cvFoBKTNGd+Kqjh3or53CKeRglF7FUipRCIwjPaKYZV4mX
	 mp2naX8rgNZ/bFQ09p/mWo6bdwr2zpWTbkPwoBfCoP+2qeV+vp51Ih54FJb3Zm8Lsx
	 j/FCZ0rWJkb6ItaR++1zR1t3D9sy7yaUxiwxPJkhGBzvA0Sa/EVeWADqIvO9r7a74L
	 f26gFsvoZ7Cww45U4O6JaaQHS6uBF75bhPgezjVboqy9ygmtmydhRsewDbBRA5vpvg
	 9JmPgL7gSMvzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3ABF8E4A7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640785369.20441.3482815231390972755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba3dd4d9a5b014ccf2a49aaa054db19953889c8c641ce79ad98589a43955f10
Date: Fri, 17 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776407853
