Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A65F382F29
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772657094; cv=none; b=ZxVXkBCdRiEteqk76Tttrf6sS1pGYX4CNJUhYfr9DGEnOoOgx0mGGrgJfy8lOqi9WH6JXF8rgevD5SwWYK97XjfP6F8eUhiJp1483oupLLdgpcOhwF1WxOqiWR84B7eJ0Tjg1Yl4kBbN4rbk+cO8tTMo/Ej+KnN0AuBvoxV4Lgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772657094; c=relaxed/simple;
	bh=h/DyytQPOeYb382ejo/y1u2L21X8IeACQpXNeSC0qZo=;
	h=To:Subject:From:Message-Id:Date; b=sUCFh78mMxt6oQaDT1Tt2ptH7j/VVTeOuUFeesWchXgkVBpq1ObRGGf0S6yhU8GiTJlYJ4Q8q8pIPEd89k2kJAsd2WgRjQsEYfIQuqgmhRPZtxKE8ITGc4RddKJB58FQwbfpaEk7lvycVxXLeAW2h4F+bdw/BOepL9vnz57F2n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIWpOY/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIWpOY/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0761C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772657093;
	bh=h/DyytQPOeYb382ejo/y1u2L21X8IeACQpXNeSC0qZo=;
	h=To:Subject:From:Date:From;
	b=bIWpOY/Z/7uYzGhdGp0xywWehi9eZ1RBr22d3kP8dYPcJgmuJqKftr8UQDbLHldCm
	 wV7S1oUqH2I3973V5WAgmQNbXVXIrOGdUSCXx3sw39qfnECGD9+2vekxcVMaFwgM+b
	 79mOvlEgxDkEZYVWOkk0QmyQQxeWlgFPWsIqPXUddTlDhPlPDSPZE4jQ+GmjU0z0Y8
	 lkE+ZoexceIHITh0MubTFhtd5qI9XpWTatBaNhe0DhJf1l8ADsq8u9a0Lp0JzsnTCS
	 mVRc6mfAg+8xR6xVR1J2BoQmVUUVUCoWXlrQi7SikoAMXNxJjiNJLMIGhKC6k//htx
	 SV8xrpHHp0aGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E8DEFCE4A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265709360.13805.16360849139820147947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3399785d91178ec30e5080a6e0e30dda8e81c2cafcafb6e09beb7f824eb37e
Date: Wed, 04 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772657093
