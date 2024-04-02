Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5CE17588
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712038697; cv=none; b=Xl/CLFexAa+enPr64WvIjSatfWqSIlyA/xLjtEKy/M8V4NcXLPp8EguUBcOBmNSrshy1Y77f2U1NC8gn0bBBwiIbokuGgFO2jj5EBoNmBhLEsxjONPASb8/UMnqVSV0INyPYh/pZdrEWn0Vh0fAXd21XnmoCJIt6Tk1e658NTs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712038697; c=relaxed/simple;
	bh=k43Wa4PpH7Mst+GkQ0HG59C73P3Imh0aLv5hfZOz20I=;
	h=To:Subject:From:Message-Id:Date; b=D56vAu+4uH8IXSrKoA03ty5JxMVAu9rbXYjBkOE6DeDUHscBret19eqT7XTQzyskyDDC54eWghMF90LrooYsoGuo/0M05ZQyi7TOsj462bt8b6zUltWhHNbfssZ1BdNhZHgieIMUm4tj69v5nkl81gGiFMSHbWTh8gjMbsqdG/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flAZNIUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flAZNIUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C21EC433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712038696;
	bh=k43Wa4PpH7Mst+GkQ0HG59C73P3Imh0aLv5hfZOz20I=;
	h=To:Subject:From:Date:From;
	b=flAZNIUv/ltn8MOQBSmY7zKoVuiyTFeEDgpuHoeyqUvNnl2WcmS6XVmt8JJssqG14
	 g+QsSt0CBvGPgnxBFfsoOT6wUOA9xMI3rkA5xGTBBVelXgPisYSzvoIFnsUvL250fr
	 KVoDTUDrsx4YMk3Lcq1Vn9BSpWTfFq5g6J4dcpSSx4Z7XbM+sY3HqAuKScjcaHEHZj
	 W1H7txDJXXajBtS9yLtlRiwHNPS7DO5u5JXgpclPf8nT2YuqVvl1WhZiOIboRHHqNZ
	 9rANDldSmCFW9Jd8KVoTkZGgjCqTgKAfRuPvzu35xQNDm+cblwb9ISUy6ewdQi+rPk
	 2+EHDGYNwV9EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 680D3C6FD1F
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171203869641.8258.5782142084537868090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57d63fcaf368bebe193040a9a79ce17826264f531f4860bc348d27501d0ba75
Date: Tue, 02 Apr 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712038696
