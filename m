Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DA92EFD8B
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755858593; cv=none; b=ktzL63o/eGbhsr7ikgha0x47GqcpiUY6PEHPOYXcqmgCVuqCE0F6crNP9QNjMfGN4Cx1diAnercterMUNUmHiokIxLntO0BB08x/QxUXYDOgVaVeVgnRE0R6Y2xTJxmyGB53pefTFV6opOT5OAHQAsyKPD+0PNvMW7kD2xCp8kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755858593; c=relaxed/simple;
	bh=7bqQCoZ1dFqAzLuRi73eqzR51WUDhkR5xlvoiLuPZyU=;
	h=To:Subject:From:Message-Id:Date; b=KPt6wn/4DdpuSE6Vr+4twZjkMTvcYKOMRqx3RUCuTKXET4ki/WnAvwoAettLpu0Pn4OYRyrhEf4rbOSMtGKy/g+8h781lM+xge0qgmwdkV1ZriiW/y88zEQPRvk9AQOxmUASwt6KehbnPyc/6Dh1+RVLxTnW1GbK9koe9IYu/wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0VH/1OR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0VH/1OR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A938C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755858593;
	bh=7bqQCoZ1dFqAzLuRi73eqzR51WUDhkR5xlvoiLuPZyU=;
	h=To:Subject:From:Date:From;
	b=I0VH/1ORfadKgwDhqKF85XZGdLYoalqu57JQENVy/RmUPb0LzRIzYHMKAPZc668gK
	 pcFmx0ZsfpE7vKCVyWGHJacGNPKqiLupJ5lEiFDZcicOKVZCm5+TMwKuzG7NLYVNcO
	 1euZ7jDU+bX7meKx2O/M0Dab3cvMbTx/Nv72CZXqFpvp7XZWTinDxTiuZkA89ABfFJ
	 K/kahmuA6LoOdcqyMfxhB7+53vhbduCHmOwAIDPgVWNo+PbdFk8gHqezkPlO/MflAO
	 9iLTrOqJndXOWtdj1pZvAt9XDCoyjkPBp8mz2SXJWZNRtfgzxm6EXow6IFXARzFdpo
	 UPypFQbDZ11gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9326ACA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585859359.6301.16167296622808726877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea898a29ed9083080e90575b8579ea2db63d805f9456e34c3311bd2a1fd31d54
Date: Fri, 22 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755858593
