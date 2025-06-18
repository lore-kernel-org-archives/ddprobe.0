Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9AE27F006
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750263594; cv=none; b=QAEvyE7AJ1vjvg7sSmLoAV3tr7M71unY9rH+XUIc6OVWajcSEMVt1y8QMxmRoTSzhPi6LLeOSYc924zVy2HDyOmo5cDPDUG22CNPNn6Cng71UCDEh635+eHZHEVVIEtMuMMX641H7syLyYxf05E9MJEz+/c+LDitEz+MzGp3s00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750263594; c=relaxed/simple;
	bh=poJrF+iqbFi1w2Rc1bVGVVjhgvu+o08vf+zukzeRJfE=;
	h=To:Subject:From:Message-Id:Date; b=JV4DIhI/qrhtvajSgvfxnalV3FKFjHvdZ88AgcY5bKW5ykPsQ3ya5NQT++thfudTTATCBOUy2aWnBlw+ckPo3OoA6IJHj9mQJkyIEAMCSa5pb8wiNhkei+yR0HItiFo81cQuQcF1hJjZSQpuvkA5nCJ0VrqVfSgIeDL8/2OfMhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSoM1tO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSoM1tO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE690C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750263593;
	bh=poJrF+iqbFi1w2Rc1bVGVVjhgvu+o08vf+zukzeRJfE=;
	h=To:Subject:From:Date:From;
	b=eSoM1tO4iGQECR44CzU3olSC13zMFofCvSFxoPEtNNV/VvXANE1LOCk0MHXULzPie
	 R2iFxNnejnU1GPWIeCH6zq0E5oxik6JmhaFi9vs80wLrI4cGms5yjnnd+pYCQLltDa
	 Lq/TrZEUUDXvBlRaRUF9faTIZIvCOXSz9vWBh/+tbSNP3ntV+3P98xafweXVqU9LtW
	 sqqZ4laWzIrtB7742VfenbNNDsurVv0g8TTvZtv8jMwkt8lpnyBbLlaTah1kDXEFU/
	 oSi7/mzrgucVA/6ozWPbCCmQ9PRAFrXyRU2xjIwCOCZS7rL6PnC7ETxCf8B55GdVq9
	 BBDmo8zBWU8fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0B5C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026359358.11429.17959596022435203989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd93c6b7affba9849844b75c05dae6f1cf69191fda457f7334b7f12e0c5dafbd
Date: Wed, 18 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750263593
