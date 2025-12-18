Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264202FB997
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766025234; cv=none; b=iaIgpy4DWQC6aMxx0TfUwY0RMjZFGYnZydxCuZFMxQNDXpaEPtj8O49VdjHPLmw7IO7Y1mHhrAaxtlhnwyexv1Teb9mvzElwFR+lx61mWa5H/l0dU1A3Ydj/vzHWJLCPOj7n6FxZ5pqEvzKmkzMz8yq315t1zRBaVfkrb+L66gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766025234; c=relaxed/simple;
	bh=KuL+ruYLylNz6SXjzW2Uyx9BEwC8Xpxt0LAUlRU40Ao=;
	h=To:Subject:From:Message-Id:Date; b=cZLYeggAx6UeH27xZXtxjh3vTsp20HpaM3cT4GCVv35zYokkRbI8UkrlXsHISYqeMNkZ274SLWlPiaWOqsB14s4j2GTrXYicBxky7BOgmSHYweHUOSBBzFh0NEa7tIISA90Q4rz0vbKSpL51E2e7VLtI0x/bYzShBSFvMb8YN4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjpVncYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjpVncYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D928C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766025233;
	bh=KuL+ruYLylNz6SXjzW2Uyx9BEwC8Xpxt0LAUlRU40Ao=;
	h=To:Subject:From:Date:From;
	b=pjpVncYwZONn1SN1QL04i6axNPSKkjD70++Y5EAGKvmCSmEd2kbuyuPFJ7suoqEXI
	 PChj8NNVuYzqkjLICFeZzgjo4itoAW7qYAznVYEJOvkb3REz97/2ArvaeHTvIcgREt
	 vAbYOqvPMbFI0zTQrMYWzlAhPdgX+4cZSBEjWP/jGfc9ZPl6N29QmMP+tN2Dtec5is
	 LD8l/pzI8Mo7Dmg8iEdHRn53KvV0RThNAY2W3rNLoawNjrWyBBaruePyf2ZphqtqWQ
	 Ik5UNax8VkwWxdrZEvHCgL0CWO6CiiInzxLUW/UjkhWq6/oRZBzdqtPSyQ1m+XLDNi
	 mN7mYMDbz6UIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD1AD68BC9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602523358.17470.13096187810716030850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f9fa04687e7c3351cfd73fbb3a8e2abd50c212cdc4667289d633cf8a9487f7
Date: Thu, 18 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766025233
