Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C859C1BC3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732674953; cv=none; b=cYLkCapy7RAIQ8CrC2vJIsARMLiv4t1cPWrl6BE4POYL1IAucSGSzRxxgIfaTMPWuxbcR4IPfcp6hbVuumcGg3eNbbN8MfUaKdru/VoUPddBBEbRNs0FESJDVEAahHh0a1voXCcjKMXg9MVxg+ORpFubxTTTvOUN7ao9xC6n+oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732674953; c=relaxed/simple;
	bh=CLazG7+1MbcN/ww+edT9lA7btBTXpTTAbBOlPbD9x40=;
	h=To:Subject:From:Message-Id:Date; b=FsxpTBT72tVU9h53yDjxm5XuspNbflOQ5fQYKR0xMJOwLYwZmIkovxM8hDSxinS62PT/tTpo2GNb9Y8FQn9iAj71jsYcx8HL8qhQ+gflKXSVXt0j4tuMynwwuQkzlEGkirmfuagAsuhpsPGHEsizG1hgbbgaJVg1OXCE2j+Yi1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BN2IwMue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BN2IwMue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BEBC4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732674953;
	bh=CLazG7+1MbcN/ww+edT9lA7btBTXpTTAbBOlPbD9x40=;
	h=To:Subject:From:Date:From;
	b=BN2IwMueAfbCs6igY1UfpS+OKB3DT1OTnN+RW9CDTVFoyL1UyBRMZv2/wvlOTIJwf
	 R+8HoAJdeIQyqlqlER5QT8A6AXJZX03S/BA+mDwk/cfvk1dAH0zCwo+8yRsHM3titX
	 WVtyUqcOdmdb2rIbD4JxXILpw7kIO0/QQws+M6lIq585tQZeEC0NqTSk+ckUBMwo+p
	 4bUrDOCMY2KEfFU94Xblcavwb+hPvVmNeZLcV7qRjdT4onj1ADG5SIRBy5mfBU1EYP
	 rnjVltIbVuOGXjOcETKMNOpHzeEnyCF16b1wVTE9xED2pPGQC+CK6BAOFxzdLPgt4P
	 AVck6k75RBqvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EB6D66BAC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267495361.14707.327311200152937464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9755d8c88cfbcb86b598333cecf505fa8217cb258e46807da1fda06a978ba512
Date: Wed, 27 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732674953
