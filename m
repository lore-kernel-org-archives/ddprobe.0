Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7BE12BEBB
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726305354; cv=none; b=qonE8il4L7p1OPg4VixAeXXotUb7EgqxBM8I21ExHW78O5yXBNUBBX7NAP+joe+YpJAOVXldUDtd7YrQthpFwPbJWb1G0Av22DDnio2jCQYmJDzqPpKfLagdrg5cexHJbBzMABkvoFVv4SnVvcYPggtOWUmKIbq4N0WWZUgaViU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726305354; c=relaxed/simple;
	bh=RUJRL0+vIEjcj5s1TKFvdG41sxSXgr8lqw7xQhzzCz4=;
	h=To:Subject:From:Message-Id:Date; b=qWoJ6ZivIMPsX5BAc3xJf4bNXRrgifLOdkEKLvAbr0+28cbtyvEtFM2UNdDYBKgKQCydAiTSZuuAOuJ1Q7UCtJ22f7Ttgzc3OW1WzZA9sAM2fjLPhJWxouqQVBAMvF5lIKSPGarPrMrOIDaZyUv4XlvnSkD5CaxYFbzs8FpJBgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMAjOIM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMAjOIM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7E2C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726305353;
	bh=RUJRL0+vIEjcj5s1TKFvdG41sxSXgr8lqw7xQhzzCz4=;
	h=To:Subject:From:Date:From;
	b=JMAjOIM6XQ7LTaILUXM5zv6g0NiC8eBmbgakVkB0QrqG/MITMd6sWd2nc5zqOR0K/
	 LE1mR/9/W7DTkyjm6Q8K0P3YYjsAn1aQIPggpmXrxo96w8o2cNtb4y4M6jKaqvQRDj
	 2HLa7fSEPv+UlHYV9Jo+3ZnVd4ci5mMvoTwJAPC9MdAhLYbaUHVCfvKcEOlCD+TMhO
	 jDIlcwFc4JJ1CQMSoYxEIYmohQ32G11d86HcHhY44rxPQmfptpEbMGFfbpxLbhnJLM
	 ztZd+eYGZpdhf52D+2EkFDVTUjGTRmIfFjrdqBgmtnznIHkCnTLB7QLodV7SRG1CP5
	 CDzJPqXCAUJfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977FCC02186
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172630535360.23852.8061557272509937968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9156ed19d03ba7c4a58ec019ce9c0da155002fa1413efd07792c132a8174a2e5
Date: Sat, 14 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726305353
