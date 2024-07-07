Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6656B80C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720314983; cv=none; b=lYDHoGvJzro9HdTms0jrV8+V5eOlKsJ9PafBn3sT6HGyaJbS96iuwH+pJrBP+ZBs9jVLhEkL8UXWBXGi7Z/MRXghR806uk4As74IGJmkWyGiQoQzbSwBDxCyAE7EaOz3zfbACQ6BgPwcghk69uQX3dAOcrO9cUe1IVjI/5DQ7GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720314983; c=relaxed/simple;
	bh=qvv9WE6mNxYKS3cvrlEzCEl37fGPC/Ti6d6Whs1G9Q8=;
	h=To:Subject:From:Message-Id:Date; b=bvNKts1Z6S6W9DS9lZOPGMOEiGV2GsBTRQDXl4FqgQL4/brnEjKl0T955FHGPlaAxosFG60NBfq2nmU4W6Z3+IADBgR0FUCQy5BF0ct9Czzqli607+YVZJ44qJfxIEtaQ0ertgarbPL2Vat/q1ldO90JTZgL10PAlSucR660s8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXrKdBbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXrKdBbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F76C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720314982;
	bh=qvv9WE6mNxYKS3cvrlEzCEl37fGPC/Ti6d6Whs1G9Q8=;
	h=To:Subject:From:Date:From;
	b=SXrKdBbvAcQ1oNJ1XsUBXvLPQcjEmp1YrmzxXCRuoJAxlr6z/C75GxNXY9AoEvXat
	 w/LyQyPBQxM45wPmGUR4HjwLCmT4HCvtlq9RBu/VzUh2+x4NEYB7KjdMrZLSAdqNtW
	 aoqIFFTVHyDxCZ9Bj7XHRuRIkFG1cDOwAQsw0nKKtaCKRpfsmbdTkNhhUHfwF3lrhu
	 hvtBd/iP1XxkSjbdEbAFc/XY9FFuM+X6qWCfLeTpMEg1Hg//QTSWFst0rXuSYkjEog
	 5bviu1HcRoKo96HowMN0pps2bpbuhN4lMsTfCE4fRPHwsHyGNZ2q+nSKkvXy2fC4uL
	 NG2BiyXrJvUdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B09C2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031498277.26650.1181782081664009089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25770d37404978166c95e3906065636e3533b9ddc346120375370cf86df450a
Date: Sun, 07 Jul 2024 01:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720314982
