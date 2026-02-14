Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F08B128816
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771053294; cv=none; b=I6Vpqwy9nj0PoqiVKAEajel7cZr9v/tN8JLM8CQqsAeGy0SvJYHibQGmnlINyalG1N1xPJkQAkZ6IrM5CdPrJGnQ+iSHN83MWciMVlgRLgM8kgpDF0npJjAR46w+05bedMUMndunGBhFFudXgmyOey8Gcbx9IlF0wN3fe59ttAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771053294; c=relaxed/simple;
	bh=zd52tr9NnbmR82JDnDXrw0OYZaLAqFKMVhh9IC7GSrU=;
	h=To:Subject:From:Message-Id:Date; b=IDvSD4bwZfDyrGq/ZqCmftche1Gu0hIlvRvtgvbSZec7Ljif9xse94d3lvx4pPtAeI5lZK1xDAo/5iR3yt5brex7ZOG/dP6bTpXfZ3zZvTvvPD+xBafN9OImxKKBbd3v/I4XJryZBUOaM3AVz42IYIW9Ppcq6Y8lVViElStMsCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6/kduDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6/kduDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5B6C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771053293;
	bh=zd52tr9NnbmR82JDnDXrw0OYZaLAqFKMVhh9IC7GSrU=;
	h=To:Subject:From:Date:From;
	b=m6/kduDz8h0n+AcmbXlza52JoU3je4yGxlxgCnH8NizL/5/o83ZuZFSpxhX+zOU3x
	 5J+AHT1FP/u64P9KRJrKAF+fFNHZiNDb1UjiXUK6iAG2+0qcqaNwePDkrz+ANt+dro
	 58IcxU4VZjGngVN63UPc1e/Uyc1Q1bgFjrJ1mC50pXjEdeS+77zod1LK9K8OQgJ6TU
	 GS0JNSavn4/OL//sOkzX/jbpo6KfvOsiGnpogqOcKSM/2S2uVvqE9iXRe2IAbj8AVz
	 GLJaiOESP+HOcz3Gnf6bGjoUSnr0zulTri8VNF2yTParkkp0vKJIujySwrObnEPcHh
	 BpfPBd00TSwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BC5EF99E1
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105329361.23602.7670385944228361865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6ea39d100d6a1f525f02a31cf3083d602f75f024acda1c25d87427fff2dd897
Date: Sat, 14 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771053293
