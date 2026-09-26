Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5208035839C
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790449234; cv=none; b=dTo8TlckKQpB5E/I0rm9XYZ5zX9ZL9fRVDoXcGEWj/eUPm3dZox2zMegf9jw/7BCi4Y4V3lKPdUDaZIjSc6g1S8M7PSdPDn8uiCwzlXDuj1F9hvyA1gBSee7lwPmEuF9W5lOPk21PaBT6aD9SDo/I4Yf8MlUYyd2l8fjyG37k00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790449234; c=relaxed/simple;
	bh=NVtiA4j8FG2gkbQYw4RSrcGiPcodBATR+Jfa4t69Uk8=;
	h=To:Subject:From:Message-Id:Date; b=ptBKZ4OEuuN4SgNk21u2JWZlv8/6+rwtFxSVDD8GQRnxcigj2eNJwXZ6yeoS/xslLMMZFybAl8pEAanBZR5isbzKEuMP7smepFeItueqNx9i/LTT48z1kPQkyjV6V4rMumqqtER2WBXKj6haiXEQWADG4B3Mtazw8KMX9vu6uhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRnVdunz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRnVdunz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0803C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790449233;
	bh=NVtiA4j8FG2gkbQYw4RSrcGiPcodBATR+Jfa4t69Uk8=;
	h=To:Subject:From:Date:From;
	b=BRnVdunz22CG4Bv0yTyxySkksP7+BStENB2c0NsBUAPCDnh08MNaqcRbe2Akzl953
	 k08LrYT6d7m20QYIegky5bIT6hB50BBrq+JqJtVAB6d2ouUvMwbJs9aeWEJ+OSNp3M
	 hA8pArHZoWjQevI7zRk8kLtZq5qOnxLqarNpQHeTY1kP8r+j7Lzq525eJFhynBYGpy
	 A5toOkudT2SGds3DPCSR2kKyr5u2hbJgw73H0tG+B8d32TBmQgQ1ul+BRrBqO/Z4g8
	 06n0l9cIHyl/4S6keBSEqb43NkhOsu0ZxaDRFTB7doG4lgeTO3WpoO/jKXBBNSu9jQ
	 RqeFXH5bk10tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EE2C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044923368.12307.12434804437521071326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57eb5b64c140b81dd47c3973d903d45d62fb89e92a44e8dd0a24fdfd7724f730
Date: Sat, 26 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790449233
