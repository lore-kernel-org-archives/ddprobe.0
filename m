Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4032A17A30A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782709714; cv=none; b=u3K/83taaX3XactWRgwG8TpV6R//dfJVHmmxzcVlXpB96puMAwbh2ykckhnCyUpabxybF2Bb6BlQiQNUBSQiX7G5AZjcwG55acjMjgd26otYWG/G/HuIjIpeUwLJEJ1tMNNhFSOaSnfiIg7K0ZUGIRktoOO5p5BIC4GDGAUav8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782709714; c=relaxed/simple;
	bh=j6nVcrxlo2sDuGLIzj82Fyf7Xws7GOP8SCXm7bzXsdA=;
	h=To:Subject:From:Message-Id:Date; b=RWJpe9P40y0xlIG6yRHalYnPSiR3Ana7aLZ+tV/pgmdIDIlNk5m16E7IUwPbgvLhkKuEw5p1+9XO6Qxom/afRvaumzPwzqoIszfirArTRWl1lS9OrmOnVyLRCoQx+FS6wnz8ZOv5myJUCq44QSTwOnoB9V+BtBgQ9zJm1GJHA58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pP/7ZZJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pP/7ZZJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1CFC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782709713;
	bh=j6nVcrxlo2sDuGLIzj82Fyf7Xws7GOP8SCXm7bzXsdA=;
	h=To:Subject:From:Date:From;
	b=pP/7ZZJdxdYGR+yviMBO7IobhJoh0Xl7xTzZocSUDZBsp5k9DbfFIJIEirjYFQFo9
	 I5WSzNXr3OfJSRSjJvDyLNjeAkC9JoXK8cN2ZT/6SSCn2V1MSZXOou4SjMiGOIAF6B
	 PbB5zKiwyTDiFgFvWXPaRYcVLJNeHFqQ1h2AbZeGn7+hzo9aipaSDIG9xeCcslAOsW
	 mRD59apnUyQStAWxqA6JyAcpAREapmGENI2h6Mn/Jgkk1RLvu3jtzx16LrQzVF9GpE
	 hh9jgAOqg8oOEvu2As+bfgJj3jboO6rb/RWplU/euoM07bhZrtlIIu/S9wH9V9SP8c
	 xRMizrCjWsA2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB25C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270971369.7013.11716070852368261829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f2c90489a40d9d239ad49e55935984723e29bd0641acf5d937afbfc71ab2f9
Date: Mon, 29 Jun 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782709713
