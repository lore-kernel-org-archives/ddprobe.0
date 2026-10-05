Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A4B47255F
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791208234; cv=none; b=bv4at0Dj6z+/GlsrFP7dScCGUbBWc2xi0Zxv1p7xVUzJ/tzZSr1pNnknEN36+ZEx2lFhoxe9md923qKZtdx96uUsroPdggG0LCRI0GGImb0aXnYpeumJU7ZlkCS9wsvzoJiX1ZaoXbfWvmoFdOOA7Zje2YteciDU8xE2sYcJ8CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791208234; c=relaxed/simple;
	bh=qTau7tgoVNUWz42LvKPaHcwHOgUWw1C7gtFi8Uu5xpo=;
	h=To:Subject:From:Message-Id:Date; b=qVH/w9wHQpIy7ruzl9Ovz/JcPA6ovgVH8Rp9bzGKAikIZAmijBqP0Gpsq5UWV0w+Xw61b0TOCxrOnX/g/i61vIkrEJfWXjwOsIfKLYY9fCh4UOYiZVEn7bHefJ8GcMs8GSzPqCogfauzUjMxuKAXl+zig7y+PZjTPPwcs4N86AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bydka6T5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bydka6T5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1163C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791208233;
	bh=qTau7tgoVNUWz42LvKPaHcwHOgUWw1C7gtFi8Uu5xpo=;
	h=To:Subject:From:Date:From;
	b=bydka6T5AvXpF3R+ClRvohCUBVXAbaDghuuRDbPaD/YnqQSxEc3FUGrzZmxcDNqPg
	 R1QWXoln4H24/lMh81R25ecQSgAgtWUXQnoDUKdqvfXgGPkZMeqhHOh5MWPHNk6ZMM
	 XB/ssrEnM/CHPR+TNYTtK9QkMNPBSCQXHYuA9Lff/SWep0iyTrqDrKOkNwTuQxC2Ll
	 38XxZ2JmrGjUOfU13j7KQuTuD8hXM8iyYdTAw9fHmwjXZi66Bq7T2jn2zVHO7nITVi
	 jU4j2L7IiqOC0BKCXZj8wZ9/co0iKX4my1NoUKbTPmqMHm5U2Mjhfn32UJYMSFheRf
	 s2wbY5x61NfCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBDACA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120823368.6900.16577571908918461500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3c1f406b2ec9c7d532bee691bbbb3846fc0320051d878c3e281159e4da03bd
Date: Mon, 05 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791208233
