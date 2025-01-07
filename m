Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258AB1AA1F4
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736288754; cv=none; b=pEIa9rQaE9vU6i/Z7DqBcBHqmp6z5bCxv2zbp9/hNfJZoeq9U28f4LWs385QxSqpiXl5Q8tOszkuAZr0SFHvKsbl3i6phkI6m1zNmXM1PmuIQWY6gucGTA0tQ45aiewzp0/zw+N0rpSE8UQ5wcti8t2E44uF4mntjvBJtwUa69M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736288754; c=relaxed/simple;
	bh=4ib9c7YLqA/ywB6iq7ADpJwNMXqxa99I8P5fJXefwy0=;
	h=To:Subject:From:Message-Id:Date; b=EnIltg/93UwnmLt9TqB8feadMfpiDNkgaADA1+m53XA8CN5fOCc39A4BpWD4Zff1YmZJhpIMWKcpgEP5ccVmAbvojboFUlBds13Y+n1WD7W2DYMdCyyvDBSpnllGLs0hJU+pJk+NEHma3cNF9bjdKbfCOeWJS/wOCjAEvJo4ETE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPb5inTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPb5inTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C0FC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736288753;
	bh=4ib9c7YLqA/ywB6iq7ADpJwNMXqxa99I8P5fJXefwy0=;
	h=To:Subject:From:Date:From;
	b=aPb5inTgMQT9VRbdwXEfaDywOdS9jwwBC+TRE4M+NrRp8CWOoTrZFdqv77wiGzOUd
	 N7OdKf4D23MTdd15wA37K68hnfbe3/7JEdp0P6yGIvRYiS09ipx3xzhy8o7VdI9797
	 FsiblpkJiv/q6q55L9uTwKQLArHkdL5LFR56kB5K8xNajosQ4NtAQHsjrkZrU1aPl3
	 7O0DVdq8pOkJd1a7UP0aj9dUcUZWDXprMzdWWE64FpvsvhVwI4GqNkJq9n4kuyN/Ud
	 3QDJPrqzUrwAYP/YuIeZBfZHyMd5i98nwVVjapwTsopNbQO7aP41jfAVMahvOJVvhp
	 UTCXH8u57dxIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B056E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173628875358.30796.14791182003137422289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19107314824c03878d3d37129566aa34c5590eee7e327a6083699bc4cdd8d89d
Date: Tue, 07 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736288753
