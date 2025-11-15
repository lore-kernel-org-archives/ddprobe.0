Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A3F306B0D
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763236254; cv=none; b=LyWJK8iMewYsXmL6CuGjrdYsaEyMySRNzLGEFK9iAngE19DJt7R+q7Q1dv4bqtV5hjJ6XlfE+PzQt2nZaFSX+3/f0IACEv+93TuwI72vqzmTkoWcolFHkluu9ySWsZkMVAcftwmAwm1nDzwZOo3sjaRgBY9bj/76BKFXzVAAFS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763236254; c=relaxed/simple;
	bh=2zAwdCn1sVVOfNpV2+pvZ81w6dabS1C9cWt4Gp2Ui9A=;
	h=To:Subject:From:Message-Id:Date; b=jLTP/Y4GuyLZnwH1799innYGQ0IFggqWUpYzcVLe6RpttOmXrB5+qBs1DbxdQXQaNvYUjPlo9clsCy+yBmwNvtLDLARKW0HWCPLMEMBzAkEhHoMduq8Q4Zn4WA1MtSNdEmiFk89fG4Cgvhg4yTubyBhUo5kqivCAUljValsE7s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mifoVYgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mifoVYgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB2DC113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763236253;
	bh=2zAwdCn1sVVOfNpV2+pvZ81w6dabS1C9cWt4Gp2Ui9A=;
	h=To:Subject:From:Date:From;
	b=mifoVYgFetMqlq4pgmutc0OHIxZ51TtVav/KiXSk5fexvgrKwNnFifpLvjiRXFR5O
	 kXcK6AtblF6+6ac44SUPbkVgrCeLKb8i/kSvXLY+/1FXO5uDm+EV0eNbXP+QvVXoYL
	 lswdt0NFT2sy9u+JThZKgdV/dtMUIJW9fKp9zaBf60CTOsw9qKU152Cy5eT5QC8yRr
	 82HsNjeXn5PaSCyXhmMt4bP6LWYLj6ew1gsbVa3UIX8XLaREuPoNWqc4fNpQ0xPs1E
	 wVzAIdXBOqkzbgzKg3M+HT0+PimEDXKW5j0IUGx4UlJsTghXYINvfG3mtYSpOryIhn
	 LZyJkc3heP0sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00CBCEBF83
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323625358.31668.17565987751144586211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31bb2e441a5120f2d4edaf7ad2cfdf18f3111a8a8a6d055438c9d6e4cf41ce5a
Date: Sat, 15 Nov 2025 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763236253
