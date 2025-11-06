Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8C830F7EE
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762434594; cv=none; b=VpGcOItaR+5oY4CW8uGBttBtcaehaGActQ1KAYis8Xk/024974HrgSU2qKVIGlw7fGPBPuVDM2NlTHXgLIJ6oD4T6LaXlk0Pdu4e7WdrHjAgICIeKDo6QGFodtlt5QYodlR8N62DT99nwAPGGrVG13s+kqdVqDuIdZX6tbhOIiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762434594; c=relaxed/simple;
	bh=Ts+w8E1FuPZZaSUCmw1unSJe7dpgg5XX85MCB60Ymqk=;
	h=To:Subject:From:Message-Id:Date; b=gOoEECzeDHp+ho9lcQu37jXZD0W6r1Nt+YsI/WVdqr1LpjW0bwdFAx4ntJ0uYIYiaRrZPq/GTb15pge4OQuHjVeE7QSGf/sLt5wfEjVGnMiJqwzWvpHh+coa1s+UUnQTEfTMsBoTnx+EZ8jtr7tPLk+Pk6XHRU+uRUVH0IDbsFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKU1pFt2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKU1pFt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E99C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762434593;
	bh=Ts+w8E1FuPZZaSUCmw1unSJe7dpgg5XX85MCB60Ymqk=;
	h=To:Subject:From:Date:From;
	b=HKU1pFt2Mz62xqANUPUFWevmG9ocPPDvH1hEOusSuvv5MLbA9csuPWkBga2/DJq4R
	 3kZPzF5anfzJFp8fL0tT0RVnvvawrONeVrke3dNrATlqWuQDt2Xz8BYzv8TRIxK84P
	 NjTs5yDjfBhLN4EmSw6EiNA7Z01/rzXyb/Z0xaLidIv1HouB/nMqL9yeub/jMJsjy2
	 ou6Mfe0WJOas4T3fDXUBCCtsfZ1fjbdJZ5uzTKO/UCPX3cPQ+6Lzu1G+lbA35uIN2Q
	 dxL3YfnfwUZMSq4X7tQXQv4qluIyxD/NNUdsLHLtrG3aWsNacV1ekzmmi92F3toPTD
	 ehwuwCT7V0vWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C6CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243459358.14886.15976792232370693831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55bb33fdc33100c8ffa51976b0e1bba3f5f6b8d1cd9e78754254f1c8675c099e
Date: Thu, 06 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762434593
