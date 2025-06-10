Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC23013C8F3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749569993; cv=none; b=MndiS7ng2ZbMeZRMS5wy2FggTGaLgQ7zonFob6LgboujCkVY3HxcMi9hL0xbAwem++RfZpstqv/zRIjt/OGBV3i5fkYyMfmePN26GEQQkWuotRJTAay7paVpIRp9KGarCfFK24uzcnzYyntjWcNZbqxlil21f9+jCwro8SUL3WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749569993; c=relaxed/simple;
	bh=l/NHIYSvHaOCnt8LDit56ZZLTQutWRBGmiCPtCNr240=;
	h=To:Subject:From:Message-Id:Date; b=TvZ+vh93c/6OkFF3MJJJMfZdP6UH18iamSJMRY46GROTP1qvRDx0Sw1800AedSAwUQmDdEYcOSFdOzHAeGRBYKCKzWINP/27VEDzYUTNXgfsfqUGtLplM5ARZtpQbHRKldFzTE22KpBxJWLbsVobWGPVc7fsNrk/iL2YVE/mjvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ca5BijYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ca5BijYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF2AC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749569993;
	bh=l/NHIYSvHaOCnt8LDit56ZZLTQutWRBGmiCPtCNr240=;
	h=To:Subject:From:Date:From;
	b=Ca5BijYW+Kf7Ajd96uEXRKL/ICsSgxJhak57y2wvSb6BAh3hp0fyy8bGd/gAvwrwe
	 49KX9YJ4Ih/rMr+Pl2vbk/hhgriYAel5TzuSpQXxoi1nR51kL2E42XeOSwy2WIvDKz
	 qMh0CWxtGhdUDgyAZYNX4n+P8Aa3keeDlAkFJuf2taXXEBEDQSsBcbcAQpYJkXGfwb
	 znpFIsbuasVqSTs69wJqNBMK0uwjjx0TPM6qnL6GIbtV6FkLInEkqmEFSMiTqmLDTf
	 BtD6SpzeLzk/N+JVCFZGnH3LkYaXNIBhtvmre9cW3gvaK1Z+CTRenD0LAluZyFjxTl
	 khG/u2nfnQvaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9036FC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956999358.28293.3664197692362401265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679be0a3e685230df091c84202120355b9bd07ebb53423d645ae3e6f349e4cdf
Date: Tue, 10 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749569993
