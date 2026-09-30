Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4129551D51C
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790789434; cv=none; b=hLg79Unub0Phts63YwBZDkjwJotbkgafvI5XQMRh7LcpaJoDJM4FPDVaGNLYmIWS2DK9VFVKy/dkiauu2RnMrReC2IrSArfPLQfeA7MFgV37Cwf4tgFtidzBieUS2NLKUngvoFNzFkvyrLj7yYOPNb5JqFuqKtD84iEgKCIEC/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790789434; c=relaxed/simple;
	bh=nVmM07PEzhpW/xn8QUKsgg00sYBI60AIn70vqGo0beM=;
	h=To:Subject:From:Message-Id:Date; b=ejcH+lU8jOjTGbgmFnBMboVryQkDcQ5w5VJ/F+SArhOY+CT+/lVWkVkgDPeFO/j5KQ7f5hMf4Fm1S/vL2z5yM9PBYGvKArzY6SNhSdBXMLo0cZ1zfGXwu5kG5qhmZTauiwlm7KGxxSTKNrAJFtzLXFD2Tk2hJSAcLGtLp/Ymeu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBM0dSXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBM0dSXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD78C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790789433;
	bh=nVmM07PEzhpW/xn8QUKsgg00sYBI60AIn70vqGo0beM=;
	h=To:Subject:From:Date:From;
	b=UBM0dSXB2iBuC0j6E4OEnLY5Wav3aWbnP6SnrETv195f/TwnhWxBCSG5gogcdYw7D
	 sr0Ph82SZoc/x1C2dgaP5lAIAYBQfpdYYKzMGqLm61rOgNqWjkoPSc4ixqJNaIpLk0
	 4Cr6uRJotM2HVr6CbLtvGXA1/YvkQ3Ffu3UaQTRRRvM64Y2UwkhEU0zrA/bBXcUmzw
	 cnZ7NS2uMX4yIWvnq6yvo8q1XhUFGj5XcIAtGoMIuO3//5HFbIgRgzTDznik1fqcOs
	 4gl2rQUI+yWRyJgFpO4l25VVRFiq+ujqQcvQiB7WOaAaHAJsaA5+ngHMnzbITg6zwB
	 a8nOx8Bt0W0pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD86CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078943369.17742.11842227736498480094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da653a11b8a220cbb4746502d5e617e72efb216bb09ff916065198f4ec6b3e3
Date: Wed, 30 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790789433
