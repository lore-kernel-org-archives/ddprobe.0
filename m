Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E5812FF7C
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708004897; cv=none; b=Og9Pj8hvn0CuM9IzLssfBYFGHb0c/pPmEFHVlYhBrlmutKeg3cdG4dH4SeJJHvUybgHO3NdKMP1dmCNs155NZ0U1+yMoWDfqtugyqxnpRgzOisHax4QXfxYpr3K+93khfK8ewumjanb4PpHC/ENSU8qgDY5aVFdPbFyZz+dE4Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708004897; c=relaxed/simple;
	bh=2WgDYRajQwUzY5NHz3Cg04bTFW6W8Nw07jT3q84MOPQ=;
	h=To:Subject:From:Message-Id:Date; b=baPoaqP2OaNfqN3WOO931JNZO7rQQaxlK+FKkD2jmUzlkDM9oX1fuIjMNb7nqX9DqfqtkFYvgQP9yGMO5LX/shROnwgWpaZypZlbXjrH3OUcJ74cnJPDHrwJ6s/cshdbGcmmSzDwNsIOO+Vpsvx4F4+XdFMIXmwtsnMbwKLuJ3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyasDREB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyasDREB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87933C433F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708004896;
	bh=2WgDYRajQwUzY5NHz3Cg04bTFW6W8Nw07jT3q84MOPQ=;
	h=To:Subject:From:Date:From;
	b=DyasDREBYpkYJq9k1LW68BYxyNeEtz+xe+oRBGjvuZMaeD0KePeaEq5EH7rrR5Za/
	 266b36tUVTE8e+rmXnhQNc2wcH4P8LT9NMcZx+VqaAseOj3X421A0iSLxDZnE4c/Ah
	 jpe8tvm+Zbw1drddqhJ8nXP61GYHKvMH8qxEkCMrQLguvsq47nytA0bOEwZIYyBC0/
	 hyMG8bAiacNp/IoYnBIVJGe/ztWQgOghZqcr9ENt0M9tW/TmVzbEEwH3uxnK3cPzc6
	 Th5ES/0/rkj9DWfWY8UOcHA8NhE0QW4BS9zoyjKXeMq5tq0gBb7QWIqMP9kEPrshQ9
	 ToyEChbhywf/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B581C4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170800489641.22250.6617202715253023773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e82da88b36dc756b8bf62ee43c1c67e7ca51cb19f8f99166bd0d0c041ba5be1
Date: Thu, 15 Feb 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708004896
