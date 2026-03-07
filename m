Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159572FB084
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772847894; cv=none; b=qEKYiuIetrYq1X2UdpS/3ZCU7y5F5pzPvXqVVTpHpA4BOWHIoxzK9nV+YgA+0SI90Vupr4h+dumnt5ezw4XfAmU6/JspTqxX7DBH5V4Tx4xER9fAkOqyY8UtXF0l/0farloiaXNUS50iFR/MihQVWtRaUTSNYRxTB0aenVLIvnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772847894; c=relaxed/simple;
	bh=ph9IwqRDhQa9MTqpJQ//7X+IzabYtO/KNbRApJCORTQ=;
	h=To:Subject:From:Message-Id:Date; b=d9MewZi38NkNx7MA1zC+huC8klW+FAZ51SdOudMDJlZHjF71W3WYSXhZcQCvOTTqonDHh4dMcHsML1sUTPAv+9+owSqD0Fw12GNCR48W5GD5iweKgiKJ5rhot5Sk2U7mUusA/ApcRkPPFZSxPSM24SJe8N2qrT0jKN+Bn3TwmjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCYcvLnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCYcvLnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A30C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772847893;
	bh=ph9IwqRDhQa9MTqpJQ//7X+IzabYtO/KNbRApJCORTQ=;
	h=To:Subject:From:Date:From;
	b=TCYcvLnPODFwWj7U7embrbZD9xmsS6GnuxCTgOG3s5dheZhRYmLYgKldVWR0DqnzZ
	 cx34X0pV6QbuP3ZHRYDYILmWezudg9jd3kKOf4HvyPo0cQ7lXt8t9NN8u9HsqRu1k1
	 /PM/qOtOvhyYMKLC6kYnsRmA/NyfoAMR9nAT0VnWgDsCH/VRJG92GvJGlQ2z9PGORn
	 3/Ep7QVQvikiyWmgORybf8dO8yUPausNStovFM9Qq7jkw2gcuutRdiTl+V3Iu1/CJN
	 rU4+YPF6edvz5ZmM0dZf+R3vnOPTGf1ld+SiTdSuex4+3j1aRPIvX1iALlIKhifh7p
	 /SSd/aVslAttw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961DBFC9EC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284789357.21680.17845237712491596722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527bcc4515a72c58e187dad4d10529bd5f8e45b7bd4d256b21c41b4eb2322802
Date: Sat, 07 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772847893
