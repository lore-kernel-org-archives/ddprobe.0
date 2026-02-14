Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214B81EA84
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771029294; cv=none; b=jWqeRfWtYRWQIlYXxzmRa+YmSS3p9JDmY6JtB+E8lTSCYQzxzIp2ZUN2BQu1yOJKJ3Pmg9ChMiIq0JalE12HyJNTj+L1xqdKZxeBdYmjjkY6RmTgg7SwliCdfCExWkZQW9hojSY0igcQHXYl+p/M+6Jt6y6MR439MSJ2PkHMySU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771029294; c=relaxed/simple;
	bh=Ih8iRB70UiHTd+zigISfOvsC1yQczy822xiwejL0i10=;
	h=To:Subject:From:Message-Id:Date; b=EOtvGsxRwAFSfjZMm6oWnxWFW8i0ZiVlXED5eLGbXa21EfKYop5mRAUF3XehTwTvzs/Lq8ne2n51SjYQLttL0bPXZqbbUTAj4OeSrkCT0s8yZk/kYJmr3yMycR7faWKA/GSMPTqTOOCIqypQbZqBfLY54OBHqPpwKETau81Hstw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=df34iImB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="df34iImB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22D5C19423
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771029293;
	bh=Ih8iRB70UiHTd+zigISfOvsC1yQczy822xiwejL0i10=;
	h=To:Subject:From:Date:From;
	b=df34iImBsYmDBp/6nuMT/JlClsZsehRoanOtT3+40nFB0cgkSncPul9uxFE553fAy
	 pIx7gYzR4xvU0EReZANMThKn2GmiVdr2njU8Q1geOBpFrEbssfePWJBXeflFYOhK13
	 Egf5J5s5OGEep9g1MThXnp9Sbivlk7yA00jZtW2FA7s/SHDqJW170egXFBbjNqi4bI
	 WzIBCuJFTb3fduCzkIyDFR0xtAuGKOlQhIFzLQq4+JAsHw5Lr4dpBOo/DEdvyJoxah
	 9/efl2h7jp42eqoBL8y/KcBVmqPHNmENVfKeJxkXpoO7SMK2smIzFaLG/q57NUlm15
	 ozASHoE/9LISQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC9DEF99E5
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102929359.16162.743634493355833494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6b93d9a6d33136e29c556b2134cb872e0d64299bf49d9c38c8beec9f705337
Date: Sat, 14 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771029293
