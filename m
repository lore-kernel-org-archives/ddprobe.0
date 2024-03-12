Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1F726286
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710286097; cv=none; b=F6+j/6483Qh1cKpDheKSg9h3KFdyWgqw4/cEpra9VufdIn/RbSkv2RFTtlORADa5OHieNPm+g3GUbd252jUTIA4ssjLXPXma1tJ+oFeZyUdZQq3YX1MZeIvTcgRAB9GTkL/T/bemo5zgEf7z35kODYtly1HZ95mjMA8n/xw24Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710286097; c=relaxed/simple;
	bh=d8JFWlDLx3GI+9RgquGAjGugY7HMzdZui9gSVtayRSI=;
	h=To:Subject:From:Message-Id:Date; b=IQuZJ3cDRX+Vzg07FugpxVIr5mQDYCf719t0OiXg8HIPZHqRWf7zKjz4H9Fh1bnJnj1vMfMAUsduTm6sl8TrKNlDGmA6mfj7p9vLW4iaGrYNUMtUGeO96KoODzm4jG0ITHK6+TkfDKoG+PB9epCSFmBHYfdk11EagXEzLK+6rIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1JN5Yy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1JN5Yy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFC6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710286096;
	bh=d8JFWlDLx3GI+9RgquGAjGugY7HMzdZui9gSVtayRSI=;
	h=To:Subject:From:Date:From;
	b=F1JN5Yy9RZZTV+nYMSM8fi/ELDnT8cARFWpb2JcThXFiDXt8GWRmc2LpaFlGoqXRx
	 UgIgQU7eaJzfJX9zEuTGXxEYAyPW1FPH2oSLcaeggAFAwo9xidB+xplgjguSzPkFoF
	 /s6qmp1uhm4uOae2W5sC4ElK2naPaIn3/bOq4B/ZvxpWB06nfzhNhFm98ekfstJpSy
	 UBXDzkklCKPFg1Jd/wJSeLFMufzc+Ahj6PtIb7w5Xjchoqxu/8eCgdEanmVFFASS8p
	 9thdRdNJIY75JBE8qEiiXumKcAu51Yg01L5xDZYHdYIHqZBX4dAbgEUYnVzUX4LyGq
	 a6DXkeiEtJ+ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6485CC54E58
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171028609637.2541.2278596079419688641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d4337de61b9a8ca7a3c1caa5562965b3bfb01ab3d90b5ca04b85c57ec1459e
Date: Tue, 12 Mar 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710286096
