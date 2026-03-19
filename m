Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA643E9F80
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773940493; cv=none; b=sM+hnJoXgTeDQa6SVWNi9weHAgeCnGhiRNRPUUMvppYOeyU3SCZ7MMV4ZjtQjgPVUMpjrC/B4MvHk2WswTtfeq40OM6PKmk+f2DFHVVY3sdqRmvBls5l+Dcg5S8OyKsCFCZHqqCq72fZgJgw3AD9I/n2vVWM58dd7wBnI9m3q+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773940493; c=relaxed/simple;
	bh=YWRPRXx2fThszV3qBGPw6VEyDiM8RuOstA4ENTtNOAM=;
	h=To:Subject:From:Message-Id:Date; b=A5BL1LtlBp5aBfQu6ZvWlOZMwGTAQwJAUwcTrngYmHyc6OxWXmW40GUx+qfAbtCnZvLiAyrqpt1VxEqO7lZXArOJIYkWbNkMAnI0O6p26QFLSo8fQrdBfpgiVVB4RKhB7bH1tjKjic6DhvXTKuyCF6DYzyZnYTQbAivOO+aNlmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0KOrmYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0KOrmYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F87AC19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773940493;
	bh=YWRPRXx2fThszV3qBGPw6VEyDiM8RuOstA4ENTtNOAM=;
	h=To:Subject:From:Date:From;
	b=G0KOrmYYfHVQT/tht9tznB7ikniJ1ovKHe7JOyGP1ALGDfCtYTnAEm2ATDrVxQwZ6
	 DByznSRWYAScbCkTvrK8GAWgvVCMcvAnFlXhsr1+YJnhka2Lljv/cNyGAQCWfMJAPv
	 THiDx32jEKeJ1paAW7a44wnbVXDX2fSmE+mZmTv2//Djl+M7or1Ps/TeZm98fIXLI3
	 6wUs0zoa4+aEr9VIunNVktcsp8TfJ2ZZv6MDniV13GD3u7pUmGD8njinqLy4KCRh5X
	 j53rORzmy2aJuSp3vxBtTWy8pOGkTk4lBIMLMMn6WkV0LmWoZkVLoYYDdjWeDjqm7S
	 eL3hIhZWo8tkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9096A109025E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394049358.22687.11845814639262199026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb92fd6b18523f0e90114c2350d7057e3647b8242a7e2e2e3f8d03b8041390f
Date: Thu, 19 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773940493
