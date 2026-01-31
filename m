Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1C42253EE
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769847834; cv=none; b=WTIzWYTRx8RX4LdoKINYXbjf5bzQ2I7muH93pvolZ4UxB8hDrRujTCkJhgiPAT6pAJ2gcI59jWUwz4rHsUcty22mrsAGKwhx3MwYnfMzCat92jO2auJ65GeI+tqMHz4kblxKMgtZjjzYB9ilPm+4CYWWAbOJuaUdnucA6oUkqqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769847834; c=relaxed/simple;
	bh=KZzIGFxfaG2Qpk97reaZWWLCq715uuWIEBanpt9/kEE=;
	h=To:Subject:From:Message-Id:Date; b=QXg/aLDjE9yndQ+zDEcO7uEzmiDu9Q4krYvb8DB6mVyHEkHNPbk1POjIhMPzJ/DoZ+IypCNRJ+dUN69HSCelDV1m9OdZj9JWrcBXe+W4f1Z+YL3z13VMrb19bcpNK/TmTmG7trubYviy/MhGYWvdXSBNpSb8Mm7kXlEzn/TNk5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5rTIrcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5rTIrcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B16C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769847833;
	bh=KZzIGFxfaG2Qpk97reaZWWLCq715uuWIEBanpt9/kEE=;
	h=To:Subject:From:Date:From;
	b=V5rTIrcK72AE3r+TpZXJAhiHfT2de1TaK60uzddjr3QCdNpFdWoanZVhTzMPfa+lt
	 9/MSy3CiR0uTxjujFeaax7UNFezneviLVG4UQLRuLOTeaMNKkFHSgXp8t1GYbO3Ur7
	 /+bUjmf3gMnXoPO6GqVlov75S1vwMDuc2fLkf9PxYd3Hrm/F3WO06gRlcBJ3e39zf+
	 n5AikA/j94UxP6OoVs17VTekx3fqLCYvD00zMXASq02YzHV4HlHk58Sdn6Y9/zFMqZ
	 f60NJnV9GdOObOlyuk3qaEaxAD9ASKMDGGIVSfqNS6SzDS2nc5nTBjexSgOzToNsBe
	 JlHvB2/OEHMgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982D8D79762
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984783359.27039.11067042875777555044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c20010ac378497382d13cdf5d85255cc4c9a88c4c5010523492bc7bb5c3bad47
Date: Sat, 31 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769847833
