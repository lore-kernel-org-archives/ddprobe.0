Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0572E2665
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780381474; cv=none; b=KhKNbiMFHACrgh5TaVx32qyxo932o9ug5WAWuSlfXfh0D1lYBq0llQGkuqTxREyeL7BjX1d+aFT7p9QyIvMJwboBpOIZHuGBOacVF8VeuRguTcd9+3j9pQ1of4x+yfBZqbXOLLmkUj6Gy3JnYJVs8b7E0q6xz1yCVy6jj/NWbP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780381474; c=relaxed/simple;
	bh=BmriwVgVl4/LLQ64yjEVAgegO6kCjtg2h5Y0VEZfqVw=;
	h=To:Subject:From:Message-Id:Date; b=MaVu+7+W1U4TCSxifTSJwF4QOliDy33tJvoxPPWVzMQHPoX9uwFntDXot55xeHrN6g/iPtYLfHIHTOfriBuQkG7+2vVn7rO1eYmGNVQO+FSmedJgP4jxWMJPANbf2NvZ+yjMWuMEUwks38wJ48ExzhMW2DLBphi1OIgoEMkAsYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsL8iq8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsL8iq8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AF6C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780381473;
	bh=BmriwVgVl4/LLQ64yjEVAgegO6kCjtg2h5Y0VEZfqVw=;
	h=To:Subject:From:Date:From;
	b=DsL8iq8XDFmJncypSHSBJE42l/NPCyN4Df5e8kF1PivXuT/nl/mghO1k7iRQ2MoLG
	 33uk/1VSquHeAAUhdLP2XU3e4q1Zlnvo5HvpJfmVxdah7jFEI41YmDCQX2SCZ3eE34
	 cdPCVSC4icEslvz7hkj2IyWzjWncVX299Rzb1HhJFf5zu8ATi+uCD8K4XPy756R/so
	 1+gS9Rsk50alkYUlaSIMqI0R81vibInD7TheNRXjLhiFp6Qtxud6CuBS4yrk2kL3zj
	 KVFGjz2q/HlBq1aic++7KsMbk3obeZM22GxDBdR+tzS4HdrjMUzwoHK+E5fMT6s1dT
	 aQZGT5/Ie4SWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D97CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038147368.9236.18445044769142530143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e7a12bcc833f82d53e3ad5acc8998fd245efd3c24e04601fa6f21403694fc4
Date: Tue, 02 Jun 2026 06:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780381473
