Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBC0189B91
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747114194; cv=none; b=LV68A0rDVa7olWG+7tTshfwmZ8zZ7quaQ2RuUOwShkYYHDQrKnD+6jCfK97akzNPEdpZbkPA/UrEHrAtg+ZRXJCJZD00PJ3WEFZ9q82Pn3c4QjiXIPSO/t2l+RGn451tXAK7b18XDj4E8HY2XuD/U2lVHQ+49RKAo8fPvWI7OkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747114194; c=relaxed/simple;
	bh=m4dF2UodZd/fIGxtYrd8Yd7E1wrUIHUhrSJeT4Lp1S8=;
	h=To:Subject:From:Message-Id:Date; b=mqsto5J0kazH3+dEAFGjikekbDKvDvxNogLRT0HEJX2hiaVaTu5VDTPVauPQBhI3PU7cHdEn9Mh7A9WHl1hJrOVdaUhfU8ApinHyKiqBNdZbuGDmyIlTMRfL752UCmYBgAh3/yVJLzEa0c9jaB6E3+ULvssu9WTF03TLdGPYNRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixNeJKPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixNeJKPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1290C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747114193;
	bh=m4dF2UodZd/fIGxtYrd8Yd7E1wrUIHUhrSJeT4Lp1S8=;
	h=To:Subject:From:Date:From;
	b=ixNeJKPlMYMHYG4armvYKL+rjTT5mJE0ErSz6WQWh12Bd7dnsBmKuzIF1T4F6PJ+g
	 nnzP8HEgQyi8KZnRJek6DoMFICMSsac8lvA0LsxYQgXKwje2cmyhCfQI/UuSUQzwBB
	 vuqc3szpMSN9TTtwCLfrcXWWQu/Ty8ywcJk0rSEcfNxSsmopraZEedqp8kkBlNcM/4
	 Dcf+ecobxSoPYFHvQOyIrVRGk+xbg/hkGo57Bz0bpZR18xiH7+UaQKeLTAqlB2skJS
	 aXU/maTjKbN1Y3Gsg2lUjciMPqbWCx0WangX8sP9fMAdHdVvY4fQ8Q/UwwI0ouNAGj
	 qyt+KyILcD27A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF02C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711419357.7527.5540534981884312279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30279f8ff81bb3c9fadc684a8ba5c849714d29f56057eca4066f7fb021999e2
Date: Tue, 13 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747114193
