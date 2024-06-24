Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59232376
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719187343; cv=none; b=MgK4qzYO/au9ZzsZSN1YpEvvFyZ4dJDCfsw50bS5FfN/CGJVB0jrEfZr7GSBG3xFh1kkn0Q7UEVTYIAAUSK/uqlQ0/AqprU7GHpKyPDIt3ASJpyI4VgmZpgSbU6DgZ/3Sr8AoqVB0diAcKh98o9D9STxYxSZ1UWnst6D25tOvgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719187343; c=relaxed/simple;
	bh=FToahPUehTZF6xxqq3CTaVL9xNjTQizmE/TvwTfEkHQ=;
	h=To:Subject:From:Message-Id:Date; b=Ryzok2dqPhCJnD/zOw/xVGX5RkvRofWrE06E23vxdtTRU9bSlodusa8mw8RdLxbwlAZ/90y3JiqFCYJNCKFjrInRFoYC51uxoz8KG1r9GnWIJTO/YIRLdwA/tH1dSoKd/YWUhlw05/USIM0vpothAQTUVA/l00hZEPf0ttIAziQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kU86RfFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kU86RfFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2393C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719187342;
	bh=FToahPUehTZF6xxqq3CTaVL9xNjTQizmE/TvwTfEkHQ=;
	h=To:Subject:From:Date:From;
	b=kU86RfFpOJ+tigt5mMuSPUx4RbkQj/SkOwtWroaJVxmDZ3V6uJg+tgb2+KqwtVqhK
	 nrWS+a78hBQ7iWhn0cg2y4pAMe5aLkBActMJZyYaKqJymCtYapWWsR11LnLEowKPc5
	 ABSBXET9eTwGjQa6KM7BH21H39mlT3wyTgAFGRmRlpl4qJ1Zc+tGhZPR0hqVRtPtVx
	 okmkAzIr86ORFY5Y/euvOgJkoL2fI1Y5bGv47ccMlGjfZRjiXOWOcRX9+iQeFkyuTP
	 wWlvrJbGDdH3t/Z02RLnsFrshU0tB+6VTwA3ELoOOHsZPOL7AG0A6M8EHBLNeglgcN
	 cObbreYY1RwJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDEF4C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171918734280.19164.5957124702707119327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 584d76df7b8ae0ca7683fe9c21350abb5190c9ced2aa4b5670d9d8fc53280b71
Date: Mon, 24 Jun 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719187342
