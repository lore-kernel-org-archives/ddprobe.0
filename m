Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C8333F6
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735520754; cv=none; b=mDgB+8s0c32fYOJvwReT/XxiIKxLMc1ToUpsX8ATVt96AVZhO/qMWTQ3P9u/sVgA5Wqm6aBXRWW7QmLI7I2t0/HE96A7psvmFh5tKHR0EVfwv9yruBU3PMRkO+UQP73WLGarxlZYoDL6kYUsLx5oSzDhJdVtpVQWQ/AnAUdBppk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735520754; c=relaxed/simple;
	bh=g2xbEFG788SgzUTJKJFWdr4wMvgSysqgPxQU1piRGRA=;
	h=To:Subject:From:Message-Id:Date; b=D/Z6Oc3UHp+kUQMMYk+lIhI3yR6mXAIeEZnCotNZbO/cEeCdOZQnip7qOnn3MHhJLiKGoo0C+3e2SpKeCTLppS4zNWJblocqYudRNTJNGKsyeHE25YMrdT6gXaBX9TkDpUEUH9U3jCasbPfdau3gJKevXsWOTQAeiSOLtShX0gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uhxdsio7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uhxdsio7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8539C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735520753;
	bh=g2xbEFG788SgzUTJKJFWdr4wMvgSysqgPxQU1piRGRA=;
	h=To:Subject:From:Date:From;
	b=Uhxdsio7eK9lWsSduCy+x5rHKLV4QcU29PGAugeP55eYtso/ci5eCZeRUVRerwODn
	 xnhmxthI79iMKDBVR0KYZLAYeqSE5fqlsHFjADOu/A0jlkLkY8ZnHZWu7w/TMkMXKo
	 l+22SKXODzx4fT3PWzOdjSi2xjgmKOoTEyLQYXEYSbF7nkdDguZHUjWFhCXh9nBtRL
	 h3BRRTnp6wxANBIAnh4qC6jmRe8Q+QXR5SY5R+dB4ODdpQdiOP5c/Tz5u3F0vvmb2I
	 onTWvyLS1kQ6IYXcdj/qOx2GH7gRzOrR4p+0ME9vjHQC3miReqib75NODmeZ1lULho
	 C6IgFmBlIQ13Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5A3E7718B
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173552075363.3318.17670981846543024825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076407c1849c5a9664a1dc89a6e2155aeddf07a929009f80f8de66ce0294e715
Date: Mon, 30 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735520753
