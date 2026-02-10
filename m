Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3787C1F8691
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770728634; cv=none; b=Ab1W6H8HCD50Wvrz+gLthfBwtavqx9vGo9QA8V8fFEIZiBOcOLFB1vd/p08Sm0/ozKbmbPH11o8sFBnKSfdFEt0huqQC0aCveU83xFksVb3SA/Myo7t5IjYw65bcABB8wRlm2QF+jiLLE0nxUQMiuF+YlOaIGSSZ3Y2YulzKa3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770728634; c=relaxed/simple;
	bh=zrLWrxtcrUDY04GnoyWKPQqE3m3WeDjAieO7J+vCA7g=;
	h=To:Subject:From:Message-Id:Date; b=tNOj5uolW2Do1h2VqXIS8gZzqRNERjR7fj6LhZJ9grc7u7E0Vs/OqeHUIecJgKDeZmvyVdCI+8z7wj9FoMtW0S2j9GfUY+5FIRvb0f1CXL/zPu3djBH3B5NOQk2fNXkcNSc3U/VD/p6aoJD2L0x96NwJ+Cw2CCvjZE8z1UUsRBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YO9KpLhI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YO9KpLhI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EF3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770728633;
	bh=zrLWrxtcrUDY04GnoyWKPQqE3m3WeDjAieO7J+vCA7g=;
	h=To:Subject:From:Date:From;
	b=YO9KpLhIaIrhSq6aBewHPuscBiewKf2c8JaMecLz1m67wzpdZVmm+E+4DyyaZHt10
	 S859ckNuGIWbPHGVZgDY2OmJH9WiLMQSVgVE+1eE/F5yK4i5vTcxX4BpJn29jk2IGs
	 yTsFsMb2w7snGtbs90RG43O3sqHqtPKTV/WdyKvehxGa+M2A5P7CCoJgAyjreXER8r
	 9FP67T1wzmC8j8O13+IKr9MmENOHwlkpRyc4EYfHmuWAkiiMANlN6zxq5hYmGhSgd3
	 GLlB2NUuR8PTObj8nRX+/M7kWDzBq/VUykeMjqte9Aqn4uTjoCt+TuUQTymLvVpk/+
	 oG/5bWiezsz2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A160EA810D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072863361.18256.3351431520164913831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d1542e157e79f41f0b9d489bf13ed1332d8428f7a356ec54110b6668033f06
Date: Tue, 10 Feb 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770728633
