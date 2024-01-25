Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155033EA62
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706180297; cv=none; b=g4f3LSxNHA1Snyss+HV/NV5YCxqrUZIuvpqBMwzJQE07phOFHLpbfi8yIfct5C+GutoKTfMJ8y9DtkYscxh3aB8/w5qnJkQ/MPrzufhPV3jHoYTKz+1FEa5XfVT2H7fa1y70ybHuYqrdRHeb/mWVDhfqmdluBEOFrPTGNnRUaM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706180297; c=relaxed/simple;
	bh=M9t9oZoNgtN7EazJGQa1u+Tvh3AMcmWVnLkAkX2YQyk=;
	h=To:Subject:From:Message-Id:Date; b=d4XNBeiEqkeEcEiQInzzPAAZZ3vxlI9BEAwvkaNyiSfOZRQK480jFBnccBaeU7sT6+UumyuOal3N8bKlM21g5LNSLifrD4K+9LLh/KR5mqlJ8F30oHltlLZrS2hc7NKpA2DAVyVTftNBG6LU34y008kOc+Lp2+9zUlrmzzX0Mc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPo5Onpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPo5Onpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F552C433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706180296;
	bh=M9t9oZoNgtN7EazJGQa1u+Tvh3AMcmWVnLkAkX2YQyk=;
	h=To:Subject:From:Date:From;
	b=JPo5Onpybg2d1sOliPVetnCib+3W0ii/cN5/DpShlVT2ZzaKjzk31QA9zRAW1sr3C
	 qRQIkXxAMbHGfpZnjifMJABe4lsPAYAdiTJq9GI7WRu9SuDENEOyoVrqlm5pWOV5fY
	 hhUhYlCxxLgc5qSZYlX3YXC4jyQCcp3gQZ8dN80h1JPQaRn/nO5+kFWE9viNANL3Zc
	 O4r1QPc/aTQnT89KWei0OneCBG9nWsifcdWVhO0jLjFMmksTjkfwjGRmVnxejjoHq9
	 0UQxMJfrbBM+oQ2qxUr35E5qb0Dru9MS+xlDbU+AFHlqEbqxwmyJ1CXsBvpL++DthN
	 OoCPMbSQXlGtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67AE2C47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170618029641.16095.13649674605819973746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f07cec3daa4fd454d6333d71e627b36c6e8af5d145fcab37978fedb57e04aa9
Date: Thu, 25 Jan 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706180296
