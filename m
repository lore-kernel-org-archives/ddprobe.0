Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF9D881E
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755454794; cv=none; b=q0Pq9jCVfL6Zn85wyGNUslqTZc2oSIJOgd0pjIPLxHBLOIRVv4gyISDVTH6Y5XxETFDZa9CTuHxcm6jz+DEx+uwGQOXpKboMCWBIg+NeHq2qWfTjvJ04tUCMDmi4wesAUK8tMnVzaP2pl2CwmI/6KqTUPf3Nnm6euKuZgLwPbDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755454794; c=relaxed/simple;
	bh=zxa8C0TpWEbtnGD715rLGD9Rp/+J8P1YStP+FAXQyk4=;
	h=To:Subject:From:Message-Id:Date; b=fPWvuV/7zX23wmJfZLxydqaB2zroe+TRy2pVGmNfDCwl6XPdHE9tk/eQg++zs83SjPxNOP/fbXjLvihoCh+kINv4cyp6VyCebpQTdEeBuf6kN8wQM1U2JnNg1Jvjus7YNpExZbDP7QiinSCiAwR9zJeFSZQmWLr+z3rILP5vFEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWBUOQYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWBUOQYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4200C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755454793;
	bh=zxa8C0TpWEbtnGD715rLGD9Rp/+J8P1YStP+FAXQyk4=;
	h=To:Subject:From:Date:From;
	b=DWBUOQYSsjaaESCyKSMeuCtp2pS0+e+HBZjFn29HKF/m0nqUilSRnoU4kHqXouZ4G
	 Dz6JuzhQ+mJBDF+xe+E/vnqk2+NVWTD4BC+AK/ZJvn66+D9VF3TtaMww8j2cujBILU
	 eX0sSWgKUgj/Snf/LCoDymnoh9TotEMR65rKv89bOXdmNUok7QDxP8kmEafcqwzTIy
	 OjNsSRQwC8U06z+X7jKOkmeB/Y12+q56GeC1mUm8o6gokV/pCrEynfUOo5XGNGUxnf
	 wnyRU9qwsl5F2Ok1HIaGp7MOstrVw9vXC2uuJSQVy/qXGKhwQmP/odu7EeJH0Fs9gn
	 p7gtkmXXKo/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C9ECA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545479357.25514.2389353775882665933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0fc6169eb24d0402eae66505e4730ed51e6a11a3d5b0e1dbf3027d75cf6b8a2
Date: Sun, 17 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755454793
