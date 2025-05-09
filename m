Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28810139B
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746794995; cv=none; b=KchqTjRanI40kj5myS8gN0qOqtePvugPGF+W5+6WwIC7mOYlb+fV57YVBuPkxhGJLOdqSI0Ylws7DBjUpkhk8YSPzNcnIk/BLr4oIj7A+Dr1ufD1V1WD4uH6EdsnOnwO5qPNPdwtQ1FN+qOqo6zYQdoiWDg+q2C4yl6V7ZBSquo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746794995; c=relaxed/simple;
	bh=Alz7oruK4Hjz3clylNxWYa72QrwfxrNLkUdzXjTTJuc=;
	h=To:Subject:From:Message-Id:Date; b=YptZpIn4qEVEsU0Rv9OUKfln+xeL6JVCE24HeIL3rvgRbKfgzxuIpLaaUayHjSW90ofApomQn30XxaZQr0OkM1NVezN/8p79HcWXoFuOvqM61IBNHAVXCch543u2mzUENeP8czEfERR1KMRtJTaI2PZdHc5pKlA6uJ+1T+kV0AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPBn9nKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPBn9nKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1236C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746794993;
	bh=Alz7oruK4Hjz3clylNxWYa72QrwfxrNLkUdzXjTTJuc=;
	h=To:Subject:From:Date:From;
	b=kPBn9nKMfEFoIu8+g0/NsQyzPozXmKog5Eh6LsdX2VJAof76nrn+kKrnJNumu6aU6
	 D6LqlQ/Aynxkpmb0INytLVAnY+vI7Q+Rf1fX4Q8LcZEWKBXaQeS7bGuxDnGHl+4LzN
	 /CrxFG631ehMKGsZbDJcp7ViO+2VNOJFou5nHip9PAsZRak/nxkkHoAMJ3VNJOdZxa
	 R29YkzuSVHIh86dC5796zdJ/6PaKbXu7ndU6qrffwmbh3pqmhJmNgGlG15y1ky33hw
	 SDtUR+6puzRqBTuiNW80Tqd71zH/Hwm//NG1w4mZww+PDHNL/auFAxRDeN4NvRkaxr
	 LqS4MCjH1km3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF95C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679499357.17283.5858610156158233987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba3fc4f8ba1b4178951053d0cb7c074bb5bbb0409200a0a1059312e82bfd695
Date: Fri, 09 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746794993
