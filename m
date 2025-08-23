Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266592EA166
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755981594; cv=none; b=oql5oHzIhtoBpZVOQhwAkeKmS7qNXwaJrwTcAJ5R+zGBMh9tuAwExBkgY76xFZW7h2B4YNuxEXHhZVprmICohNmpJUfn6l3dB3numUw95gwjj+Ty6/fRRO7hgnGzqY7BB1X2lKNqdVvC9ZW3dquMMRsvag2ctU9u3kEIu/ZEa3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755981594; c=relaxed/simple;
	bh=TWrfn5B1BUzM7QSRkWIbEu/9fRAtkbUpZdgdEQge2go=;
	h=To:Subject:From:Message-Id:Date; b=QUiGLiujBXn7QHqAMmDQZjub5nZDq3aDeyB2Uu5QnCiknhrwPy/LacJb4ZR8g+dJYYP3miyO8uP/YUvcN5aTNQvzdArWwyblk/Hf/NBit/ojsdcO65KoNxwU3ZowZ6K9NKacsD8BhrcKAOMaBapupau5PEnDfVNlVLhMZzzcCtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZY/vfchE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZY/vfchE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17EDC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755981593;
	bh=TWrfn5B1BUzM7QSRkWIbEu/9fRAtkbUpZdgdEQge2go=;
	h=To:Subject:From:Date:From;
	b=ZY/vfchErKkK2/mzgvj6KJFu75gsejLAinO4wzU8vrT1Ty2sHIbsVg6nROZ+AcP3h
	 l8gtJII1AGCWAMQBt0ne2JwwvauTBLBBjEQkBiD1dx+Jbwp8XQEgVA8NP/2LlUr6IV
	 w1dcnSoZEj1iszu3hEY6sAB9pCAyxc/Z3rBJh8y0su928CfXJATTV+dMFPBCtUA8gw
	 eFsegl8NtPId8LMEFpHBjljan36jvl7nDiNoFU0lTeAbK8n1Qyhj7CZWEdlG+jaIhw
	 SWhbnfbdXkGzDcrbUsIMb0NkDmlYq9Co/SdtkeZZ8FhSTItcx/6OdV5qbzDquGtLMa
	 dK7C9ZXyoa2Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F15ECA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598159357.5392.4706068095791972653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65fb5b7e9302d65fc5ad112acf250218768369a32eeda5ba8dafd79e27cd97fb
Date: Sat, 23 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755981593
