Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B7D346E64
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785913234; cv=none; b=QIkqj5enqKCDhS2hqjHBhUGy4o6SGwjLTIgu/xLzRW1sKIRlmQp+vOgBJQLt4KMtThEN+Tx7WIbh5bBlNPSX04PViOowT4FiXKYODsoWnkOtDy6bN+xXjsEYko3gVoZXqK/R2IjeKowYwgP9pZ8uCRODUNeogZE2NRjNnnfVo5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785913234; c=relaxed/simple;
	bh=MBtU9g9DPulxJgnOiWLZIe/D2tl326+AmCrksRekcTQ=;
	h=To:Subject:From:Message-Id:Date; b=BmYXbqKOYohK70f4TPEa/2DFm/p3Dtbg41jKTTkT8d9NMBZdXRwrAIHXxejMTOE1MrSyORJTZOJUh/q4aklj18bz9o2wtBeS5xPjCtd25eIuGIGddAWjY4qYyPOPAjRjSAY8fkIgMpgeId6WhpXBmdNLE8uRNF9tsfC/hsN/w5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOO2uNaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOO2uNaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EADA9C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785913234;
	bh=MBtU9g9DPulxJgnOiWLZIe/D2tl326+AmCrksRekcTQ=;
	h=To:Subject:From:Date:From;
	b=JOO2uNaFnEYhesg9Kzw65rnNxB2jyQgT8HgdRRsa6bNp1ZpN9B/WV9kI4EwpS1wyR
	 DIyXmITCNBUYtROtHbJjRpqSBuEaf04wS8NuJgdYjKNgsMgyDDHnXIg8YKvyGWKCFr
	 kf63NlbflcMTW6fk7+riAJD5FSb94/8ED//c4qmK1EqwfSeJUWrPJLLUTl0HI2EgDl
	 GxzP7nd9SOxh4FN4GaK8bwnGsRYuRunOHwW8+13nQdPbsoespIffFHYTDV/4QidfJg
	 sZeTykxMWLplCtUXUr5eptx4GmsKLpgGsLMMonygTHH6UPI7rTcbV0Ca+rPGgyhO1O
	 U0guvulR6w6IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CA9C55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591323378.10593.3675887797850372858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4c882896fc1c93fff43cad0a37c10561bac9d65801ff0bc77db6bbe5f0ecc3
Date: Wed, 05 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785913233
