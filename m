Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8AA56B67
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705694897; cv=none; b=NHIfYCeCkHH0hblwNqSTxbD+gmLfarcYq3gncDcTPMJIWilzXmoGGGqw/tSzGDe34KQ0VS2f+h/HuJROHP3KA3hBcb4uM2kbphFYhSVWrbARHijjrkZSvhZj6F2KI+Mp0Ql+VytMbTAZpUZtoBwBLRnVFtosP3o9Ic9eUr24lls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705694897; c=relaxed/simple;
	bh=QIZKfUgmsleBlKFLmggBCByOY3GniNW1pW1Pooz5nfw=;
	h=To:Subject:From:Message-Id:Date; b=ApGaK+pfDZAV6kZrHYcnlPgEvtM/lsNMqLFr1UBXsqCz/0t2Tkx8e9W2Nie6t4fuphpbSgb0C/yLjayMGHukG3oVJVR+Wcnf6JW+kOBeIDZn8pwsfY8UyUHv1we6Q6KZEWVT8RUVZy10ugGL8BrVlLIVCVcJ8afCk5gIL6vhqvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpltRatI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpltRatI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B1BEC433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705694896;
	bh=QIZKfUgmsleBlKFLmggBCByOY3GniNW1pW1Pooz5nfw=;
	h=To:Subject:From:Date:From;
	b=EpltRatI1Vccb8mRIob8aV8IQOnwQUIXEdtG5UZFcjbKKq5BuMgb8e45MzgyqbS8b
	 BS8AnWpNxdKQNfFnWYVN38/HJ1lCtuTSrlr7M2QKxxZ9z/9MGkMjqfJCFSvE5YejXg
	 bRl1CrhqwYGc6XoI0Euq2/cWhPr27yOpaedOErRk4F/O7dGgPRv3+e3jqctCySADKk
	 bjeCvVfOFrYEdcc8+nPyYB5thRseVZmCBB2/KX3/CA+Qa1dEkV1GbGkVuQIA+Iyz1X
	 uHRFbO7CjvQLcCh8YhIQrecudv+PX3UXGdy7vING83FNSYEy8jDtxxNZc2DB34WPU2
	 VH9e3pgAhn8cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EB7C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170569489636.24649.17057011402852623505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a664d0493d031fb7ef0bee93fcba80050f4611ac6db8c27d677f4e7e08f8c8cf
Date: Fri, 19 Jan 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705694896
