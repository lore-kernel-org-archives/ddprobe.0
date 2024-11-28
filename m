Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BFB17C7C
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732777554; cv=none; b=nOwvxryGmySUHTdVjR19KdQe+y0RCmkHLICSja21g1iGqDESFKvBKENozVohIy5tUETpTdHqNpi9HJ0DkwBTK7xsaATSv4E5Ohn57vgd9b2beebYGQfgs+FM4L8ev+TKnjrN0Zo+YEZ6SiR9hIXe3C/fFS5nAXWslsnrqfJb48U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732777554; c=relaxed/simple;
	bh=gtHJTzn8Cw5iMmOMR9ke+K8UnCSTBmWrZVp/6A6MAl4=;
	h=To:Subject:From:Message-Id:Date; b=hdeveFWfDqSKlGHHK2P3YpHbph7qLCOAOTPJ/ZZZ9XR7M69DZWovubRjV/yE/Nr6K9AkBnVyM1D61gdrwI81+joRLvrjZepRYhuslUTBiOFhWsqAQb4G2GSMZQbnnZpvIjEKVVKMkh8MNMv6k7YcX8pNdHr2Z2E2/Km8/sUpMQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6QlJYGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6QlJYGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C536FC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732777553;
	bh=gtHJTzn8Cw5iMmOMR9ke+K8UnCSTBmWrZVp/6A6MAl4=;
	h=To:Subject:From:Date:From;
	b=q6QlJYGhdOtYYwZp5DFPW3gfVznLsOqS2OXKuFrK6CpcniEpK96kVKjtV22U6y+jM
	 2zkeCT2jGQ100iDvui0SvWmUJi1S1cw6SiKvkVj88zSBHn87+sd58+n1JTXS01r7vb
	 sTKYPOnNzuAwiWFcF8zAtnzQY8zmQ5XEAelv9IR6WzfsRg4bh4/2zXV0xNhB/yOEoQ
	 5pPf3iR+EEcTAvob/Qbn8AcEQ5J5QwZlWcgY1+d8qkEfIk5T1Q6QP1FnSoTlPJY7gF
	 Wezltmw9gX9+GBQnO7buIn8dUtRzhR7JmsKEX0+Xl6njsYrKXs0iwBuO7flDifZqqj
	 RuWo76aZVaKvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F92D690E1
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277755371.30844.6721878248687978400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7471eeee69993cbf547e4360d10dda557ce907a2c0bfae9bebfa2c69e006312f
Date: Thu, 28 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732777553
