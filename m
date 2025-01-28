Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC6828DA1
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738104354; cv=none; b=uEA2JXMxFYoUqQ7EyXYctFlf264OBrRDiWgyERZW6XTj6HTmkj+aunvtWSAqPYdvjKnq5h6bGaRA/fKpi5Wp85nkw6FBTri9p/rDzm7f+q61qspxePM7UrxmEfBL22KkfdZS+wfU0UdAQXdH/4cyMjG7OyrmwWjjrGjOCQLcapA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738104354; c=relaxed/simple;
	bh=8eEwKh2O32e9ykNagZV8BKun4f0xt51Ht1NXw3kv2ss=;
	h=To:Subject:From:Message-Id:Date; b=UUgHWmnFoJsS69WrafWA16ODBo9FwVHplLFCfm3PsER4dLAF3JVt/DbqR8VXLYZWhy3ilLgYCEKP0q6kZzlduWYwgBrVGWcaHWKkFlaPj1kWvwWWrfGsrXPC2M1GCQrAjTqcH0ZU5XA2r6fm2M0mH94NWhhM4uEErZ6cbrK2pIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jN5cez54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jN5cez54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2814C4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738104353;
	bh=8eEwKh2O32e9ykNagZV8BKun4f0xt51Ht1NXw3kv2ss=;
	h=To:Subject:From:Date:From;
	b=jN5cez54UBwX3NIoP7twggh9vixjhNMvJaRdHW7GuWyS80GflMwALSBdjMyOAQ8oM
	 eQ2J1G7fp420iH8AcsGc/xEq6hE4xQo6FGSYm2E5lE5aKLbDpmUYREUW4KF0i9gfhU
	 bBjSMfYWqpPieiYmJUTVZ8nXJfKSnFO/f7mR7JC0vlBirnu/WoAdyy1r2f9wT6z7nr
	 vQdhG413fJj4/l57n/7R3yWBmQZHmwln0xciDJKLuPgc9Uw5TqqGRduKGfHXZsF32R
	 aD1aKxK3KFrYSmVC1BM54HNxPTh3XtLbcn5yfpgf+r1rvgLjvS0p+qQ+Evi80NYpsw
	 v1HslLbHzHmVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96714C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173810435360.2045.18129847641065040927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32157008c47037a0f124e4b7082e0b728cb90f0e12575378298bdf089991f583
Date: Tue, 28 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738104353
