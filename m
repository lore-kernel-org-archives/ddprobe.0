Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6467B1DED63
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784369314; cv=none; b=c/yt8RuKqSimL6IZxjamyVW0etruSk/TKYD9V42oSdJWemzJIjSta2VTNnrNxtQcAwEeo0NiIyjhyySeXMi8rWKEzxngWSwyfNw2S84QF8+vCDLgGtE89nJuT7hQHzM91fLEkbLES+VEszBL2CvchQXHkSttRKcqzDx3c4fozKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784369314; c=relaxed/simple;
	bh=ifhdT7n6aT7pEECuRVOr4XLclo79DREtI8rKXrs3pNI=;
	h=To:Subject:From:Message-Id:Date; b=M5xxyYXjEuuxCXDb23TJa3QYcv9zP7P3v+TYpH8grydzAk31Q6Kw/0S4ThBFEwAczr/5uykkUf75RX/PPXqN769SvYL3VAUJls/NiPvtnhiBriS2VFe2wALcQjVNKG3g4kgS1xEQ1LQA6NcROF9vymVQSYaSDlEHNdOlVqdhdkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aqwm1t8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aqwm1t8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF57C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784369313;
	bh=ifhdT7n6aT7pEECuRVOr4XLclo79DREtI8rKXrs3pNI=;
	h=To:Subject:From:Date:From;
	b=Aqwm1t8cXHHPPh464EInWEse/T7G+Fn0jMpf/fr1QSFCKTUYR5pnL6hSUYSkx4xuR
	 7CCsCAaCuliNE1CWZxc8WUbREawCcV/Lta+6os0n54bHPrS12uQ9xgbJVAlsSnuruB
	 y7uSIzgErcocz2AxUflaiV+GTZRpn/cq7mCMtAC9oyE6H8p1RmLiwpmdJR8qVwzMn7
	 lCeVg3OIvHTbphGB+a7A8bp8RZmVmdLZrYOTxunKsYZ2Feqz4PU8/oIfyFEFQ8J73R
	 uXUEcIru7S4kBXZd2lsrk78aD2LF2T+f//7R6VOw5xhsf9lxfrbn8MVWQzQe42AN/W
	 fIUtOeNOwWzQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05F3C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436931369.26059.12869047373620535736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b8e55aa978a48eed712350de93c5182330ea77d5cc509ba72a98f661e4842b
Date: Sat, 18 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784369313
