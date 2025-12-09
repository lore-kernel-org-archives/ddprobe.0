Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B2126F296
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765259574; cv=none; b=ifXrJO+goR3lndR7bL051/IMvFeYj+JoMGXA1HrPBjSA1YQLASXvv5eVQKoPiJtjIPIEhHEHV01SWfaw48WjWU5ole7bnwh8D1f/fmRRzcsOX1R5iEuXpX31N7YNBlfUGUKq1CvystXEuwuEHbfCmSVhUyTsaXXf3LTb9V3NvfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765259574; c=relaxed/simple;
	bh=NNsAFqmjOZpxl6YubtxSF1qS7KqOSN2sFujQn1qkyCo=;
	h=To:Subject:From:Message-Id:Date; b=utQMpklTRKe5VTlRwW17y92e6dpo/5sh7e012fs80L/UAiZI06efnNMLYctWDwJ4l0Wx9uCZj+JARLuKp808gncnoOo0t0ibQz0q5InY8EM8t3mUhGPfmoPP2UCQQ86AncwXgR5yXqk4u04u5m3I4MybMchE252cYcdDiz8O7LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pU9lwsHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pU9lwsHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A728BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765259573;
	bh=NNsAFqmjOZpxl6YubtxSF1qS7KqOSN2sFujQn1qkyCo=;
	h=To:Subject:From:Date:From;
	b=pU9lwsHVjigBvFHEDv3Q9iVRF2TLkfg52Xce+OEyJAiy4k4P/PAU4MRc9AZHZJBcU
	 7QP5yyrAl0aUgE3SjcOzZZ6u/zNJbkfHic3kaC+fGx3fTMWe1XSQSE9Pj6FY6OnaTA
	 hxMYs4mJHY+cgRZsT3sgEGc7F/7BHZrgAGBujBiVvTTQGewUJhipqFJFjn0ZRR51WN
	 r+mWxNgB0B52hd3q/aapM2qwXqhqHKHULAeFQLCeiDtv72vsu5VbuYoFzJnWDyHi0X
	 lx1IvRcTrCo24osogTMr/ve8uVo+XSpT/+cPGAw27Xx0AU0rYxvR3zCnaCgRs6P0GM
	 yzrzIPX7Mz6OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9320BD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525957358.7667.6414846482138389312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61084dc1dad72d9c5d5eaee4e782c3f44e6706d9bf3700fd5e64c7ecb5b8804d
Date: Tue, 09 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765259573
