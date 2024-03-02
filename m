Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1608B2C870
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709409497; cv=none; b=qsvuCOwgq9zri+UkJlnEdRJbgzqQR0imB/xkKZC/CLx5Lt7zSqYhdR9Qdg0j5trTTzTEWUyr7D1KCNv6izCn1O9qfFqEjrQbi5QuIJWxrjO7ozS6dGtz2pd4T+PzPb+dWbswfdtidRqYHAkCBsENEiTzNNqUrOGVQbHzZFPAFoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709409497; c=relaxed/simple;
	bh=ipTnK8rV7gQg+s3WOsnM2x10Ge22bO18dmWfYmDtlrM=;
	h=To:Subject:From:Message-Id:Date; b=MIDtbC87548XNoafMxkxxZFl+uW/K0jBSpMPEDYfRWrgSi7/hr+ggArHr5aJRL4V60PAMBJEEpHBlWmDJW5+7Q3saKbnQVHxl3Z5tmjSTAFhiHNkcAqATnsT3SO+21j2aDD35uGGbcbkGpxrFoy7B5J/SWUQ7Qye6T9FtTC1110=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgjZcL2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgjZcL2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 837CEC43390
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709409496;
	bh=ipTnK8rV7gQg+s3WOsnM2x10Ge22bO18dmWfYmDtlrM=;
	h=To:Subject:From:Date:From;
	b=SgjZcL2+MvzkY5T+0GiKsLuLkXbNb1H1+chjPSWM18QTmrHkmvwv5h0M6tQNOkMvq
	 W0zyP/wRlGHhdlJlMUIfBVO5+SrzOfsfylN2ZZTk6RpjryMfJaxH03N3F0K0h+1Anj
	 vEZv9GI/9ALCcUNDBZABHTDgXMw5sj6iMaKeWFMLyn8ukq6kxgYQQIXbshk5pjFsDr
	 Y4NM+GGQ+5W+6ECw/UUSvtWG2fpLpueyWz1aVrwNDXwvo0S9xiNvV7UKR/rSw4w32v
	 LMTlAbJB5FAiU+f3z+rKESyEcS10aLZsHAEzC3tHKRVbYopdNbp27St3eKxUH6yeol
	 lrJPVhbHP2CEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67294C5478C
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170940949639.30613.6407558195629611180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f257ad49ffdbe81745ae64339175453298f5b910f0c588c44001fd98288af8f
Date: Sat, 02 Mar 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709409496
