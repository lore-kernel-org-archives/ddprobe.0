Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AEF178CC8
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748714394; cv=none; b=iEC2eYY2aBlWATebQaM8i9MGP3XBkVQNGt4kATDQfkAXOu58DA+MjkWZ6O26wT9EDgRhzfebKjRulqS87xON7I9/2M2dzKH0i3qfgkGW/pxS6/PTpme1oxwDJto3y/oy2DehDe+LWiO0q4a87R4pMe6FUYRi3QDrIAlFjuyhiNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748714394; c=relaxed/simple;
	bh=K4vpltpJk2z72w0d8fF6Lq1ShwNn5Rrq3H4Dafefq78=;
	h=To:Subject:From:Message-Id:Date; b=G0URlurSuBVPZbPokTwRD/XgfbyzHorJEzEdYt/CV+QyJ6uNN1/LlRFqBY0iT9dkXB4kCXzbIhAqnufhXKRjaAoFhvU2CiBKFN2fVLcPh3eblDfywF7Ue4vbcHEVUD3ExjcrsEjqYivRKVLyeDns2MdlGQ3siIcMxySsv1oY22s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBOFEeyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBOFEeyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CB6C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748714393;
	bh=K4vpltpJk2z72w0d8fF6Lq1ShwNn5Rrq3H4Dafefq78=;
	h=To:Subject:From:Date:From;
	b=IBOFEeyKNhgjoVazl5WGP4TV9I5CaEMjnTFu1LanCTpXFFBeerRI3vZlvh7JASGXV
	 CAvCiSsD2TdbHkB/QcM4Za7VU+8f4p9PaP/4mLN12y/L0lOV1QdQw8/UTbXN6tUVhw
	 9Cv+6EMoIn94k60Wu5TH9d4MSefJRgky+qZDbERbpQeyxQhyJKQrmWlLZRT7fMSBiZ
	 H6Qmp5Pvsde7W3uoEfxZUSlbZQbxhIGseCRhyvUnQp72REuu321LYEP9LqOOu4gquU
	 r/k6gIWR+ZOCaUub7R4XW9viSh10fEeRWfyaokkLW6D5sEWGV/CUM1w/kFbi8ajHE1
	 zjl73iSPQEg2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966B7C5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871439358.27464.12642618978624059351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfaa808086cd3813b7ddf95ae06cf910167d2fbc4af8e1aa2f57738fa0e9488
Date: Sat, 31 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748714393
