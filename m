Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8B31519AD
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743403194; cv=none; b=C5Pn3MO1KQTyCbSY36UCcQwP8YnlC2r8fhGRqz6ZtJqVC7OkaMCewOT6zeuDzXymXg0vCDgYRerV11CRjjXQLgqqQWcxvY3Wjm/8Lld9VWmOWRZjexmknkAmc8jEUYrXy0jban2E5qXjCHrify4tW6bHrJGbsuK84aCnASLzsgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743403194; c=relaxed/simple;
	bh=qsbSEsrIm6gp3jAJPoKuzfDsSTa2pJ2q3FKxJU+ca/g=;
	h=To:Subject:From:Message-Id:Date; b=p4YZp5BRFqpJDy32nmGFi1lGRjT2gHTruJuv80pvpbPvgbthulruRyia+codWUQe5REquj1+7jmGIts7epPrjZeIu47+bSIKEJWxuCPAUlJbLcgkgWJP37Jgy7JhFy4GU162Bj3CG6ZRwjGXTmXAju4LzGg7lQkJ9xIHMuIjjqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6jlu7pP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6jlu7pP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD16EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743403193;
	bh=qsbSEsrIm6gp3jAJPoKuzfDsSTa2pJ2q3FKxJU+ca/g=;
	h=To:Subject:From:Date:From;
	b=Q6jlu7pPowCx/S5ANLJWod/w+7nz2Lcq0rRE016QoM/CSFzkf7AgG2Chp38lVZJrg
	 ZpTIl7esVhad11nmr2YZepjnmFC9x8QbWtC4pgGkmEpCx+W88MJHKiwIuslZ2CL97B
	 PbCZ+Tt+XJ+I+8lps5OXZsAZHssck4sz/USie5CpVDuzBpsE123fevOF6sis+edaqj
	 7TArjj2rfEJLG968LUNhtzhIhfZePKp/bp8O9Q3OXajkdrOFyeEMKHnpWAKESsumwB
	 tvhKSP8L/27i+yovwT7FjbjLya4Zx6p23q88eQUh4FH8JQDVSFX6BtHvnmB3fODjRs
	 /0dvk/GPftDwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958BEC36017
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174340319360.20141.14960305949797907580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d461fa03755a9a4604ae19fc7064ef59608b9ecdbd22e03dcbc5f2a907d7aace
Date: Mon, 31 Mar 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743403193
