Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A2023E342
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790435436; cv=none; b=PAhyGD5Jx5fdCVl9na4i8ieLmBnepl4a2UfSVpyjMJLXOuHulXQ3v0A/T5uIkaWKLfAxyM69E+nAHOlN6p12rQ1G6k9AWR2rd4IHRjfk4mjNTGGy+ew3xX9i1oQyjOpVtHNd3JmzcDbBA2kbji01e4n5Dpd0vTvt1u9GuiP6pmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790435436; c=relaxed/simple;
	bh=cpqxjA7kmyLhzaiXpTZ0GTDcOyTbE1Iow/dSuQ0LJRc=;
	h=To:Subject:From:Message-Id:Date; b=qJCaz8PjYMNgGk3jhQQYBx8zuIuZZvleHMu3LL3f1RLTEjALione9yStNDdocY4HVgol7rBqZrCOjd0CYsgHsaibMHtgMUSo2/n99kPOpCWJjiB03y9NJYgKMU6VfZ097Dn+dobRE7LNgu85NzEBMDwcVrgd3Q8MfD9pO77jOCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIiWbzV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIiWbzV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB386C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790435433;
	bh=cpqxjA7kmyLhzaiXpTZ0GTDcOyTbE1Iow/dSuQ0LJRc=;
	h=To:Subject:From:Date:From;
	b=ZIiWbzV9BgKQe/CLd2cSUKHI9iuJZnCvoCjqJeCUas2aex1LSfSn+amFU/kRQCLwZ
	 gwvB92W+H7oqY8ooohN8aXuBjdc8EslG4at0N/bakXBGciBPIFX5QdUDZ/U9Z8hMp5
	 MmHJEIA0gCE/Nn/OrlI50ka9B47ZNkv0NXppz/4Z88HwFT2SMOWX8thYplsQFUj1EM
	 dLzkd/GHW2K0sReAcnM9WET+9NpurwvGakRdRFDD/BdpxIxG2lcPgtjGaFbqYb8Teb
	 Wc63AFPIEx2Ik0pieC0ZIEf4Bb018G5AQnOv5wOjlC4HvEk83xFcHQ63IngyrXcmDm
	 a87g5R5RHotVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCCFC98332
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043543369.26708.10387146642214160246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ce03c639595200a4724d1f0217c8a6c5d05f8b20af4d44445d6f44dd072c3e
Date: Sat, 26 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790435433
