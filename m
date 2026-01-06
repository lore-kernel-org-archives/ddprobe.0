Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCA3313533
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767710034; cv=none; b=KcF0DfLl7Ay9D5EVCl1Rmn+MLm+HI8v233PTcptCd4oD4WksAS+YyfkYfuBtN+AfOfrVXgZDpetK7g2Bh0kvnRB2UwbvkPcXVeB/MsqmASpJQstazyH4vTce6pOvpTa1iDGuXvWENB+bcaJenW2hXlvBpwS2acKsqV0+4+2peec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767710034; c=relaxed/simple;
	bh=L5pMCB5YoWOtswKc8+c9oMaYenQZt4i4jBNz33PzNiQ=;
	h=To:Subject:From:Message-Id:Date; b=MSq43DH3fyJHsQSGcpPkk4ARYoWleZXNbR2nhfOXEtw61OCFqRf1XO1//1F99XUrb4x8jjlfrlsf2/N376v7acOjyugs4WQzm2lmon9u3XIfMazgTrwpuOo2l78Uc0L+/Av/BY3DzDEOqphPgoqYDB1bGg1As/fdFwVymxVRCj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgxQMiSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgxQMiSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F872C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767710033;
	bh=L5pMCB5YoWOtswKc8+c9oMaYenQZt4i4jBNz33PzNiQ=;
	h=To:Subject:From:Date:From;
	b=hgxQMiSEaAIwFJyCTEyz9V7tEn8RD8v+ET4gv1GW1lYQ16rGzzodIOeuBu/7Tz2nA
	 TuVEkSvTxJL0cJdwl+chV7M3PrQZ15dgWGMvPJ4peZA2/iSk/jKTVPENUKP3yazMiz
	 7+PSFFKJZABoQpN54M7F+Mlb1UTdDDJLRyqcI8hl+F3VeWeiH7MdqpxVPb3UliTeJM
	 cwvy4ktENH7WgxKPqUjveME5QvJfjwqhnAVcWCofyOGHeijIA6rYL6ht2D481D1tt5
	 b41AZfZztYnYSUyM2CoUjwMI2efyjmeRFxAX52yOsJGGjxuBqBb10aMBSvjukPd98+
	 tyIua2oPtXxoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE18C98331
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771003357.27620.16102320791049922438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0da803aaf026446181d547b1406c9ff0d51286d3d9246b079be62f3e444fba4
Date: Tue, 06 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767710033
