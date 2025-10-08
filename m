Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD4B2EBDFB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759911594; cv=none; b=htg4HFB0nCE6g7E27NS0ST5TX4UD7w8/817I1VJeDNexUFnP9sRAqUEVVaxn5HYeBf+p5NE+SBrMpMV8a+1/1MUNkxRJCMq5Plpl16ta7b68JJP8/RqkERpy2s1NzpgIWGwkkMRGJkwUyFxfBs4NPXhYM7hx7np9raPjcp4PwgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759911594; c=relaxed/simple;
	bh=7gLG+UGjcEIr27L3S/aShRPU64vgOHtBXux8EjTPHLw=;
	h=To:Subject:From:Message-Id:Date; b=O2h4uImdZrwZP13KNqkOktnk+40mKavlXWy/5hfFILXfJ/mQPxcYJO6L/UMPZLIfUuC42kIvDYQ1eGZ506AoxOEaB62cIKAtZFLqCu0Q9Sa54res2h2FZugImJ5Wgnisk02gRC3RIcby6osilB9iiOEiRo/HM6dikNf7IOBR7n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjoftPN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjoftPN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A271FC4CEF9
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759911593;
	bh=7gLG+UGjcEIr27L3S/aShRPU64vgOHtBXux8EjTPHLw=;
	h=To:Subject:From:Date:From;
	b=RjoftPN9x/4wtpCpa0UfguBfnbci6VqRBqaLh78oiJQdy0Gq5lN5ksB0rnwkfY+uX
	 SUh5gnnIiN+finBgD+0HfdmT41vlE/dojQGLgHbKg9tu+myMtsLB3W1d7NZ/RE8SIw
	 AiMevYwG83GRXYM/xMvtwUBWo2e9TdmULkcGDS3N1WOBlvEa9ODVEhtInPSJOuqgh9
	 UOo3AAcqy/9ZOB0kWdp0vqByZBUVSgE0pyXGtGRVstMK7usFfBLDrsnmarwyAg+BjH
	 a3w9nBLEyU/9IGc8K6IXFKcbV+GPBR4DWgfnqyfdk2U7TvQ+IeR9VM3t5jhh1KAJ1U
	 8MYYzSOUGPEVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFBECAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991159358.20368.5335219147373358184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c4284d7b7115196cace1510365606683b13755f775cb568f9c5102b38c74716
Date: Wed, 08 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759911593
