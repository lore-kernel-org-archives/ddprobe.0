Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321A61D7E37
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741757334; cv=none; b=QnNZJAOVxMxb4+SuODSpkdJh6AFiMtggUb/02CQFCeRz9eoKycMKym33E8msP8lgKPW9FzvPg6oB4SOoxy2vNeKqgRbPVw/C3wp2OTnTbhynvsox0bWgdaS1xEBEJ78gw7Hr/ThY4AyrEzUr8QpDrkysm3JEfrDgFCkXiEqbMUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741757334; c=relaxed/simple;
	bh=M/Bx7PXjm86iL54Jbh/KpIVO/nt0kOAiiWwig2YWSs0=;
	h=To:Subject:From:Message-Id:Date; b=HN9vxYMgwAIkzZIV2rXCBG3qqseT6N/nOZUmXhZqXgzCuSX9shf1w65cJgku7h0B7bdt+XuX9U421evxQNHEKvmjq/LJN59KFV0jKHk2x1/1BOaNsCeHH+EtaHjiOu9NnegQ8NNVsj8JCk8OMS34Yy8AMBrtD7PY30yUGKnVvM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4L5Tzrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4L5Tzrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7277C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741757333;
	bh=M/Bx7PXjm86iL54Jbh/KpIVO/nt0kOAiiWwig2YWSs0=;
	h=To:Subject:From:Date:From;
	b=r4L5TzrwHN845frhoQIPGgkurgws80SzWR5xlWgEVXWYWKtTpDvpeJmKxlUhJnPY3
	 CswoGlEHlFUcGqdbJMC+uZsME2omJD1U/78cUoL6JhhBFUp9js99bamBpsnkTbNuHr
	 z8LNfTMkP2moimF+Lh31zYToIMurDMEyOplwu9M9b2IwIPVxzyOPlj5C7U3Bh1+1Ib
	 RX7SaCguJz/AK468DXRixn8e3oteDDugDJLbhjnxzfJhfrztF6iDe0PJI9OquRXjMf
	 iOeUG29rlsmD2e1XYQbJwPiSo5IAdskn8qD4Ic3w8aju6Zz4GoZn0ydVXgs3fpWWmy
	 Hg4UYAgCcKGMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C7C28B2E
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174175733358.19524.10339288837532700677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7be9d642dee44a13dd797e2d13bc387bdbcc92cc497529087a08559c448ed4
Date: Wed, 12 Mar 2025 05:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741757333
