Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3370410E9
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734914154; cv=none; b=GTsKbcunq7Ziz6R/B9HSPbcBJ0hucuCQhMRl1wFktHpLP9EjmvkXgMf7YbmtNxcPXnbpupfA0ZEJqq4mMdC3kGlhBC6LFKgWJV/pgD1ydpH7KTUDN+r5wH5UAsejPEjm09p9E/4VvwFstQZuJxIKb1CI4t6kef+0NWrhemVQZrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734914154; c=relaxed/simple;
	bh=KQCrpqYumpy9Jj/vutTP78cpy23an4PyD43zEjYKl2M=;
	h=To:Subject:From:Message-Id:Date; b=oOUq1Vds5Qj8kz6wY2XtlvTCAaimFP6qBopD6A4rrB/4ob8v/CsOoUwvEc2N7vVfVzFM6Ltb2pu0KFWpvSZtMLPIVetDGKXN8IqkYE+RlRHe8mWFxaKi30jcJ4cURWzbsRrsOaOJeVbE8EFBDOR9Gjc0bJw5yFerUGAyyfvsVu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgSqs8xJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgSqs8xJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67FFC4CECD
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734914153;
	bh=KQCrpqYumpy9Jj/vutTP78cpy23an4PyD43zEjYKl2M=;
	h=To:Subject:From:Date:From;
	b=OgSqs8xJhiQOw3VHs9CS6ZF/O/lagbNGTd4jx7KnMJniofjfpVLzT/WLWql3YNvnn
	 j1PP4ZA1aB2KQM7ay2+MZTwzEh6mJasFfIjMJ6zRlMWiuaxKxmG6CB3l8ouo7Dnz6l
	 9eONP4M2cpZKo+6rJNtAvbkiy+FWouL7458KewHSM5/mNWb8FVaIw89C3krNtyd0ky
	 VKvk2N0gpKKlJRQg2ahU2K3Ay241Gc0IX2otzqZDusMBUUwoGxL6XSHHVP6MTJW4cf
	 CenqS8GZPHFvPDd6jNXWwjzSlN/RWtje1QKy7klvU1DZyM4ta1biUH8Bs8B4uoBqgi
	 4ikst8uWCIT+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E44CE7718D
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173491415363.3570.5769131881946033387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5883176a61d7aa947021b14886ca8c1486e8b30e5d0aa5225180aa5aefd839
Date: Mon, 23 Dec 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734914153
