Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650563AFAE1
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787514034; cv=none; b=NIIGVTLekN7TPKZKvocL0TTqCV4MRbMyeFdncgAmadPmWDuxPTS47Yx7phXHOgjIHuVo8VOu5A1QJcXvWhGc0PJxou8Vi88xM4zoviXGBLNMBYfr51S4+Iul4tY8j6Ua/kgCA0BrV4feRgbdb68ta3cnPlES55rW+8GL89wCcLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787514034; c=relaxed/simple;
	bh=7FAbRfnUHBANalq842uw3Uao4LTcUqbhouvoWTNKN7o=;
	h=To:Subject:From:Message-Id:Date; b=Kmb30ol63VSdbVrCW2VbQEvJLX0xbHLnRsXJvnyKWvI0uYuDHAJ/kfcLJqscjT0DLfIfKrzy3IyaMn92Kx2tODvnpP1fZTJrJUlI/qzlzS7pEfsnhpe+PvxQ1k201QpWdLLEo4gan44ncXCb8OnYjeKRpBP72VPJveZWEgoBrwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcBwUtD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcBwUtD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE352C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787514033;
	bh=7FAbRfnUHBANalq842uw3Uao4LTcUqbhouvoWTNKN7o=;
	h=To:Subject:From:Date:From;
	b=ZcBwUtD2CSxiZ0uu5xLC+HsBLCYKyXs/roYQrJPS2+pNoQiwPmntU1aMMcxCx/kLb
	 gHE61qmckjyQ3AR7Nlw20KiwJeth+Yr/p3T8xjfm9tjQlDRMTRyrQLcyDQOczZKF3k
	 3L4XNkeWE0cArYgcOH/YAElgWeNmFjWhyMu2SxYt36OL1AHYP96dhmcVxD8JwaGlZl
	 WYBf8ht4jRGu4Sb58Qkx0Yq1TTm5wD/vWN8gkVZTbaeqw1qXbLNW46pv0FWRUKNIiw
	 L0ckxYo/66C/itJkwUCOOhfNzdtoT3UzmAS7eKX5Mg+8iUO96asT9BE2W1Ygs+DNRP
	 lOzL45Zb1YK2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA53C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751403368.21724.5604762573565961843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35180bc8115a710a5321a5fb7992a037d4943ec5fb78524463f8d6c36b8616b4
Date: Sun, 23 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787514033
