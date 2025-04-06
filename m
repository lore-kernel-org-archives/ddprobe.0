Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3777013D89D
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743973194; cv=none; b=B83ySJg+6K2KdlnoUXv7bZV1U/kq4KJhkhm9MGAHjmbnfTMA91tKfjSVRG/xj+aOZw0iMQ6pkg5w0KqWKEXxXzlENIDjgeqVofp1e4Hlul3twfxoec5QLMQU4BkOEHRAexWDBue8Pl4M5zeqiaFPg/W0FIrxFdRSPT0iMapWAn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743973194; c=relaxed/simple;
	bh=nKFaHoXv4tDSVy9X/ylSUx6o9PAyygwmJejWio7q/l0=;
	h=To:Subject:From:Message-Id:Date; b=rmToGwwKVfS+rQcFZYSoZfpl7rcrdfk4czfktwHNKMVsV8x7seNnJP3aISSp4AqFM1ekLEQbyz8gbSe0pANzLeeYnIx1hbu9OlbwVpvLUqVbUCAtJtATEyYQv4hjW+L7/EBIlX7KZMM5EMLV2nF/9q5o+OxkfaALUHmNvIdSK2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5ESZLMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5ESZLMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B293EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743973193;
	bh=nKFaHoXv4tDSVy9X/ylSUx6o9PAyygwmJejWio7q/l0=;
	h=To:Subject:From:Date:From;
	b=q5ESZLMKEZcOEKTJ+R4OWVz9vf3uIG8jJ6kszsiKJuw4/B8iQX4Kpb+nBebsAv+Zn
	 C+pGezEerJfKHm9pXAVOTFe5PCLu/DfGNSyxAaist0tAVTSAZ3vFGB1/dUgHx2a/0k
	 vMYXfbLwBnvIsiAhdoOApnQyi6j3H5tC+hj8M262Xg5kpvVYENNaH2nLpOt8yXAtu5
	 0Ha2TJNOiSbJoRLrJtg0MHVk9dGIpD2UkKHOlNrxvinvFUiuYYvkZ4HGDr5kHHHCAh
	 jhYLBxtOnFQh/5OSzJUfsrLvclPhDi1tUTGZA3yn3XVE6YSjahV81zqIs3lsC85L8U
	 iK41lzdBCZVrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A766C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397319362.9825.7727145015808888901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0ae2d77d6fa9f3bef9b837644a198fae003878b714f494bad64fc14f3e60df
Date: Sun, 06 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743973193
