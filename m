Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE28F9CB
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743391195; cv=none; b=tTW40M7qCw67KgdXrjWzree1kxx59i0FNBpYer9KbMpvmgkHaeqqOcu5MLcPF9KNWXwD7R8ukC/8/cMJ1acUgc3S5ZEr4quRK0Qf+hGKVCFqqqG9O8sWT4BDT6jZORLNrwUh8Usn1xhi4tQGNTQ6WxhuWNrv9UyCVyADhknd6lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743391195; c=relaxed/simple;
	bh=m44iAh/usuq2nTvFE2DwOks4woDDXmccY8mSYG5nERY=;
	h=To:Subject:From:Message-Id:Date; b=IRroO875Vve6AxAJwdghFXoaS6mtQOgRgFU0aiYDYUrihWANTuMrqERNU7LY/x3a7I0/iMOCjjEsNJhQgQIAIBUoxyYmy1sFBMOsNAOr8sl8vpSs9GggUIJ40cIuCbSVNV2HAhAUbW8j3koVId8ef+1+lGCPFmYassZ0tOHGVnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bk/ojsvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bk/ojsvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12A4C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743391193;
	bh=m44iAh/usuq2nTvFE2DwOks4woDDXmccY8mSYG5nERY=;
	h=To:Subject:From:Date:From;
	b=bk/ojsvk8Fs1b9aziwwaaMnlf1BEplHmbPKcT4WGpehUN26vEd2zasIPzyJ6LnNXa
	 achnv7WV3O6NRY55US53T5egSsFw9ftgX8X04FQ4CZ3vKu1qsn7TTXut/3fY+v1NqW
	 CTCew3D2IfwmOHKuakfRoVvRjhF1fHK9ke3Bb+bXBzc+aVxKygNQnHVvlONnS07soV
	 /YVTjRemeLQgIMDiVnFzhcfYm7WudLKZx8NhVY0mJ1E0AKtEDhQB0KYYsMYPoDPNkh
	 4ZCBSp83eCvV6xpxQkjEfaXG6wD/1U90bMUh+JNv9l8ygk0a584wvggyZAU1NiU6+5
	 OXl6e9zo4NDcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996B8C28B20
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174339119360.28824.4234541026572388471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2085bf0b8dae38273679f5783a4ecd71c0a65ce6f192f7b6c77b79ec044a565
Date: Mon, 31 Mar 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743391193
