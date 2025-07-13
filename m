Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273E133991
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752399594; cv=none; b=rsrvMUh/eSBe0+ZcRXq+QRw7ycjSCmY0hxOnweZokGfSPAyruEJiTs+lpcZ8pjVHepE8siLXV45sfwLvg1pliIf8tYknBROviTCZpzGMZO/JVYw3DHYv0V5iuOnxjHSCJJwWLuo1qx/03FgAkZ/z3eHlULVsjFj+mgfpGT3kcCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752399594; c=relaxed/simple;
	bh=5983wpjzH0I00onNU4Vee0+zjBF+QJq8V2NRobVqVTM=;
	h=To:Subject:From:Message-Id:Date; b=P82FsyCqX4umd/WxuNsaIXElYiLd37EM6PH+aVF3NHgT6pAJSDQ/5jeNekIUwyu876JgEL2s4r5u0DAwsOjTJxdkiz+NN6akupV3OLvqSkMvSyfdwUg7CBXZ1tcCZ9YgEX8AWNsAD/SAFhkrziPxnvpqEm06/KccDy8C/NGSZPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RC4ZOs+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RC4ZOs+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A637FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752399593;
	bh=5983wpjzH0I00onNU4Vee0+zjBF+QJq8V2NRobVqVTM=;
	h=To:Subject:From:Date:From;
	b=RC4ZOs+Hx2qOvtFXMFVq5FreXQQT4t61Cc1InHdc1XnrHGLlwgWcJlq3GwV6NHrkA
	 f19le+FbdZAJ4EJXrrKrLAW6luLia5RCpT+ZUD+aNMQbsBFZIPyXVzpn1cj5Xv2vxN
	 w0AVgafMyVn0yByj69rwXbTFZyqjPZaxXF/BKqv1dNf1NJDCpvOXVqePFvssO9CbLU
	 NIjJgbbd1Um6YqbhzDAYgEONnmQYG2Fhteon4oytqBPipxbmI4Dwu2h2NHaNyu/uiE
	 YbwujylAaxJq0lX8SJjAIa1fwacs2a8z4wnuZrrJ1OnHjNrk16Z8jJO25PWDFD4uuo
	 1kY8lhLqDeOYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94286C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239959357.28248.8972356798200872433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c27f426833a97197ba864508470d3b9b2dc7c43aea04e331afef9320d7cf51c
Date: Sun, 13 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752399593
