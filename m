Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B611380
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746231594; cv=none; b=PfLqfDhqWyw8/pfg/UcPjGvq9s6UcWo3KqWlaYiAfim1xp3AjXWO75uiIMi5DS/WHLFQk3fBG6hEUoB4BWF8XyYb3utUB2W9kBu5RlnlTurRqvr2B7qYcipDZ3TYv9wG1RZkrGbsdAbAOWKrOJtG1igEXcfPEK8nT5VUSS0jn+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746231594; c=relaxed/simple;
	bh=eGisDpNkk4Rf7GcewM+GNxu3FpqpWksPLFq1N8BZwas=;
	h=To:Subject:From:Message-Id:Date; b=FFOTFaBvBCiQNw9o/WqKV4g7cfAl2kh/lIRxvcnoDrwHHcyMKfvpFoFmpagjAJvAXmC/N6Cy4bOXe6+QLO2fuEvNSP8Esx9TL6/FePC1JZcAK/ERJaw1pe9dSD2hKp4gFWqCwqUoRNEcZUEaNECvkdlfgks/7VxCAfclpy9BwFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBABZJTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBABZJTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3624C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746231593;
	bh=eGisDpNkk4Rf7GcewM+GNxu3FpqpWksPLFq1N8BZwas=;
	h=To:Subject:From:Date:From;
	b=kBABZJTLmCkB/H62StV2hHS87Z9n9Vg/Hnd+TESmBp0W3BNqwOkmOokwusEBQqX3B
	 eg6XTwx8nE2Xre0AKtzupb2n2X+2hB/jE7yiULgrQow2mcHVc2BZs07joLsKAEsP6E
	 A7fswFRFt358BPR8Kjyh1sYgU8alG0DYjY0cR0BTfPJmerVhoPaWyR8XfRBxbEfzAv
	 Gx4Gf7AWY6I0b0R5sy+fjECUhJCXIHFzMxYeoMK4swa1iz+M5gp0tgQtrLCK+2RWcx
	 Z3QtMdirfLgX2NcdaX7IBGk/wJ+dtS3gs1/CswY4SiK7lTzJN+vceVJwvEHBjjeL8Q
	 w12S1FXTidVjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F020C3ABAC
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623159357.6747.9499323038717148762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eeca24235488fd0d5932a894ec272e24e7bd4ac4abc5ad43643dd67284fa450
Date: Sat, 03 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746231593
