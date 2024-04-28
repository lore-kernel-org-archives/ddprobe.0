Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539322206B
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714292543; cv=none; b=cNFtJwj2u4J4TyVY3qWyq1uQTzUZR3bThYrL+vN6K0X6WtoKb0P65qY845Kpy1OJqBJW6PxAFqdGf+rbUIyNWeMYSAYqa7s6pHkC0eI89T5CRkn8tJIKtGI8FZ9TjL1uhMvKJS4ui1Q1KrDeCaF9bvdohEZm4ju7YYYZpquvJj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714292543; c=relaxed/simple;
	bh=Dm4oGAKE0DiPUdIy06ga4Bjjmz0NAK1kVOmonLVYzYg=;
	h=To:Subject:From:Message-Id:Date; b=Vjj2lCqGfLrOnE5x7WJqaTGXzA1qIZ4q59pcCEqw28xs5wAdcJ+8lFuOvo7HKkY2DGw2+9hec+eI0sK8zR3QpYP1cTBU5HrIqGvyQzzFo3QkGjzVe30evrfF/ATv4iGT6bdHfELbqxsRx2N9gL0k9v6NgX76OZPuBiuLkunJFHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJWMS8AG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJWMS8AG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D30C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714292542;
	bh=Dm4oGAKE0DiPUdIy06ga4Bjjmz0NAK1kVOmonLVYzYg=;
	h=To:Subject:From:Date:From;
	b=FJWMS8AGEUWgAR1i+aaSs1kp02d69ylU1/FMxtyTmkUkz5oAtqqnGZS+CP+9SfGy5
	 jEj5BPFhA7ruM5Y5Ht9xDuFf7H3/05ss65dnkyoYRoWSgs7aCKZIzq8pthPh9O/YZ4
	 x4+ImEnHFkdU7LYwSvltainzkmhkjIW77lZxbHiGCNnchGOKiukBqv06jxzdiW2SMi
	 hT4DsUQwsgXWOZIh3YnQL6J/uvjCtGIB6gvvfm1UAGJx9woSAL+PNsp/zzOl6bqLS/
	 l2Bsccex3pY9C/KiyxlEs+MHLD3iU/DTtU00navWJeMf8dFVth2ItJoP5yAws8V+As
	 LqSmb7o+SuMGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF701C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171429254275.16447.17633746430531116200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74e610e90772a76a07484ebfa73405e9d2f1e71be7f86172aa07c27b81a2809
Date: Sun, 28 Apr 2024 08:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714292542
