Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A81C361950
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785972034; cv=none; b=oFb0YT/+9Jlja1dXwO/AEtvnjwZCoveV2K7mDn54XiyaSbYhIyiioyE7TGupfGmH+Vj77y/fVZl3knJEYGn8SpI1RR7N0uVMEYKucMiuaCS0BZYISo2kGCQ3wYVMhLF4Ubcif9YpnOTudQ1vZnePYU4j4QFOZ+ktxK1Tr//CFZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785972034; c=relaxed/simple;
	bh=FxENN4z6vFetKMkISAimFjzBxu5lYY1rtHXbzLqMxZ8=;
	h=To:Subject:From:Message-Id:Date; b=cnnQme5690PKILHneDdzsXkzirnr0igsU+NqQNpjb/bocx3RKdYjKp9alLVUZLvwHMM9kkOyfkBEHt/NlNNlNLinliJMAuO/y9X+zcOL1MIBshyJmTNHNi+FC7pn4pFe9WzRGwQXd1rq1xkwGMiQOArsjMLsJ/Z0i8i3ZShkjS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGcw8UFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGcw8UFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E921BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785972033;
	bh=FxENN4z6vFetKMkISAimFjzBxu5lYY1rtHXbzLqMxZ8=;
	h=To:Subject:From:Date:From;
	b=TGcw8UFwbQjpYD9EPytw2UmMrsNYKAraE/noPqnt7NGT5Uh8I0KRFhFDpKiV/H1wd
	 3+5RJ4Q4vNVAekuzO5mhbC8NafoCpWOQkZOgXo6BI9/Xrce+L4LRpN7GHk+76UOtL6
	 0gGOMxHH0PjDfkzKLPAZCuxgstlNoJHefIMuAywi9jo5RKcQT+FErx/NxSFpKwKOdA
	 Hh2u/QvS3CAux9D2Y70PZFVh31jwo3MPqMg6RPDJzmyv5U0wojQ+IWxS+m6/eoW7jV
	 jF2wF6mRnGoClGKRjUuzVI6iw0cig/5CJco8+xeHJ7FZJhxZ5ldEJbx7UKMF2Woonl
	 DMapdY7aujr6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB57C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597203376.22757.7235654848736599776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e683fb5c50f118b8e550ac4449752c3ce57742de99ff593afa9a0120fceccafc
Date: Wed, 05 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785972033
