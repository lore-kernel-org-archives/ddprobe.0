Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142C79476
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750552194; cv=none; b=n70oxKz+YWPdjtBbd5Ry9IIMD8vjak29ICS8IphXcvq1sXP1mpfiKYLX9if4X3No/8fTaN8FQAxUuUL/U+ggXyw4a3ryvvfYggjA7Su/OLbheVS3IVl1PZSqMgH/byTJGbF01dnKTNjfW/iMIh++ypGMETsf1e8uEy/dxcgbm5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750552194; c=relaxed/simple;
	bh=9849z37BA76idkz96Bm4SnTLcKEHimBK19GPBbQG2fk=;
	h=To:Subject:From:Message-Id:Date; b=YET3yKNJkZ8lrHNt6ZD4wBYHcBDWd+ompFW+9vkaSV04eRmhg+bxDaB6CE5WiokPPRb2eGf/fsJZ/OL0ly5vt3uK07qQ6nhDMZ+6XVklR2KIUnNxJkTWtCd+0xDlezKPQ32QARAWPYCDM+pY7CWOnxonX3+jMUQK0nFqf1ctsd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vjw2xWgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vjw2xWgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A504CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750552193;
	bh=9849z37BA76idkz96Bm4SnTLcKEHimBK19GPBbQG2fk=;
	h=To:Subject:From:Date:From;
	b=Vjw2xWgQTYwkvkXs2HKI3nk7YIvbomiAPsg115ve135usNdm404Ouf6Vu6vD1COiH
	 p2lyXt87vZ5N+0JbXSMN3sqbIkFaZeCWRP6s4y6zT+fSB4eV5S6z/9eEzlXQg8CqZ3
	 UNXukMoxvBWhpynSiPw7ICABvX7lng2PN/J69f2CqnummK/3+xs/uLQoXCTqu752t9
	 veJiEAKrZ6sHV5Op2juu9pOXnF0XDhaEBifWETaYe/8lY/4wSw7wxMvriRWpZhjXm1
	 84CDVLHGicrdBWJ+YGRku2ruFoRKnqSbvlVKNXuthcZOxhlCbfpg61lsQ1o2+VBFNT
	 ixMOV8vgTjU9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9032AC71157
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055219358.20624.13299522199442980079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2380a0208cb375a4d2cae9463160611a374e766358127bf257eb6a8b649bb76c
Date: Sun, 22 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750552193
