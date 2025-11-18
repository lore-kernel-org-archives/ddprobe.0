Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 967D3275B05
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763470915; cv=none; b=uSVEliesj3bWYM2tKflC76qhxE3dYTq4R2Dh3YPSANWJUbfebWd0J4jvfr3FRt8cHqHjXKXybjv3oeF9yPJ8rfUkRcumO0BClLvZH4iyGqqIpUThkM60ZfR1E9/05xUDVM/fHZQNXRyIjfPED13FL1Jn8PW665bwk8jSBhEh2zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763470915; c=relaxed/simple;
	bh=oLzVcc83l+ICivVa9QtP4OaNgWb4vGdjGX8AwSUt9sM=;
	h=To:Subject:From:Message-Id:Date; b=ruAsyvWckPndt1dC450kGGrms8Z81e2RulL8LFq1qrG+TNlqiW6M+wtBZP0HT3OPeV6BuMFUmJnEwPcPATmYlFvYbKACkELJ3EDzszBCtA3I3WlLY6hlqnxJH32N5QEoZqQIxB8qZ/rJ0FnpoXP5YYYTVSu71yiOQ/tj1wMYZcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SL82I8pZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL82I8pZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D86CC2BC87
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763470914;
	bh=oLzVcc83l+ICivVa9QtP4OaNgWb4vGdjGX8AwSUt9sM=;
	h=To:Subject:From:Date:From;
	b=SL82I8pZtWEEf8g47VmRLNJzsNmlM0+cMz+KFWX6Ls/aKXVXdg4uVjxqsJ6MiSCCb
	 LiV4/lxPSPEav1eWOlL5woS2/yL6rSoii7FW6G88DgnJsCkTjNxShO/eVCR6GYX4ux
	 PMCcepV1H3LHHlexDtxtS123MZWu+1PHQ9vIv/z0YehuMnHbkg/5eoTO7BUwwWg/bC
	 9nRg/eyPeFCy8s9QpG/8R0Lp2JDXyDoW6G/n3jC69Z2mw0hlTy5dc1PGHlLkZUFThK
	 6Ep5Y5Jp6+IS4vtw4ZhLgKXWP34AXYApVv8aogaUi+Xzxho3gAgaLGVXBaMBuOtxUZ
	 SHNfYCg5oThOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A42CED243
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347091358.10530.4111994126706843261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11c2312222f68e40d8f3e2a0240c18a952381b5e6e005a8f96435a02ad2f808c
Date: Tue, 18 Nov 2025 13:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763470913
