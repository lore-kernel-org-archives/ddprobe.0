Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2638D1F9ECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732710354; cv=none; b=Q+qxqKzyWQus+EMmkjwIgR9gEvRwviLxPkAndYR7xAp8uy3SKMYCNvWH3DHyi1Jqso1z1SFUXJ8nBX4Nzbu3Br4kNKQUkWlDG5WUCygIDVrjxM5ABbMQG5nXrp2bgIHTvBlHztQr+OK/tcVyqy6lWxOqQmRXGaPI3hwTJbaaJ1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732710354; c=relaxed/simple;
	bh=qUlCJ7pseuqaM3ej0Il38lR5UCKEtsWdbFUcEBbFdEg=;
	h=To:Subject:From:Message-Id:Date; b=kncYYmpUBZVFlYWd33gtq7yQ5kze8EqhRvy+bz78cOChfB6b5lq/2kELirjPk24bi9wWfuSUungLz5HAVv0E6TzFXXWEmPCJ8/XdQTLDUErwQt0AsYeQn10xTQhVTV8YQp9OURl7L9pBzuTiEhlnmixCzpujOoEARSQK+F4RuFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puIiyc0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puIiyc0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C235BC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732710353;
	bh=qUlCJ7pseuqaM3ej0Il38lR5UCKEtsWdbFUcEBbFdEg=;
	h=To:Subject:From:Date:From;
	b=puIiyc0M5uXvX8zttw0Bngix7LD4Hxx7ohAkxJgjFKw+UkxGmUr4b5MmJF2HcFfpl
	 wly3Z8aw6k66Y2W4b6PcUfdyHnHGi5jVNsmCgZL69xXrmt0XCFrvW2LyNMGKL4A47+
	 ZRkpM+4FztlHvvdnicpyvu02atPBxcP0BgksdHHIUNBMXatyWTm7iwAJO/nb9GK/EL
	 WgjEdHzPP5s9m0UKSxRLcpD8bQKLzGI3lvHiDfIOnHrHt3blGXqqyB9ztJjwD1uoZw
	 m6rWDtMp2LV30ww9nZyTEAOxVRR4uw8aw0V4lsYF1Mg1VPniATkzzd1cym1AK5htnn
	 jt96H7LoVPDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA13FD6ACC0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271035367.29263.13390733868872228397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1873e5e9ea039dddc589c773c8359c2c3b8fb4539189fcdddf869551cf0839
Date: Wed, 27 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732710353
