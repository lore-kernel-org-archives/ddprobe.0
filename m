Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520E33AF66A
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777583254; cv=none; b=HfHeVbdCD9reMbeGJI80Z696gx9NNyet2jwvmvjJ04T0uxgOqekvKoA3ZrLuYD5hLANat/uJDW4GoA9gs8gLfkzjZp5xsWrZSCs6u7CzqPv7i5M0iYyXZXYTti681PC/nBBiTxppqGBPmNm/EfSzBwHwiEtQtmks491dYVPQOvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777583254; c=relaxed/simple;
	bh=y7XD8uNLG/4T9fn70C2ARFPl0ftvsF4bEeX0czTnkYA=;
	h=To:Subject:From:Message-Id:Date; b=YYHw1VWg8usR0EHDwCCii/CdHSRB64Gw3krGAw10i58Vl/mJphzaueUPmfY1umxwukhoQ4KVV0tV+dXUSst8bkDQWdPxBZQR3EeFajLcchRo6wcJ0KZ1X1XBDSrOVsVn4KX++ubsqJoEKJjXWeMiylVgYnGzHZj5Rq12aQGHOzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgSUdKVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgSUdKVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C75C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777583253;
	bh=y7XD8uNLG/4T9fn70C2ARFPl0ftvsF4bEeX0czTnkYA=;
	h=To:Subject:From:Date:From;
	b=AgSUdKVhS0zbGsjwCPnN+LFV9L7/QxZsu3fkvDDZf4K0SwBUM63PxfWWeH7a4DPkA
	 CAs/6oDgu1XtOvX0J/k332MhQc5y0qr7NDBLuYUSHlAZmZTUZgZvp6tEaXoXtcat0G
	 LGrjkmAwZrzrkxJ+evXsxz3xwtiwEGSyxqIsMNla+U8erGwZBHJXOfO2iuHsIh7/Rd
	 cqLSYxBnRN2EBjctuv0VMkjLmEIQz67Kd0hxoqG9r3VsbWtlEYpTr2xmMuKxwkkzrB
	 +RYHA9ha60Z4CSp5ONyPT+ocGK2b3lf5HZIoJVXD5LYXfyOTidfHQ6jIYQQMw4yU/F
	 cCSNsc8jGy+yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD32CD13D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758325369.18054.17636786643249695576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0cb64fac6cae037071de70ffa990389a402cf69182afc58e3f09d56c9bae66
Date: Thu, 30 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777583253
