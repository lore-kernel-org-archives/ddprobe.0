Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434BD365
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720397783; cv=none; b=m3CJfHTaGhSS5jdPSzTMzRY8x2Kg+MANQZDoHmj6uWl5C/zC6MnCZ7igd4emD8Uuyl3gFq9XzmrS4nH4z+NDdYP7IOYJr//lKAe8bqosvHjIwtLsCtqugpTWWE5FsHzWX/PhNY0vVaSGaCN3ND7NtSekcmhvb/Y403U59VhAbnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720397783; c=relaxed/simple;
	bh=2uUaMZL4LjIpfqmZl2mCui48Z88ZRfyNkYiJ0NzOXok=;
	h=To:Subject:From:Message-Id:Date; b=DN37Xr85RkY3HIn/YDQst+4o0X6RpWjGQ6Pko0IphDGadSfdBmW4gDGJ2SPbU1Gtb+8g0dtW2+Ggh1fjnvIAsZtqeI9Qa2l1suVPb5IeIxFsrHUUlZ4PZ6E+69nc31MnDP3p6Z9MsNIG9LK9VajafXinxIheJb/u3hkBqyhHPXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=US3+x7md; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="US3+x7md"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60C3C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720397782;
	bh=2uUaMZL4LjIpfqmZl2mCui48Z88ZRfyNkYiJ0NzOXok=;
	h=To:Subject:From:Date:From;
	b=US3+x7mdm9gnEG/QGXn3rtBQ1Zc244lWLz9dr3CK4vo1FmnkBx4T9sqzjsh+9ack4
	 /5+Mkk/TtPnY52J3/r4DIEbWxm9YAc0KsHncYSD/lMXOMCP8r/jZr/nNoJOtb7SybX
	 gfiFHAKvshEaxGn89ras754WpFYOi0pmtvCPvhcTES1TV7Tc6I1Bl7wJZn8O2ThJfN
	 Nhy9LNi1Zd01nCk9ZFx3fwYNkbS7JeE0p1F1LIFVttpxVeqR+xCQ+VVGYUFry0sKM/
	 G1wKxTCQJ5GjT/9F6YhMohnR4ultlgjTlTLWlOOkPtLdsF7Rf4ag4Wof3Xi04Z8TSi
	 koIcQzkyHgNqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BBAC38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039778275.20595.7096638803826823835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25403650b4a6c6a4f7f4f35c3f97aff9c12af8df66d5976d1d7dbf72d9f30f5
Date: Mon, 08 Jul 2024 00:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720397782
