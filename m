Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2C72F9998
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766471034; cv=none; b=Rgq5yjF3vDIGsBO8uwfH9Llj6uz7NtiBR67woru/bQ2FRZUKgizhpHj17UlUw6IAKTKGaT9HemgMSmAryLtuLvLDD9uH8WVlNTiz9loOigtcdH1EWwgugusCfUODJme9bzjNlMhaX/l1VInnzQ8zqPdkXQ0NxR3n/VoCd/903Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766471034; c=relaxed/simple;
	bh=FtbAO/kIoaOiW9N0FSqfa+BSbCCYTwechf8Ep9ZfxBY=;
	h=To:Subject:From:Message-Id:Date; b=pFyEFyhrtxATXSi6Kwpv05n8F9j55nZiQh2JcMgFIf9kvweuDtVScLbOCMsR0KBr6UytzZIcLyaDzGQ8vt5v6cJdqDRY8PddAWNK72yo8Uhk1eXof07md9DmQ3yxlZykERJgLNQREFwcpMXfTE9Pb91gAYESAyR3w8VUPHMo1rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jb8nnuT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jb8nnuT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FD2C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766471033;
	bh=FtbAO/kIoaOiW9N0FSqfa+BSbCCYTwechf8Ep9ZfxBY=;
	h=To:Subject:From:Date:From;
	b=Jb8nnuT+r4n5yTe1QSFZ9W57KxafxpvAsofN+Jq8TIthZAZRTMoSFjRc+PS9Z05oH
	 ZFMt/6V1Qq65VOLAqxWYGFNeCDk6Z0NrUuMohlxgSbsGQlzwVY+CdS6e1o9yrkPHql
	 bVwtoRPWAsFvPHibdCTMKWoy+DETHg+OF+Qc5NH2JXNSjDkDJfQdsuZQrQla2iX/u2
	 MqBouohETHhnNIa+Z96aOLqVI0TXJLfLzV2j9Kxers6s/bKXq2ifK8oj3IAWCPvl1Z
	 IvNhfIRfo+jnLq7dfuvTVcYJCeRjNQy/4cf8SCuItuMZ97/qF3/5AQPnOtKrE2ofiK
	 M1mK+nSqVbAvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96317E6B277
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647103358.25615.17737606531513738533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 543c10956c2ebed239f2f0cdd48203d057579eaa9f5b4647f4c47bfc0f81db8b
Date: Tue, 23 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766471033
