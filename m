Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B7B3264DA
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780832674; cv=none; b=WXlsJ/cZ2bqaP+0ga39b4l99koa3CEnQtR1sORfAFJNBMhBtRaDC3YZhiWvVNXGktx7tnvjmWVklkg9XLAHkDoMcfuL3k3FaJ+cvss7T1P2sYiy1rhAT4B91qR5hzPY15TM3pK/qBI7U2CgrOiQLsSnNddzwo3UZPnGCrsYxz2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780832674; c=relaxed/simple;
	bh=z2Wu1VgS+DC4Tgi1ch0eCnVzIgale2CP0kvYd/RMW6s=;
	h=To:Subject:From:Message-Id:Date; b=J9JbR70Yaunnk9QhxBat3wA/yYRNfBBfgGoTRpAQP6JUPc5f/ow3sXYDSdwJmTD772RwmEqMOBkBphfxn8TYM2Gyr31ZceETl/d6ghER2qcswz6UWySwM5y2I7A0nVoGTZo7LjkNR+D4wAQXD89PA4NDTik8dkY9sLRsDezJqMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LppG8kW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LppG8kW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15B7C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780832673;
	bh=z2Wu1VgS+DC4Tgi1ch0eCnVzIgale2CP0kvYd/RMW6s=;
	h=To:Subject:From:Date:From;
	b=LppG8kW07/r7qjmsBOIfXu6ICPZSgQlJWLLwlV53qSDJG1iW4WUA1CLS1zsauRfDe
	 93D4oLWYTm/IeUQqMm7hVyYZuKRK78YVyBsFSayNkFN+CHrm596f98V+R/LHbnldh5
	 KhtywfZtVZjAjLqO9B/IbEnIOKftl4Bok93dfMG/q/SI1XeziUdYOqMb0BSn/IF1ow
	 H08lf5cFoBA7U4H+Z+nKdJKm1boC7WpG7UpfQ1i8MDZRqBddw8zTV8bUuE+w0x8Cba
	 qTy7vc4dWm/meeBkP3yfxzi56O7NIriCOx2MNaMOo+zc1qFuOf9wgugfeu173SBvII
	 UI3QBcXVLkT3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91B3CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083267368.3175.8255708558784119419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ec4ef18e78e8524705e409fcf0ce016a7ed5bf3e0629236b35b78c66f08c9e
Date: Sun, 07 Jun 2026 11:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780832673
