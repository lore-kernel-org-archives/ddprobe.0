Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E303112DB
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768969435; cv=none; b=d/5iiyhtgK7weo6tXobUaugbXdqEVnUDBI8qBYbrSJsDRCWUkR9mM6Lh7bHLXh0gXVdn9/Bh9G6RuRi2TY0fNk7DblfZfZTEW2c3M0ZAISBUjW0rEe1aT6eYWTO7Kov0qJS1eaGFEwP4xLezhMpG9q/ZMdA9WnWekBEU3e6UUYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768969435; c=relaxed/simple;
	bh=gi9gdvAQC6rYj94u8JKM6USWrYWRqNwZWrQuJHFbE0U=;
	h=To:Subject:From:Message-Id:Date; b=LbAU4JysCiGjQurJEVWR7f7XejDeoYPjfAQiNi7zNGMNx6XebryLmi4KZT1tVU5b1q0iepuO1LD3ULyvw0zJVi/9t+9wFUNTmZnRWeTOzF8KAWKndhZK90DA8DU+vtGWz9ubAPSGi3ILVi5ml0icU0vXBqN8AxfqvyVMHsiAQAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXBI/Xla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXBI/Xla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1C7C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768969433;
	bh=gi9gdvAQC6rYj94u8JKM6USWrYWRqNwZWrQuJHFbE0U=;
	h=To:Subject:From:Date:From;
	b=dXBI/Xla0+4k2EXI1KF7iC/8ee1ava6pTZqHSv0aKv83G/uS7ka9ZMy5zaU3OPKnN
	 P2ndiEDpX1L1MQuV2ISA/g/sLoQvjaTK/11dtt3MuDABp3O9eW3zrgtL3tSeG8G4ND
	 QjpWbDcc2OnX9hsMYL0H6OcAoexjoww93ceJf7O06Pyt8hpP/43IvFw/sKAL97Z3i/
	 WwWoqjvX7h5Bnj+sMoO0Ei0PDp2o+VpzSXM5v2ox/SD/fdrvwRzjqRXvcEMhiYYCG4
	 pmgbpXfXuG16KJ1vez21aYkl9AWhCH/kA96HR9AOFy3Bjly7xOxH9WCaHWj+mD7bCf
	 cp14v+lAhXIpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4048CA5FBA
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896943363.6344.11634683063622065453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3b23fe40cc2744dfb29dfb042b7e0d2aa3d97f0091187d8df5f43964a9ac09
Date: Wed, 21 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768969433
