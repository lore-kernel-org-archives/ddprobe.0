Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177FD1FF7C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768803234; cv=none; b=eQ23x3dkoeOny0qmyGvPeWu9RaFsK54q4yS/g+vJw/hRYe2VPnUo+rV83NKb5nqggpODVXCKiV/DPsvk1nPm8QQdWM/Nwa8319DF39CH2YMAXs1t/VHJgL0elSjmUdcX+wd5+gPCILTqa2IoR7XqusdWw9ILCeSNht7MIENyUWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768803234; c=relaxed/simple;
	bh=Utas514if4dwvK+swkSZURlXKP/zgzvGE3E6F6chWo8=;
	h=To:Subject:From:Message-Id:Date; b=nLGbtsJdyvEJjfGvjZenhg7IXua/unM/gosK/xJZDlQd0Y8pTumFZjYayd6v1+C0RAh7GXavdHMOnTZjiyI2/sk2IQD71C45VeJsbkQQU0hEBOq+1sKVDQE5iDP9Jzy8iFET2s5iOOfeZOKnmRVHLHSwIrN+LDTlDAoOxzt1vPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OX8FkxPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OX8FkxPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DF7C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768803233;
	bh=Utas514if4dwvK+swkSZURlXKP/zgzvGE3E6F6chWo8=;
	h=To:Subject:From:Date:From;
	b=OX8FkxPlm98X4nc2zQAHw7vI4LEvVIP01Ap7G1UwefqEvcKm8zYbqytmwncGUu6lj
	 Jm+OsgcmHDFykPfmz6Zvj21RuENs/iOLaJlydRW6Xu5xBg8aDEo2cVv7ZItWt9+dc0
	 By0i2BZdSAbYRG0ie6W9fNeUyF01sQgI3xYAKK9Hkh+s/MEXQmWh8maBdgH8lCQ6/B
	 VhLkw4ER2njjq40/teoyPLOcKIQI+zwfkBPunj6Wr/lh5rD/U6jgfW2spsPUCIQMrO
	 ZLWent/sL7kAUqcpScxLKyyInVU+MhtunAaies/b0+XP3f6HzZYzVZvsPihIg7zoFP
	 n615upK5s4T6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C3CA5FEE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880323359.12185.18432935119961387701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0116f5e07fe0597f428397a1bdd6dba4163b9fd53b810535e7ce49cabc41e44f
Date: Mon, 19 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768803233
