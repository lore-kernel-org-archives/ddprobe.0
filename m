Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B8619CC3E
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733831754; cv=none; b=N8SO5WbVB2iMlJEjmle0SKYnJ5AvbF/ZGEzxywOckCFIxjol6J5TbomX/iqvke9HwUcD5IFsnw+UBE7Sv5lGcP3BcXOEG5U7oVFWNSJ33Db0Uv0dFvR0PFEStYpUaXsqQXkZGj1j1wp5896IevndSdMV1VUTv/uzm/JmGJs9urs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733831754; c=relaxed/simple;
	bh=LG8M+AvpAEnqOq09BUedjBiUbhIEh/XGYDALWmfiL3c=;
	h=To:Subject:From:Message-Id:Date; b=k0ApaZ9drky8qTuzK6u6iaDoaiJLs6oBg4E4zywH3AbIgud3Ry5sjfLcr1UHI3LFCi10ETUC4Jjj3VJQQJqLwOsWO5Ad+eHni1f7d6DrRWBywcaNCcmozHFvvN4aDkaKXvR7FdsVgyS9BkUhrQklUcbfhlVWIonjkJ5ZlZVTxoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFWYXypN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFWYXypN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC46C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733831753;
	bh=LG8M+AvpAEnqOq09BUedjBiUbhIEh/XGYDALWmfiL3c=;
	h=To:Subject:From:Date:From;
	b=qFWYXypNdLrKG1Mkcaqqp6pHXohygO2ZoTaOGNxDEvky0qMgDe+74VHwnp+nqQ234
	 JO0TKe9GtIJy/8o7SfVC6stf9VweKgqqTGQnj1nX8RM16mDAvtfWQl3UanQ24FX2ZT
	 KVmtPBXob44Tx+n7E2KNt30KBat8Ff/hOqvyRZrsBxUuE0rrerPEWLW//BigCM8n9C
	 vj5WvxvKlgV5yedDLcMvFIAyHDfppAUQKH2FSFIAN+lmk+6/f+W6/KYbLqEmdosyLa
	 ixiUJxcesSMwwHF4cwjTelL2/rorsEZQ0V/UL9VKJuoB2c+zbgCiRZj6ixCzCegsmY
	 /0CD/6G4doTIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7AAE7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173383175364.6155.16946359199264032023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8704df31eb8534a12cef7f31e30a1e035a01a70203451ce0870ceff1b32b37de
Date: Tue, 10 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733831753
