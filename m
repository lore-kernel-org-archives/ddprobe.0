Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274902BD5B7
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755293994; cv=none; b=dLrozKIcZo0A13W0q0CqPcYbollefk2XZNsewISzdIngJQSiIiHQ1vfgl66GWM4WjObk0Lfxi30/Nzfs6e9u4WaROcKjoN1nTAR65aaskA+JOfPyVJiUkXrmBhxvZsZlbkTHnw5ytuWsByYGzVLz/1OenqLjz+E36W9YoTzUjEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755293994; c=relaxed/simple;
	bh=CyBAjgGlaKNkmvF4zzSoV4vUQpqFq1sS2rHx2rdRAGs=;
	h=To:Subject:From:Message-Id:Date; b=h81AVeUmbRYTeZPG4E2EYaxSNuozhIvlVO+QiR5Y8KXGx7CWe/SNJfWyu8DClAxUU+Yk8TdlV6kNUgcW551p6PWRk1HKKy7BYrsqarwrhZ8nOVUVZB7fD3aLX+AiDQEObWsrHwOglat7qlqfoUuJkBj7Ta4gnDC5ukoAZ76CeCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xvveuu9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xvveuu9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13A7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755293993;
	bh=CyBAjgGlaKNkmvF4zzSoV4vUQpqFq1sS2rHx2rdRAGs=;
	h=To:Subject:From:Date:From;
	b=Xvveuu9QNrUhJf+QVQH+ovFxBUbZ/2+Y7dMGyQk4zYQ1CBf3GEzRuWJ1GQvh9+37I
	 igRduL155VNtkeA9dK1J3/oeilOGYRYDE3NzPRkOkYIiOIxnOJFcTp2xx2az/RTYII
	 yZJcCIJPnE8dXE5OCC8ds47+vMvKhtNP8SXKYBIl/6PATtGud/lFz441U2VlPvlHIs
	 83rX5BCLWCx2Sa0EnFRxL25Ud9v59nWXpQNtyym1aucoiiWQyGH8qvfqfOUx8xN1uG
	 g/ykYPMLsdgdeARHZUhHMP8iTaJ6np9qayk5E+gmvXPljpJi+3ZKp9Cl1XJK43hI+F
	 I9KRqbgQTcUbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F080CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529399357.3814.9507706396205396873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e229030aaa4a0496cfb527647a3fce87aa131c64c164a6f0287d81c64822f9e7
Date: Fri, 15 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755293993
