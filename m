Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12979286A4
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766234034; cv=none; b=PV8pdih8YhjyiqGhqRT5UEPso9qaQOESAuV4PQHTltb5zPUuLClGjbxH+Be8G9CHR5WTazY1C6LTsHGogcSpRYVh1bX2yUEJoqsqiydHFLBQ1fLZMi/Mpf7XhqYgHvxEtJOUfEpr+UZzZbAef4lJf9KdbRRrD2X6ysPb7pupI/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766234034; c=relaxed/simple;
	bh=SkDqLfJSdekgLwgpSDW+s/4iXT3x9g9vsU1O4YiDzxI=;
	h=To:Subject:From:Message-Id:Date; b=u1o8K/1NVAixg8W2L63iYHDsTOW/blvczT/Wsx9n4K5MXjLZTxl2+soQPIGeOAPcG3yuvHPw4etiCrPwM4PkoUUPkj4LUTgOgPSRSP9vX1rCCas0vg2kzNC6T6n6WJvffI1LHkknPgxKPV6FBGH1M49/oAEpNBXdEw/P18YBho8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bd6WF1ok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bd6WF1ok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B6AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766234033;
	bh=SkDqLfJSdekgLwgpSDW+s/4iXT3x9g9vsU1O4YiDzxI=;
	h=To:Subject:From:Date:From;
	b=Bd6WF1okvjnDCzSRZWt5KzgAxXZv+GASadk/+MLVQI6CPyepfgD/vjYRcjirWIn2b
	 ytJjjU8IXXCaRvJcuviLB3/yiWM+GVXOxilGxDx47i783j41Cf9FyKF0tpstD1A4TX
	 3i/Rfcfi0ENUO68CFWdKCMS+jHcAegOl+6v8oxb7zvKqSDqioil0YCLjeNlxpARMNx
	 vy/eSHJnEfnS+LjS63OHtyyrMW0eFaBXVV3GPd36GnUguOCnKu3OkLMaoDiuVxiovH
	 V9qeCT875cpv3niyV6DBro6KYybuDtbhnX3+uf1GrfmfeKLw/47tDl19607QeL5NI5
	 Lrx1leY+2OMRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9951CE668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623403359.5617.5931945674728785830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297474076aa892729d9865e0f81057f71030ab8fc239be3b26834678aae5d030
Date: Sat, 20 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766234033
