Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B657AD23
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748914794; cv=none; b=IHO1A7FpE/87fQI1v41fLmV4Ez06ZydTrKBkLmzxwhn1sIeXScZdoH8Y448DAd9JcUFYrJKqWIFVcJvKsH3DRD9Avey6LTyd7tl5YZ17UD0EHqaNUHEfvP9RrXVMWSqqWjCMK6xK2aIeq+QvEHVNme8XWews2EtR5ROz2eTgl1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748914794; c=relaxed/simple;
	bh=JIYVP/ZvinmmX+sryvwtgr6uORWyQPUFQShNnbTtl9Y=;
	h=To:Subject:From:Message-Id:Date; b=QeoWuRD7m16paNQpamtbOcbsxG79aoKArTwS+ItxlQfByYxhjAq956K1lmfrHUo7F++2bMMlaGh55ihv4XLJOHnUm+994AK1kQiR90qAfv0J4n4aqY3NTMrlAtUQI+VfJfME8SGAn9vs4lp4nDJCQij0Yjdivrv29d494LdMPeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YghFsyxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YghFsyxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92BDC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748914793;
	bh=JIYVP/ZvinmmX+sryvwtgr6uORWyQPUFQShNnbTtl9Y=;
	h=To:Subject:From:Date:From;
	b=YghFsyxPVahAhb/msgDDTEn4/JDIDJ4vxyKB5MZr5PFA9SFHnQdMLioB0viQf2itH
	 tTIKIeRTj6MicFXeunL8v5SsivKcWo0x/Kz00B7ot2tbVxEgveOp6PYcx7b2H9z3up
	 q09FmoCpov5GuKJq5gFIYzYDsm6VnIfKSnfT9MmfeGdh1PSBMzXOOjUUKWOymRWe++
	 ZB0QcR3awi6ZLBXISKd6XYcVO5gqNyGhBfIWetMC/P/zA45Dv8xtV3neagpHFDTJzq
	 2GVbak55aq61GdTtkBLZ5qOdLx/9Nv5+SaPNrabuyqCAD/zFayRvoKheR31BdHoao7
	 /C+JiPnVPA7ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A52C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891479360.7097.7619573682760632045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e672a5000e14d56309d8efd3e30e42122e8a1d2d6f14359033fa7f9aa00f86
Date: Tue, 03 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748914793
