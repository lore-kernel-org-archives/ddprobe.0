Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC1417C91
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760579994; cv=none; b=k1DnQfNEVe2i1EFAPrj03r0iQDgbdDbTssMXIpy1BGTbT2kQ4o9iit+upgwjOyYGfCkILHyr3sov9AC9JotzXdXbEIKp3DtPcRwHhAwuobK/sZIxVlvSlavq/IgJ6g58+9rcKiZoGPjQPOgHbBjKeavG9B6xZXeD76IJaRBq4Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760579994; c=relaxed/simple;
	bh=Y52Gh7liwNF1R12iYzIcWEDwIF9MInJGuNJ4ArHbKGU=;
	h=To:Subject:From:Message-Id:Date; b=ZyHkUxGzFq+f/lC8EGcZa3qSDc+7Dbpc0k3bMDCQ192gNj67TJnWM2iHooPWvDDjeFvZ9ccrMAVPZYve6DvoEoV+ehESitYzWIDYVORPxZzloRsWi/URPjBZOODwut6RcCenpbQ1UteKr9krY3ZIA49In4xu7gJJrbJwt9Vdnd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTGY6ET0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTGY6ET0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A893DC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760579993;
	bh=Y52Gh7liwNF1R12iYzIcWEDwIF9MInJGuNJ4ArHbKGU=;
	h=To:Subject:From:Date:From;
	b=GTGY6ET0shwmsUhMqjKsUIYw+kNu0CnyLkx1Bb6/INC9rIYzRDyN1EpKpcwOZCTZI
	 Df4mfKKYLapIwoRGDjpUbauKqot55gILg+F+HvHQkMwvRKXi/F6yXyrmzaZMr6ucAv
	 KyJymL6opakP78UTzBeh5dVvlrVTCOVQPAbzoWyCHn0VEWl7QEPB9ozobFXlsaK3l/
	 x1CKF4XoA6Z7azgDRw/ScvITCQywlCLFaiRHrThh5fOffxYuj7SmdZ5bg3Mh8hpu1F
	 APC+WZKUlAkh2VoJ5O/NrTVGdY/K5sRb54dfRw7gY4sQ3YXKXgKg3rDz0uBetQa5t4
	 p7u0o+8QZtLyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ED3CCD193
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057999358.17401.17616814122015147548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7667e8a3b122da72bf33428f0aa835d854a4cae60197169fad1ed8aece112a
Date: Thu, 16 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760579993
