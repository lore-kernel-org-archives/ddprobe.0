Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2BB28C5AE
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748446794; cv=none; b=lDgXRQ2dzcB/a8AyaJyoQm22SNBod/WL5k6GdQlFpvwpf45urD0TiPlZqhluUVRUBGa/u4CyUgvh1yhUMcVscounxrrxXULKz7T7CQXl8Pim82fthA3V53nUgzIUbiPFHUYyRTEBt2FXcSnotSqpfq3f6JzvFS36aYTV5hNIgkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748446794; c=relaxed/simple;
	bh=JhhIxNCgzkgGWyYxAKEFH+OJ6llCVw06PgSiu1ZvGkQ=;
	h=To:Subject:From:Message-Id:Date; b=RKhrTPXqgxc7sgc7u5jCgpQMqRUGITdOllQRolea0c604bpNVFLduq1wWHsZLb74a70HgjF5f3mctcVtjA/ElxYR2KOmFbW8o8YddoEtsh7RvFPeiVQ1Rapb1c4Gb4zYFqjjByPqdk/d7cpipk9sm0iM6sI3Ux+sbQKdCX/WEck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISICVj9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISICVj9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1560C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748446793;
	bh=JhhIxNCgzkgGWyYxAKEFH+OJ6llCVw06PgSiu1ZvGkQ=;
	h=To:Subject:From:Date:From;
	b=ISICVj9NwkcmFKmbKRaYCos9U4S7+IztEsvZsgOyQ1d3IMwPT6FX3fAE1GPXz5lDC
	 0GoFCqqnT16fDfZcMYA4DTfrJxTRknwY0fKyRocT7U8cZufwmYXSnOLrWRtOJ2GFn1
	 OKF+i8Oit/SzTSVIkN0RDqAn6Bi/QOvfIS3GySXcPpyjdwcRBLGpGj5BL1lSzjWsVM
	 Nb7V2fT1zHDHUJ+mCjWeKMb28HAduNvgDAUGwyyKD1sGx8bgX5N+CFtxRn1Qg7ptnw
	 Ihm9z6t3JZZcdm5iuZQVtrDA8za5113g5AL4jwzF6i75ZP+V86TBnYj9Qo3Fabr93J
	 0z2OXrMiiMVUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB50C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844679357.24100.7365024915046902166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe9c4f7869cec569317bd85b77125560a57e3570e1ff3192d61afab4e79266b
Date: Wed, 28 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748446793
