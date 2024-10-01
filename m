Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B35FEEC5
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727787954; cv=none; b=cf/AcOmn5s5sy78ylDsrJH8GFqXOTgvv4s82qGxxdeXbqGJ9zzc0pq7VpPLAeBoK2lgwzSq6T/364+xc779MzyJUGkJTrzyV0oPE31dAdJnvPEp5DoE+52GWzSv7x+VzAfDE8ldUBU5QBH4uoi1L2j43mX8Bof549tTm/P3R/pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727787954; c=relaxed/simple;
	bh=3i4u1aDUJNH4e/8Ul8Tl1J25PAua9pHtKWckKjloOLk=;
	h=To:Subject:From:Message-Id:Date; b=OfIcJmRgcaKfhgmhcoSHeuQUvu0R4dq5Vv+gdBMXrmMt99zCeHjwUkRMB6O0B3DK/RrtyxTwwcZqflS40ZU0Bj0yHEqdKSNiWr4pvcVDo4PZFOnd2i5zZnddIrqlVRY+5r9XHww2oomMex9w1jRPz1iwqE5tgV0XO+GoDHvzvcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otCMl/qv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otCMl/qv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E41DAC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727787953;
	bh=3i4u1aDUJNH4e/8Ul8Tl1J25PAua9pHtKWckKjloOLk=;
	h=To:Subject:From:Date:From;
	b=otCMl/qvoOaLX9STqnD7a7QJnyS9LuseYWmZms6oIpDHVwTU3hypu/OdlsaZj55eI
	 O5h32tqNIal6PfSeyVXrZ0BWAxqr43Ni/oYvsJRsJ3M8Nwfu8FQ00lYBCPai53qPdA
	 eKJD1dRb51F8Ri7hCYFm09j65vEFHQoA37wGJxiVKS4+AwKx3x089V5/o54rFg6FqQ
	 +bTOTJ7bmzdFSrzE6M1N6mdrwjDOMMfx3AO1Bgk52U+QxqZftgLuxBW4qOKA5lfnsh
	 Uqmj8RFVVFpo3XbsC8vJrUR0uf1hkA4+SabNwBajoJ7lESkV1UVvVURaTIpi2Qrps0
	 FGdQLIebaHBqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9134CE7D1F
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172778795367.23106.11255364094714072105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af0169b5c2ac1649f7c5c38c23eef23bb03cac318841760893f863579a5d288
Date: Tue, 01 Oct 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727787953
