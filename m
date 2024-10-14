Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1B81C3300
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728928554; cv=none; b=DMZ466OwvY59xq+w7VhPWeysToWMZpB4lqkAPPc047zeH2hi6veY50zqAeXqRAPnBuOI+VJym80uu1xhRut5Xtb/pI7+VE2f9/O3raab0U4Gt0ty+mVC92FOEXwECAvj4naEjaS/eJHGezZAr90QvtyJ6PwkIlnpEPMMq0yBzd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728928554; c=relaxed/simple;
	bh=wzls0vfu29pips79k7wOIVSpfUW352wqX3874sy+kig=;
	h=To:Subject:From:Message-Id:Date; b=HZ5iakPPcsm+GKgEcOz8HFE8CEnJh79W3Bd5lgy+4lKlDgInaLKCQC/B+gc8oIve1gl2Fs1EeR6bi9mRjK9HUw3JAdPccI4bRlTMPCGdOHTGxfyUlvZ7Gp2MKTrxJTII4CXfqSdKzZ1IUL5N6CdtTFYAKbtIN35j3taWxzSUJME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/jWwFm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/jWwFm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2275C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728928553;
	bh=wzls0vfu29pips79k7wOIVSpfUW352wqX3874sy+kig=;
	h=To:Subject:From:Date:From;
	b=f/jWwFm3QOTPYi+tJG3Ok3XXs2qhZzIHu5pQpaPYNK/qbhNyfBgUU4SeXsU+0hucE
	 1cZ7QWljLMCG36GF4MWSDFmOC7w54AOlT0c2SuHOfHPXABrgs7LCrWwHpmNwv07MMK
	 iZ4u0sodh476hr8Jcr4OET0fljyBuEPgmOyk8ChyCDbBOy9ylx6SES43kAVNCbU5zp
	 zZWq/3jbDJI+9HvtW9nBn1NoVepqJeHHGb1vPAw+NFo41BaONcB0O9PFGYNRiPWQ6w
	 Sf2mmgfVQLX1ex28IOQEi9i5kw7mB6DxRo/ensR1HWv2+3wXOO7g0QxzcuuMJLX8Vy
	 EHhS1/I10PtSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91599D1813A
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172892855358.8661.4473936602090564305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5005aa038b5b70bfa2ff0d71c54fc9e0ea72abdb00734636737b445777b2f1e5
Date: Mon, 14 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728928553
