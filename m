Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B4B3AD531
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780322074; cv=none; b=e7vgGiLGnNzayBZLZTAYhyqimJADy7HyAb7HEsN5Fa110eoDDwtcIEhfiumWO6OWs21JLpmYIk/1WYczSh6kA7ATuhcYSY6CA3oFKYAShjbdrUL1osTaTE9t6/hoDlyTUibu5iRkw7vH8b4qsd+34AFLnKYEc3vM7FRwRMcT4eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780322074; c=relaxed/simple;
	bh=YdVah1022fjFN+t3Y/qKk3/iVX55XsqL53sVJFWeDuw=;
	h=To:Subject:From:Message-Id:Date; b=bfbvgrkCttHu4bp8Je/tm5ynaUi747CayWUqNB1APH0Hl5+5J68GcwMDPszwaYA11bmG6USVRvggjOeu2goEssxGLAcIdb8a9o2ay3dNdpqDCcjAYBMQfWWhObP0BJGUsJ04RMswcYKsycZ+qbCVBWIOz6sNVvjvCViUfmFDWQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch7HP4LM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch7HP4LM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E9EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780322073;
	bh=YdVah1022fjFN+t3Y/qKk3/iVX55XsqL53sVJFWeDuw=;
	h=To:Subject:From:Date:From;
	b=ch7HP4LMVefvYMfzhSm3+ZAKiNVKsWBvikAzTpiqPDhOGJZJN+SMVROXoA0Usz3/K
	 9yDiAlXUzWFEnkQF2jwhggSMCbDR1Qqwwo4PpM/eCLkdSr/BoOmO7/RTmhcAjz/dbq
	 Xq5T8q4wZHhxYYVSOkycxSMXIVAe6Y60dgDRRKGoZSuRzxTQ8/E4raUXS5T/3y9exJ
	 bHiIfokT5gmGfmLyvYghqJ67t813MC4Io6MRPvkJVVSmiubi+wJVtfj4yPXiIexyig
	 wZNJsx5c+qnHvlSc4MLZbxhYFynMtFr0YoN4/c8qwazVs1OnjbL5nTpn6bBDj9eXiq
	 RUQFW3/RmbwrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A7DCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032207374.1900.16626123146457446479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5963660a93ac69b8f35c0248d223ac998e78c33e4e1958cdfd7edd2c270a09b8
Date: Mon, 01 Jun 2026 13:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780322073
