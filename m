Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203ED2EB5A9
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766519634; cv=none; b=khxVOoJhcsPyvLurvbRRbE2AVV9E2y6a9PfozVsjppliNu8Ltn+FXfQk5usNF5OKYXvOj0C9f3fypRWbKVLRIiANQdJnVjE/0vYiWEpnQjsZ74mCKvFi5mwx28+hwdUn1gwJTlRE+joQde/txmot90vFfIt8moJsssceQd/6CzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766519634; c=relaxed/simple;
	bh=qQN72TalpIhbb2/KqrhbGo8mAag08cnUCc3QkpJ/uxM=;
	h=To:Subject:From:Message-Id:Date; b=SZLqF094+OuMbZ6rOB173D399Yq0WOriq0vm13bC1PzfGYoHgeA1bjXpu1FTHKAy/PQzUFSLXelho98PwXmh+b6oCuk4tenDFD1KPtac+JL5eI2KrmpZTdwdrHZoGvIAjKKPNo6NFnyOiGEl/s8/CtizcJBR68sbus7hTFYtdI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNcxkufl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNcxkufl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68C0C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766519633;
	bh=qQN72TalpIhbb2/KqrhbGo8mAag08cnUCc3QkpJ/uxM=;
	h=To:Subject:From:Date:From;
	b=bNcxkufl7dxxfU0j6dr0y4grZgC8Ar6AcmFu4NfbnYFVjxThDXlf5kzZ4LQXCRui/
	 yG4wXxmZGnTdZujAEiiVVY/XXfYQpABcQ5MDS51xGhWs3cwJlHwhMJeP0i0q53ecIW
	 mWF4u830wcXYy0/qKyA5DKJRCmEPo3JpA31+dJfmaSlawMSlNlp7xPla/oG6P/w/qF
	 YA9JqyTFdbRrmUEbvUxXjWXV5eBpJnNaLeHSUYzs8bMbksttcu3rOE0wwphkpbQ0lq
	 wzJQ6KedWtx9Jsadp+zzTaaOPqAScIpdT7XKpWn8Q4sU0Qs+zGPgJxyQ67pJCiY6lo
	 QpUF9Mc9LZI1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9589BE6FE29
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651963358.4597.5724637435531277577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f0b755740e3726a4b597263c30583ec138a6b6cfe39742ff12bca1dabe8438a
Date: Tue, 23 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766519633
