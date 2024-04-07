Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C7A1170F
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712480296; cv=none; b=XIkijs3rIy5oE+pQT0DJKOnyDt6q8XWw2DbfISk0VrMj2ClG0h4uHmX/p3RiyxjYlG1X7ELTKgVcPvzdA6VLYF1oRvQm48P+RmFlAt39JpL1oKJs5II5HsEwOyXvyq/oDFfgFP50A7vfC7txR4r5rwC4tnxba5sejuc7lL5L+/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712480296; c=relaxed/simple;
	bh=Az7Yuylqfr/eDV25vILyGdgj7vpSLP1ESgw9xOWhEKA=;
	h=To:Subject:From:Message-Id:Date; b=PG7Zfjpto5Nvai/4j6VZwEQObbkq2B0CZ/5ovSg2xam7/+NI2HQOOnIAsK/O2zJg7/GALtEsGkjoK5H0PtR28mfT0ztirmU3iFz/aZjOutIVwrdvZTE6ceGfgOBFsCCrlaYM83/3XS1BBGxKqx0QboGZgFqioEHcQkpYUjS7BfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JT5YMnWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JT5YMnWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC05C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712480296;
	bh=Az7Yuylqfr/eDV25vILyGdgj7vpSLP1ESgw9xOWhEKA=;
	h=To:Subject:From:Date:From;
	b=JT5YMnWIj+y4O24HgeFfSkGzgx8poZyCEC2AyZ5QHWRgKq+FS/gxEquZyTNdLUnH7
	 meyeiWm8hm36buzPhJmOoTuUSRMqoHTI0tlRrTaNDkr2JilcnO34kh+x3pE5cfxpGm
	 Vkli2b1CXSDNzlYj3wBKnAkDAkW3NzG9ZlCvAV0aF12O39kS5y2CFfPWv3wsAVbfFN
	 1IJfXHqeckibs5WtUjtmdPoeCakuPmpRd+oIboqovAq1EvThNuS1SLGi2j0Qb9xazn
	 9vNmngzKwIkBKY5DUqh8vf9Gx63AjmbYfMJLZfWAFTHR8nG416pw+eOmOmSdS1RPzy
	 Yu90TLQiET20A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C244CD128A
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171248029637.27441.7806492713769294447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb393e83fbb59b72fe2cedcb4b1e7fc9cb6e1efa2a68e5486dea15d20d1e306b
Date: Sun, 07 Apr 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712480296
