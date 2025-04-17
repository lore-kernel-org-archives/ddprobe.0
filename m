Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E63184E
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744930196; cv=none; b=hF7Zv+kVcNm7dOr51qbnOuRDw7qBC6lLDvEVxpeW+1dXu3YF6/XuS1oz4VY6unnrPsUkbV8F+mBfeEHMe1MNbdoH2ZrNrmddLP05FTUkE1/dF1HsUmQDJ9QiunetpgIvWWau1DK1rHStW6FNyFX9Gh5PA1AeQB2uIUG4w/A7JGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744930196; c=relaxed/simple;
	bh=Czog/8Zia0E+rQj7v4YKjiGsSzF/jSRssMjhKR7MzCs=;
	h=To:Subject:From:Message-Id:Date; b=QKzyM7iSB88r72e/sApjWiLSWX2pTlz3vTzNJC6iGlhlst9GcOFctSYwWEQ57jYx76jgn+kYh8X8PTuPWn9TdRNISkseWjLmVlm8fyVf7YixLfQ/qNRtrpxAGvj0D+WYZ3khh60B7oKReEn5poCwCqSBB+0QBhiklVQM1YtAdko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etb7h6Fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etb7h6Fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AF3C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744930193;
	bh=Czog/8Zia0E+rQj7v4YKjiGsSzF/jSRssMjhKR7MzCs=;
	h=To:Subject:From:Date:From;
	b=etb7h6FsdXQX7/gAbySrsEWJXl1xLHOfSaIPjozpCTrgxQBeLaPa9HL9jAu2sIxTw
	 dR6hqrV7ueABeFMrblsx8MWeBwCZUzVE/aKTPvYh+abbpCZndr7SdUA98rGCdvrUWB
	 NV0PpP7qpNpIoI19g86qoM1D3UOU4rlTTJXQWPAMIndUFCM7qKv3fTCedzqg03HREh
	 tJxQNVa2ccJqq+3FBcp3ypaPq5LVxAJwwvbRPDizMRJCV2ynDTeJoGMLW8Bs7ZsppL
	 Z5wTkLUNR+rzlx+B18e8s++kXkk1k80KqQRDXEWG8U9zwhEuRgKxnHbGwyLGXwAbXN
	 2ipakBPUo5Agg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D916C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493019361.19949.8362637255920006964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1f3a853a07de0c684b226621a6ce85fedcca6faa454df650f5f288d915a861
Date: Thu, 17 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744930193
