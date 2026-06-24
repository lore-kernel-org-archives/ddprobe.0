Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67705175A67
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782315454; cv=none; b=ExgNIz3Kb0fCl/KeKoy9kXh61kUS7QG0LyOWmnvDjhhXTbkKaolR53JX/9gaHPzmsgoe4fb9iQCxpdab2kRvni4E/X8ofPe5iIHBaLjw07blQSgnEkH1Uq/TysZf2KvuexoYY20iLmMguBY+B/GijXmb65K3/eS0o85fNzWBS0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782315454; c=relaxed/simple;
	bh=dzSYPrOi7DqVoCCHDbb1idCmUYxDH/OLiN965dTwQ6A=;
	h=To:Subject:From:Message-Id:Date; b=nCShSOOmdkBIU7jGZo06xATFHLYGpYfWKV3NeasdxwW2UNffpVo+rRf/QMeyo3ClY9Bk63lEjCUekyh4T71PZdl7cIouPxQqDRYBFNHZoLb8EYooUmP6yV1M8bVXpg8Lw5JPx+Qb+MEBew6b/+RLgaN4I8iybxD5Dz/kRiynC2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucjIe5r7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucjIe5r7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE2FC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782315453;
	bh=dzSYPrOi7DqVoCCHDbb1idCmUYxDH/OLiN965dTwQ6A=;
	h=To:Subject:From:Date:From;
	b=ucjIe5r7rRIYAdlp7nFyNUZ6yZtdtWJHf1r0iteika08FN6Dnn8/HDwIVMYM9GsVz
	 gWS8NP7+B9wf6S72dE+HwKzkKmwjT74r2kZm+yWldfkXofO7mJHjKZJGpaD49y8290
	 W+yYGvJvxAY4+6mvOr0hBJFPPiekidsXcBaOWy0Tk1JOYspOp91Mm4XwTffP5/trDl
	 1GkB8xhEVKxmyul48EKKGWWurBOkhscHQMxgRWyQpa1j0Mx7WtnnaZyBtp6nbGejoy
	 U4pyVbCRrOYJw3Wp5RReKK8VfuGVzOR854HJRWWMy7EvLMtKfkyHZ6DQ4KQPaWtAYe
	 9BqB7qRyBv//A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DF1CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231545372.11093.11588547309565043352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a668c51c0d0c68f60d6543954709acc0db3dd7941a285548382d07dc21b31a23
Date: Wed, 24 Jun 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782315453
