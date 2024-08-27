Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22972219FF
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724736954; cv=none; b=MSCSYJs98S3lj1RmNcDt0F/aYVddKnBQwW6+NJuaSGd3i87RCgv1bSKD3YKBX47Cg/3UHs5/sYDLhI+wWpfpR1R0BTeTMje84xbKPy93u88Rsspuj5c6OerUB5+NHxo/hev0FK3ri6WcfdJGFiaL9plrhp0vdIyMnkjdE8N/7wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724736954; c=relaxed/simple;
	bh=HxRQyiFmvX315gvPAc6gn2WfCdTFD9Bss5gn5nYEelg=;
	h=To:Subject:From:Message-Id:Date; b=ZgkVXHNNSYDT4KcY9UsSeMBQ7qaLHeZmoCWRfT4GW87AxN3EdI2hAHOyboSyt36Ee4Vr66Sr4lxCpuC7UiSSD8hljqmIRp2QYp7az7JNURL+tuUZKg6RB6V1BdYgh9A2S+3TjaNcIRO1aB2o5Z75e5dfaCddJUpYIIPMZ/kRsQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MD5+AR7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MD5+AR7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5529C8B7A0
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724736953;
	bh=HxRQyiFmvX315gvPAc6gn2WfCdTFD9Bss5gn5nYEelg=;
	h=To:Subject:From:Date:From;
	b=MD5+AR7vp8pb+8187ol45R5D42NMDLpgjDdJIWw7n4fWMwqIgSl695T0J3Nbo4dFt
	 yp/wozRJD9uWppiJrojEUqQrtXI3Ra5LyGomNcfC+ZVmhVTcenZcKpB88g6Tx8pszV
	 T9+D8sBRx4OiYn7jmhZaKuMbbh5WrPVzTqojXTGHiLZ42y9JqG8ElLocfFrkINe09Z
	 DzgBn1DyFlYU4R1JUibY4UtiTZDt22mFPBi9a/S/Jw2GR35ep3hGGShm2QSLiU+iud
	 X4ZW4WtUNijjxwKU7EfD43grIo3u0AVylKH3n+FMk3yQUgvq3ocxtE5nqqerZI6p2r
	 m4o7NtCgfS/Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C8C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172473695360.9154.12999346610896762052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a324f707d3b4fbf54e92d016f3bf0c6ad183dd5e4847855d54179bbd94a6f2
Date: Tue, 27 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724736953
