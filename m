Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292AC125B2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754618394; cv=none; b=fi4+91cuMvvhg9dLXjRZaWFD15aZL0DsmKijO99jo5uryqq2JwLk4NQX42aMAXP4h5tkD2QBl1yLkURnnZQy6cR2V3cElzEpFMIPDDMG8KxLLlGnLHfPnZQEBQJbThktEuKFk2n52yd7fpwHbXrhQl+mWrPBp26U5ZgXuMM1Aa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754618394; c=relaxed/simple;
	bh=9pUJJNt3YOJTIzdwoxymzBRkJ8qvJmXfs28CCdWTiWY=;
	h=To:Subject:From:Message-Id:Date; b=IPD9HfnvXiJfE9gqKeIc+692YuGOS9w9jyP+f2yaArnG9E4AkzfkcHBPIB/QDoCHoxSBeC7y/NyQ9UKnTtzZs+JU/W8nwHfMn2hPNvRVUWEZG3VLgVGYnsZbQHVGEHHFn54w2MYQe2v1d16p3RRAFhZDbvCfgygwQwFqgu4VF7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWugryyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWugryyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97EDC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754618393;
	bh=9pUJJNt3YOJTIzdwoxymzBRkJ8qvJmXfs28CCdWTiWY=;
	h=To:Subject:From:Date:From;
	b=UWugryykUTMa69b00TTfwTGDvWyXk1apCPE7i9AHuKr41HSPoeBcI7JzpKrYa16F5
	 lWbMVUPtcf8oLv6r9imwrvIaky01ZmDIPAZOF0BDeKOUQxjXekjhtptxyWXpzHSZ6e
	 DE0OlQoeJVW07ru6K4DE6/b9ib3KONUVCKscEWwypnWDzcvshGw5euVmthThTYtqtO
	 VmDS2r/d8H8eD5I2sA5K1k+1ZzpYbzHx4Y3hJKAQdpfzq8c/ycDhunPNbYCO3HIcIq
	 2ipErs9abe32oP7jvJNaNmk4XJ/6SV8bmJQbVBcHGfsN+YfP47omj33aMUbLcKKFVp
	 kWEP13RcVlMjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C94C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461839357.23056.5466702064827491588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114a687ff3330d77c4dce23af14d8fd6e4b48b488e9a397578a1ac61f035c003
Date: Fri, 08 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754618393
