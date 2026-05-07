Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A243363C5A
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778164054; cv=none; b=IpN97zYOAGuv1x+QUW9dGgCb6T/TwqikTy+ElOkN2QRWQ6Pn7K5gmZTnFOm+FhMcWvqNmN1FmP7kDSmYeGXp9WhyeDHynhG2VCEMpzUCQEJFPGpYUbANwVOVpOarNMbU5Nacj2Nt+oIxC5MieH6k/CspvPd1wORS60sAavcTKhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778164054; c=relaxed/simple;
	bh=SvJJRw+90zhdhDcGILL3Q8epNmTrqobtAXSRRC2ivWM=;
	h=To:Subject:From:Message-Id:Date; b=Xzolc/EHfuIS/ESja9qRmlCAIXhFHuo9Azm6SsX4WYMH1UynQDlU2OnYhcFVog1BL+VQyqrbDe8sKqO7x0iX5OoKiADuK69di11OG6eOzR0tSCXjDNXljpHqrQVE3IHgImnazFLUWghCAhXrAr/MbqvMPWG+Kce4huUy6sYuO7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imdRHF4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imdRHF4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC82C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778164053;
	bh=SvJJRw+90zhdhDcGILL3Q8epNmTrqobtAXSRRC2ivWM=;
	h=To:Subject:From:Date:From;
	b=imdRHF4Md8VTIQvV3ezbpMcVa7T+l2rifSkLm8UHueGLy91bAo8uRzVKJL+Tdmp/7
	 9RLLtetlCk5PwX/aoE0foIg1IidKwT0VvV9I6Y4oSYh8SLZnRO4S+7KOy3gQwRpHg6
	 QxOrWnqejgGYdlILZuQq2UgfTWFW+Sy6oOgwRUEptuERku4CuAoMIwqcz2Z8CYG7Sa
	 CV4T9VmUFb5gG5kIiFlsfcBKT5roFvYW+QMO5eI4XXdSM184sFgnHv15O1zgnI4VGl
	 0pbc/tE9wxCQ/EYDEDIbzEcvnI/fOxyoCWna4zW4Kc23W2KlvCOEXvvFEYeI57KJbQ
	 Lm675qjEmbX5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACB0CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816405369.29545.4473196687662223317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d77379eca24ce7babee1895d0df49619423d8593978b9b8de37a4327c6b1a8
Date: Thu, 07 May 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778164053
