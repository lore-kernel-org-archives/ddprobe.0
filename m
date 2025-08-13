Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A411A3155
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755052794; cv=none; b=ipb89VmZRcvRe/8u1YBzbPmi+N5BmyaJ0zIjMdBOijKsOqEF/gEa3me5NpT3W7CEf9YEQT4YDbHTlM/BRe3WPRkseLD+OC/6mHigA/JmHONO4U5AxM4JGlqZ8RU/EYIXoAK1MKDVaols1/yndSIEBYXsrqCxy70gLjsYd/mMfc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755052794; c=relaxed/simple;
	bh=b5JhiRmq2FWEd63jyfCGMGdSNk9G3w8e9xnhhD6BhwQ=;
	h=To:Subject:From:Message-Id:Date; b=WeFuA8kH3MDORm5NA5N2ziAq95payRBq0TzgDVSl7lELdcTeLVxApGTBwHAQNOyI46KquYAcuYCBIfpqlEDnXhYCt5Zp4bxL6Wfia7wBJOAGYa2DgkkL3RFZddZKY7UeNl0UxK2ZJdiRGtMTuQhm2CTMW2ItulBChNMPNjHHFnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPG1ce27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPG1ce27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6357C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755052793;
	bh=b5JhiRmq2FWEd63jyfCGMGdSNk9G3w8e9xnhhD6BhwQ=;
	h=To:Subject:From:Date:From;
	b=JPG1ce27ZcnIjokjl0fA4upjD0+gSH8OKUeNGMrEC0Je/ozg41LI0zuweZJSnJDZg
	 a3lj1LxadMsUtJel1wciryZYUC/Vm+JFXmStmOMHlDbNKGUrEuhcshSLaBMtgA8b+k
	 +TFBpgHhFodad6IR1Jw4coS10mzWEAmxLuSi9IsIuxZ6lpCUHs+amupb0mC2+JqJYx
	 qqrNNq33izaIikh/Rybb9dBlBoyyuNK+D1RsV4XJtpRC6MSCJhAtnSGgXDz9xAz92m
	 fexAyaOJh1gX5onXwScFgibNumBgH7YpzD+vryb2rUtbCvbl8GoX/YX1QW6T0Bfq7R
	 2eT9cJZFr9NnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B3FCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505279359.4422.9038576081137740615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3816f4d68cb034a883f16e6b9be20dcacf5185c5dd1b5b82d72e4dadf49932b3
Date: Wed, 13 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755052793
