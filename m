Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1E83C17
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756675194; cv=none; b=ECqTO5of8FKAvKFPfAXcSf291IvCNVb1AAVIRjub6QdBfzuTSSK1AJe9fNbMIWW5Ao9cHV2QpM0MpEPizPO25RRJGMch3e2XR9FgLpub6a30Hf1lXqhs2UvzYu7wNOaPwvrN11NOA0DGM5HOC8acua73O65Y/vz8tMglgrGembg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756675194; c=relaxed/simple;
	bh=D0Ti2JKhUbB2hqGg3DKb4XZOuFYw3F8luPmEV5dvvpc=;
	h=To:Subject:From:Message-Id:Date; b=rJoCT9TOVRV2MVcJkmN5lHprWd/mY1xVH7+nMgvzFjbVx7SC0L1F7D6bfBiiFhNIQSLKvK/caVE2tB7rwFo1e3qVXgPcFXrffdZ3oCMkzfgOvx9akTeiYrNH6w8oRlfqhRf+J54gmnTivrVA7qsXCJ1higSsCm1myRlLuQECzD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZl+plkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZl+plkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66E8C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756675193;
	bh=D0Ti2JKhUbB2hqGg3DKb4XZOuFYw3F8luPmEV5dvvpc=;
	h=To:Subject:From:Date:From;
	b=KZl+plkmkKpxmj8f8y8h1LMmzcQaveitxSXv894mQWw6+ebBeaaaRoeG0VKDqsiJo
	 igXy5hDJbyQ+rF6A1aTub0FavgLIKeqy8Df1GVRYbFW2wwAwzdbCIEjkXQ38pqPY+P
	 6DkTSDNCXTlt3JJQPgD9ibO93WkVfnSyrVQAatic3T0JCDZwvDsdWrnAY1vR6s+Snl
	 6MdRWxFWroCuHWcbD77FT1AXHHWDiAAHvb/u+BfSELVefr8/QiJD6yZIWKmO7OCegB
	 lwsKXVQPfZpSMS7eGVBG9R2VBnZ8lu17CTNRdZRAE5G20GBBULhH+WL/I1IcrgTOhx
	 RaKkDau3SjoYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9556BCA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667519357.4684.1912174297211674783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558ad8c614ddbbd8d39c3bd3ba7a924ade0feebf208d4d3352f872202ae4d8fa
Date: Sun, 31 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756675193
