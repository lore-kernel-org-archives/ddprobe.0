Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C35F19FA93
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764150774; cv=none; b=S1XXZNeU4ddBEiAk2dezNvpN9JfIV7ZwPw5AOyImly+brEFkeummdUe8craMDAsh35ees9WW52Nt2UvQcTwKU4nE7SIDARBUI6hhW42cTD1J0iJD4u1mYfs1+4K2LokBokS1xJnAGCMEWAYd+gAm/iYPcFlHbOeONLr8JdNcI7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764150774; c=relaxed/simple;
	bh=4KlcmErykGMrPhEdCOw7B1w0IsMssTQmgEwCPcO4KlQ=;
	h=To:Subject:From:Message-Id:Date; b=kt5/3tCPN2uSlUFkISOomhfuGWGxSMWpmpKha/iS+RGHjYpo+XRsKA5432Ls8rxMwx74x0Oqt6ypHRhhhJf2j4Z20UpZf2kOVpXu4Hm4bjLdqmNY/2ZCGccfDf0jp4iBakw7TO98xVAIv2TLt2+f1CG5uJUJklvECXX0LmMjd1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+khpciE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+khpciE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A6CC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764150773;
	bh=4KlcmErykGMrPhEdCOw7B1w0IsMssTQmgEwCPcO4KlQ=;
	h=To:Subject:From:Date:From;
	b=H+khpciEdGBXepa1kiY7AVQPzMG7exr5SS1Hswn20EVzRbaL4fbUTKI0SMmMMtcPl
	 d8seONcdzLkggnBR/DPUEfmCAsKk5SImkgamDCUT1PcsMhqvsQjh4KY1UBbge79AIn
	 OJr7CwD9nF1pPjWPrRGey+6i8w58KszRNGEx/ImpWAD/NtLvMPbIlDieIUOiJaZpJ3
	 ho3QKd0VpGzdMjZPHv/81d8T3XqUE6iXJCvezU5zGle8L6FgEadMoPLDnPUr08GlRj
	 ay7pQQcdtjQ2ivsehczEm2OWnMaHktWm5ZcPnqZlqQFwJ2HDufn5aJD8R368/BCVCk
	 PLp4TN5mB2m6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916DFD10399
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415077358.1586.1923730160896221860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83499316e3837e6c88b740f9898f1dca7b4e70184884c49c0e6a09a223e2afac
Date: Wed, 26 Nov 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764150773
