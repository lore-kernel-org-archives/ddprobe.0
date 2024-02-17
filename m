Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E99B149DE0
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708148897; cv=none; b=Iqi5/FdzJuM7x+G++X80PD41msqohshStX8sN5pWGMUNeaIr/FXKKnxYxuXyg06TN7jMaaceLSAQLemmkd5W2eKuoYSoYgpGNJ4IjXtGRPGIotAKKBGZC6bCesGUcVpntJ9QsUpODUvb7sFXA0OzKB/qoImZpsq7YIMK3q6mKG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708148897; c=relaxed/simple;
	bh=FRnbDuAjcVkNP7mChXTZkQnmpxK2NPSzP2+aQeNMOa0=;
	h=To:Subject:From:Message-Id:Date; b=Z1AmSczlA4HRCIV8qj2SEvdujySRH67MDmgwnpMJ7SUX0AGFX70tz5rThNR15q7r5aDj1Jei2A99aAUIXGIwtdXBNnQeCkxqTOPjoC2NALoan9QdiqIpBHXpsEtQ7h5l1PqzkX3ue3ZshABFPryBPgTg53hyoeEyNlMjm1tLsk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sukWV1bt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sukWV1bt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F929C433C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708148896;
	bh=FRnbDuAjcVkNP7mChXTZkQnmpxK2NPSzP2+aQeNMOa0=;
	h=To:Subject:From:Date:From;
	b=sukWV1btYolH1hJT1NRephnSCLPkViHJ/vDirQPvtGFkEm2qPjcq5+oj40hK91quK
	 kdQOti8Atjx9XfDEYAyKCi7vi3U+4IoFlFukQ7Ir9mMVu8PZ1z7yFAleCghEIsdLhp
	 PUAyop8e/blqcFFBbx82ilzvksi8g/i/N+UhIhv6Agbd9UeOJwCGBeOKIG2wh96nWz
	 miJNjS4uTv4h4MGuLjf35a7iUYIp1QrUEY8K2hXlUtcqm2SZz+Q3tmM/OF5g+fToEz
	 D8gg6qlB5dYJ/dzSL796hSYhEaUsV1n3zuEBsv/OhiXLqZA7yX8xBx8Ox0EPIct0yH
	 lP0ro76sdrtXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 613C3C48BC3
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170814889638.14763.12312890182520353597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f59889a917dab2cdd1c06d7e354b8770e896927abbdf2d35047bcdc646b700
Date: Sat, 17 Feb 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708148896
