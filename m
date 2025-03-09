Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515331A9B3B
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 09:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741513134; cv=none; b=VatK63x1Sz9nvk24Zw9sYh7tUIwyAV+AyqwZmKCFH/YaukDjzZoIdrE4qJQEdhQt1iAcdEy1V/PyTRAxvZlWM6MxQfJJ1qoKx5tYOD5InWlZmUj+HG6bis1wNb9zJc52XbejPf72NKT5cJScqwmHxSx0t+6Oc6zJlxhg5X/oWCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741513134; c=relaxed/simple;
	bh=NdLa/xR3LGeUwwfO+MbAegUqz2i2e+mc5EjKUOMa+tw=;
	h=To:Subject:From:Message-Id:Date; b=TLMXH+M/IXTZOpSsyjHO0navjks7gRPtZ+u0qZStbjlYJf3232ftAjNgOm5xT/9Sjhsf97g3hVitAsczIE079d8cJ6CE5yEQ8TEnx8FZoLgW6OlAJeYoKFSY0eeUWyPS7BB9uStqMlNcIOowE2FNxDaYj4h8pYbIketqIvO9QU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tll5Mh0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tll5Mh0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6ED3C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741513133;
	bh=NdLa/xR3LGeUwwfO+MbAegUqz2i2e+mc5EjKUOMa+tw=;
	h=To:Subject:From:Date:From;
	b=Tll5Mh0/VgFG447sfCe84qA8bHDBq0ytFGu4yuJ3tqJOrApIqc4dxiLHg3ILA/S7V
	 3ePN2LU2P7ttYNkt9V5GjAznAqCGvqdSwMxsveZbfCdkFcKx186whEROFJJ+MmqIc8
	 x3HkGs8zZp9vfJrnIXEo9iuhf8c/2kIOeB84cy+FOgvyfYPt77P83h3xySOVez0UZ4
	 +VLwKcch1H2AdI9vBA4NQ4L2udNS8IcX/dNszLXuBTcI4rQ13sQSaMm44Gu4lhSWEP
	 QZawd3wzVtbkIyRgUPky6ARJh+wgp9vDhWM5p591zVZlsDbiyS27ed7iC0iFDkkkT9
	 aOsRc9zuDQEYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B784C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 09:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174151313360.667.13301969229480982909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46bb843c54eb9902a94653f37c5b90879c37e2930fdfbd1b3bf06de38640651
Date: Sun, 09 Mar 2025 09:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741513133
