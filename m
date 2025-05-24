Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E2D13A86C
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748105994; cv=none; b=h/5XZycBu8IJuw7F4YwfCQ+2EYZLIt/cCfPqi4U5q8Ol6L9mdIX0uZu6fERppgZRMVeHr2HibktBW9q1t14h8ddtKEqPi6+LEazga4Lzb2RtJXzCGeyFYQ8RPexIoYOFLgGIfgGiB7apCgpM51lxftPVrZtBNTeeA986hSe8Vw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748105994; c=relaxed/simple;
	bh=OdrUL9qNwTjTPWmuaG9F+3U9o+rjHlXW3ZVSnW31xxc=;
	h=To:Subject:From:Message-Id:Date; b=hhDrRe1QS6BVdNh2DiknIm5crXcPImVRXmLGsd23DqTbitxvcXx9VHfz7tchdox/GBIE2iGtRRazKVtfAlzHB0yIm0sznIbPlenkbivMBM5rTmOhYFXFwMU7eoZVybcri+15JFnhPk/k/mf6j0bpam4RwLeGkcYzVsAMcBqAabI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GswxzkNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GswxzkNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A879FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748105993;
	bh=OdrUL9qNwTjTPWmuaG9F+3U9o+rjHlXW3ZVSnW31xxc=;
	h=To:Subject:From:Date:From;
	b=GswxzkNcQFe/AvU6OOnwjyB1cuq77mYUUYzQahg/fx1bQdj7PfGNte1A6+3oLfIvb
	 8MswQcRNswHb6pC4eIOrcKPu5mm5xTsxvq/k6kZq1DoAwWIzLqIlA7h0OYjf/FGIUJ
	 8U2gSUX9aAQKFaCISKVplqtE548s6UN2ExuR94o/MBqHSJnNHbeqTRjlKd6GpPx1T6
	 Ovb6O/5LdIX5sb35VxcZAPsC104PmZK5BXsv7jW3cg5ftWnQ4YxGe7ssss+AX/kRSV
	 CBYivxcSpXRn6ofhxsvgWEx2tE8SFR2I1NuVehO3OyFG4BS+lkYxf+TA0YkmedbPoq
	 qVEKTDZZ/IM8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C8C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810599357.25708.15276577686797602008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b065720817383b01d817445f885501ead3974848a33077da8572a45280ee26
Date: Sat, 24 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748105993
