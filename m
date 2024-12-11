Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0FEECC
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733876754; cv=none; b=hxgMp31eZJXH/h9bkzQwGzJxzbQRCmW9np5hsYB2F6qvQNz3RM7GA/7PDLAWGw08A89TtCiRkc1nPjtlPGoWv+0rWTq9WZJLFhlSNAeBxieWUmIQjNErhMs0GvbGbpfNxDi5n4JQxyhchOfOCSZ4DGavxD3tkabF6GN9Y+Xt8Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733876754; c=relaxed/simple;
	bh=PhtlfPrMl4vOsyXJmqfvTuwPJX3WgAqY/yx+ISVA+fQ=;
	h=To:Subject:From:Message-Id:Date; b=R1bqRnzPAK3UzXZV5YhfbEyhF86bGFmZ78VqLCiRw/XSs8TAP5vxwkb/Dt3fUPs2sXfauGVuaIrN5ftW7tDdgbWWZIKbZAnRvEXACA1Tb6dCoB4CKbMA5RdEzFoJuOELhF9J3fGVHwkCKr8atdbm08uo8IrY6r3Qo0P6Qtq3K9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhBqT+r9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhBqT+r9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C36C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733876753;
	bh=PhtlfPrMl4vOsyXJmqfvTuwPJX3WgAqY/yx+ISVA+fQ=;
	h=To:Subject:From:Date:From;
	b=KhBqT+r9DEsZptN2awUPipEsJQ/67Deco5St5wASt4d8Vn62jbr6MnU9aWBaIGdMX
	 08jcIV+LxhsLPl8VnbHe6cLxLKpxQY6jQEfHs/wx7ok9Fon80pZYcJuGfkK0GeW3/k
	 7w7qb1G6nGftw2kCuhczDgrv5WMj5FzT+PggJ9DVNmtRwCam1uHQO9bjsZGvnbod7W
	 spd3al2d8KCUgYVuVi5eVifpjZoP/Tf6Dxv9Zo73jELeuRIeV7dBymxkKqMLHhhxtY
	 /MGxRnredXZ0fmIDhm4pXRCgLVXmzHtJbviIvIbaqrGwv4Q/wK7aH4dzXttCtp4017
	 Weq1yz0b0lPIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1628E7717F
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173387675361.1076.14552609231174951900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d92aa2c91919cdb77a0992cb502c32532944ac145d493a47da31254b86882a9
Date: Wed, 11 Dec 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733876753
