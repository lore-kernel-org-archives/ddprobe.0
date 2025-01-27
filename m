Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E482282EE
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737972954; cv=none; b=i5ARjrMZ/wmZRKfXigge55jAmy86VGfYvxWF/QieqczT/KOF46MANURxN3v/EEtpth+4lApyL1kWpmaiAETEQ2IFAuX8vqoR7XU3FW3AHrCJ3QK+rIusSE0UyhnxQuhsKv3pxt6GyCGwmin2/TqArTBTWqhgZ+0hM2coAB3zr1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737972954; c=relaxed/simple;
	bh=MSX5LhZ9QSs79N5CPEYn2bk+cQOiecn8OmQA4CR4UR8=;
	h=To:Subject:From:Message-Id:Date; b=PnvWpAwtnRPmeL7snIEgFJiki+3xk17HMXtICzeDmiOOmwshj44D9J8WHoi4D8j0NDKW4cA7MUp+ghY0qjazq7l/kIcH3ilKTT8BtipxzqcMtdCW9+9xrnulbIcaSu7PEokfKxzo2RhwUmFOMG+1/2jkv8+NC4E4XdZrii/g7iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=se04LPRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="se04LPRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D9AC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737972953;
	bh=MSX5LhZ9QSs79N5CPEYn2bk+cQOiecn8OmQA4CR4UR8=;
	h=To:Subject:From:Date:From;
	b=se04LPRqzdfjR47I5kcJ1h4LxEseiEQvN8dlTgq11g1EetZFVBZJxEYjsfA8tW6Fa
	 xPOHNHuXGpk9/nXHTspN4k6U9G9K7Rmll69+lE0DUnG0gqkXZcFkUsVjzomOZ75AGp
	 CrdawycJNK2wyEmDanPGVA133pK3wE9Mz1EAWR1pQrqyhEDCy1Bnu8op/dodDWG52b
	 Y4mSrS0d0ZpBZycxBoTtXASQ3vPDMZiCA06Sex6vyLUkpogF7+CTBYYJ3Y+dBysAAc
	 bWkODlSdB2smAv0x6dZnmUVUNLouUojmAu3MbX7BkfcbFWAvL3BXTQcRFq+mvevoQ2
	 IZvM2lG/DdQdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E45FC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173797295357.11151.558281798321240812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdace0c80e6c4208bb6673cc0077ad1390d48fe9d92bccb9e075c0082a3770b2
Date: Mon, 27 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737972953
