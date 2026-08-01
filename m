Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3063932DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785579034; cv=none; b=iPNU3HPUFIXNCWkdcNpTtljdJGq/0VXE0MwXash2tLjqtify93IQrvo0Qo/Yg/rcKeLr7KbfyEauHAx4dBD3lsWKNnI4vh77nOYvsJEIMROUnvCRWMCcGV0KQdjUqGEcBdSrVe33MSKDBdhYKGzbVJlLse6FWdWTjDSYYE6NaEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785579034; c=relaxed/simple;
	bh=+gEREpiBwO2h46NSx+DeAvYtC2sygZOA4vmyMh4h/lk=;
	h=To:Subject:From:Message-Id:Date; b=CbX9daJ4HvPz9JiIiqpvWKufC6iBOHvhVNil4qzm3kwilERekDcoQBshrpmSYx38au+Inz4s2S0L/0ZQaqyFT5PwD5Rr79ESErjOd33SQbo/KMEaFS063RXxsXZHqE+lg9UNesPklnvSkF0Xk7sXdLB31nznSEWO5MPQ5ZL2hQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3aq0bJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3aq0bJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE622C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785579033;
	bh=+gEREpiBwO2h46NSx+DeAvYtC2sygZOA4vmyMh4h/lk=;
	h=To:Subject:From:Date:From;
	b=s3aq0bJ6jWlTEgcKNxLDWki+lZj6CTjWit9DJcntw5bLIyhrSFFWHRm8Z5XG9Kt2a
	 wiX7/zioS7xx3q2G/zz5WvKTMYeoBJfumiw/KY2Nq1N8b+0Ge2IgWiCXLDQA3/a/Ls
	 b4+X9qK6Mm+n77y2L9dwe9c4RW1YHPc0Q+Xe4tfrAQBWpRSB5z3SPbr1h9PGjzmWFa
	 YsBxAZT4U3S2lz33Z5DBA6HFilXFK5G168GM6sgkxCHPS9Thu2cYIS7z84SmxFlcIE
	 3Qvr7kGqOxJBcKFhKAGAJtgocYIayaMebIjzUcPSnhocsaex5LQ+ei6T9UlxG7dLZI
	 ikcPRV3a0Lz8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB76C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557903369.26285.94010537919793427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e901adb0256097d50d8304f57039da8aa8342fa684f0c9f9f774a251e4a874ad
Date: Sat, 01 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785579033
