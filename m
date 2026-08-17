Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E234418FF
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786980034; cv=none; b=uRs283o+C6YiZ/fY1SRymEsJCLIrSHTxwwrAZHowR5gbc5/hd547kJK//NTmu4dBFm0naj01Xyfgx1jMuFS4IGfJmIX9bRqpsUaKap3VMVVyOuTHug5BahC7U7NlaimMZ2wozBfRMysmZmnHlGzGBnfgGOkjrAUJ0/qcJSKxjg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786980034; c=relaxed/simple;
	bh=P3rSgzr+FZutjZ5zjJ97Joqvc58OiCb0aGt+VF8OsB8=;
	h=To:Subject:From:Message-Id:Date; b=ssdv5b/ftzU9OsJ35SCicUjGUHmm3wsPAfG2/I3q2GpplJieP4ChrMcbOJtiv2uvvFgatcK/QMnucXDNgeDIK35ppOcufzWM6VGeEET/cUTdzEm6xRNWvcI41E8++pi0/bGFrCBQRhQW+LlvF6kIJYvSR3LBbEEOK0by2WPpYJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqbJA7Xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqbJA7Xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6D3C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786980033;
	bh=P3rSgzr+FZutjZ5zjJ97Joqvc58OiCb0aGt+VF8OsB8=;
	h=To:Subject:From:Date:From;
	b=UqbJA7Xx/y5dYwyF3Wvff9boH0H+uuj4RupOcYKUwTug6SXVuwHpRkHn1RGwGoJxd
	 TBLVUGCEMh41pCb0QwNM98Yoin9VCZRONmSSJruZTPn9etlMsG7xGwlKyNR9QTAO+Y
	 9w3JXzNud0Yaaoui+gvW+pOwN7wAN3iPHhaOTqOhmdw4M4A3hR5TkJNxFRlmgApUpX
	 5XLN1E/sISOnpEcEUBpbnxtG1ThYvpxBWRxlCT+LfjWALEK5gvLADqodNW+OmHc2jv
	 OAvsfemiE2oXNe2SyDGedRXnBWY6BsOncMfexlbJDkQnZy5bSroOVhIbImOc7k9p8X
	 5zPbsASGCQTBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6CCC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698003368.1145.3463626941674430643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7957729ad818758596b446c52e7284918c5093e67ad1b7b9e2840347e17fb3
Date: Mon, 17 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786980033
