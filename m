Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3813F1C6FE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747411194; cv=none; b=gVzeSY590A8/RStHS5ZVnzyWdxFFmQeAqsj5ZOXmTBAfz9AfGhWNKyzICdQmAw2hVT8P7L4en3EOfNBW8l3PC+gmj53q0dxFIe3Ijn2vaTQePDi91cQ6xwFMXzLVSMekzKlGw/6I9ZBuB9f/gi3T56v1Hn/fxrcGNzGBW0vtT6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747411194; c=relaxed/simple;
	bh=qMgjVl5Vyc82Q718RALyGBx7h0++i2pLq1xtZhVQPVc=;
	h=To:Subject:From:Message-Id:Date; b=dHZuntuMwCbdYprc8rCoEdIvoaoUIW3L2RwsvfXp2v4tPMEBRJEU8ejWmT2AuTqz8DKY1NTMLJc9/dIbZApMctbY9fOtITPKkO/vw+xMTWiE5Tw1SlCB5HeBlnaeQDA+Fs/iA2JzG7CbPOu1DIlUzSQI5rxew8er62HuhiueBmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0K/NYJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0K/NYJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1C5C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747411193;
	bh=qMgjVl5Vyc82Q718RALyGBx7h0++i2pLq1xtZhVQPVc=;
	h=To:Subject:From:Date:From;
	b=J0K/NYJZvwqLfRbOs3qC4bCMYjqcV/gRwGaWfpqztLfD5v5JU4OdMxOC10DILTmzV
	 8Mb9pESY3gdidpNLYM/pXzbkP330fQusCs6WW64QKKA74KFLImGzZwOXrDXCmCvnOJ
	 QLKypqm/MH76BK5LMlM7Ph+Ga97mC+SI4dvfHCL3QWE0HQonhx+cO4KpqeZNfDKJqK
	 25DnROR9WV0CoF6K1cFcGrs+Cmadrc4INtmwnV2B+k/T0FFOO0pWA8WzhHj2wIsJHZ
	 esejFJHPa0wdfrWskxL92ZWSudOqtCxq0pRXPNQgYyktT2c3KSCfaVdpzO+sjxejgM
	 hPrhN5TeAvdNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F536C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741119357.25422.9683186448375910324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836414022021823797e3e99b2e74317136adc39565593d4a055b70851a56703d
Date: Fri, 16 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747411193
