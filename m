Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A9A2EA173
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779375635; cv=none; b=MzRXX+WA+MU0GDRqxA7rrJ3c04z8AK1iMt1QzJCrq1lmu0LtoPhCH+nrptZ14c0ULkC6+KNW+oQ77PYioI2FCDYeyKRkx8SfULzBmK398H1o74leCySV4+EZWTsg+LOA8XCU3xEsRUZuu77kzyms0RkAyTaHhtUzRCkiUOjjqWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779375635; c=relaxed/simple;
	bh=y5OABf/Rq7S+8wFN6j6pCisAMzBCLUAnJYH2M6gYdD4=;
	h=To:Subject:From:Message-Id:Date; b=aZH+tDaF0eKbQapK+VUZct9A7OaccflhEk2mqOUzgKNvI1SO0IOudQR3rbFnNO01OBPiU9ELEEwyZ1oYlBVpYh1sR6BeO338/S6FkUVSqDw1QZXEyp4LH6Sn17x0cZlBYggBycDaINvjbSo1/P886SWYsBMWbQS4cY0cPM1KVrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1fnkZIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1fnkZIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8144C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779375634;
	bh=y5OABf/Rq7S+8wFN6j6pCisAMzBCLUAnJYH2M6gYdD4=;
	h=To:Subject:From:Date:From;
	b=A1fnkZIuyo69GmEJWm0APjx3sCS5A2aqoDXVTvwLFOmRxJ0AsAUrX45PHBD2uxqiL
	 5t1rYOA2mqzpV2ltendzatuQdqcMeCiWTEfPTdh1nzT0KERhJxLQUH9sypjFnZSi24
	 4tR+slj00+8wnRM2E/ujOBaQzYN/j2GIdd/M+E25sqL2SoFg3vElEOnUzECwhwUG+B
	 PbUFcQQrS88XIzy+HJJKRIPqPHyQNgM0NTsA8p7RZ83hyoUPb4MDX9zfjvukE7TpbU
	 v8bg8HspFppGrAjU4g6jXlnj3hKq1GQvbkJJ1GnAQPfl/nKSrFcdWQ4Ii2UTL8c+J7
	 UgRURVrU/LsrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509A5CD5BB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:00:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937563429.32650.6801491022268393058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510bc6a52e195b1da8167812bfcf2454f09ec903bea968403b813bba6f39970c
Date: Thu, 21 May 2026 15:00:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779375634
