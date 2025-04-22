Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483D425F965
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745319594; cv=none; b=OqRC7UsrvdAaqFCdWUYJ+FpSrgSz6fjGQnPQ6nI5HqognRwli2lggINNVSqHXbttlF/fY9WbFxVpVDuoZrsMFIutG7D87KlZaiNnIUeqLeVbEbC6w/DsdgU7KIMUzaM4FI9M1wPbvzrzYnDOaLChZeYy0GIX32lt3Swj6Xfd5/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745319594; c=relaxed/simple;
	bh=2MDxoyt7UaTDOhW7eZ8iWQ9LU98OFcaM89qmnEWa748=;
	h=To:Subject:From:Message-Id:Date; b=Agyd3+F/s94389gmptR85ot7VsNm745RfUDzVgOwpBQ3Cu7r1d58Re4pQhb9qe60FRt7n3KnRNeyf36PFZpPKucZzRecnWbQu+Jq06ZfFW1I1x3ftmhd+6DkaqFKfP1CTPDQFZOBW5XhIvMdjdN0DI+Sw/VpdsP+BzHfvVjvgs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwR3hf3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwR3hf3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1197C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745319593;
	bh=2MDxoyt7UaTDOhW7eZ8iWQ9LU98OFcaM89qmnEWa748=;
	h=To:Subject:From:Date:From;
	b=FwR3hf3K1yGM43/pLV0wYw3ywD2YRq+924HEE8icrW2e8YjAuneWlnG5adxjbkINj
	 aJ3dAWDk+iGCzbXFpfoncxgw4TPv7f5vph2bcqM9UudqpcbfhYbGY4VgvT0nkLJmP3
	 Kk+6DecgCM6unLUxUImnQFqtrYItSqK0hSXKNN5A0LlzU1zy5ScRUjzg/pTqJHS3O8
	 OBpFbtpWcm0ZjN7hOkjnfjDpeUhpW6xA31S72mP+0CWIw/4teVMvT1ybCjtzFZ2OFQ
	 LvK8LHPKy6p/hV+krUmMUaq4vC6Xh+d5VcsVLbLonGR5Bn3QkRces0G4TZLED05qEI
	 RvE79FJmymtZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AABEC369D3
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531959362.20505.14785069492978480128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6519842410b73964f26f762dea31cf69eb7fa08fbde3b11e74742a38d4aeb50e
Date: Tue, 22 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745319593
