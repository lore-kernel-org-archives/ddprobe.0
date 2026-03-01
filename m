Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF4A2737E3
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772337294; cv=none; b=VI2ZgX+knJ0AckO1yG/VkyJIrxi5+Pm/btF+lysiAr3Fe+fjODIx3BMGRCqwylal30g1C1HfTK9VXoNmFlyS+RPcqji2uNctkc7Es7h5189/1cBv2gyZ4s0cUIiZTZmu1nBOv5s14/zAS5K+eZbUA2eGppLE4ATyuTF/oqno/P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772337294; c=relaxed/simple;
	bh=qSkhs4Y6PTcwG5qpk1it8DFG4zCPHcdiHeLxBBvaGo4=;
	h=To:Subject:From:Message-Id:Date; b=KYUv6qlhuqEGsU5zKzQ/aghrNDgsvhHFOjGdjpefz8umxnk3/ZQGQC25KuxOu+q/05wm8NOTjli3cS92KvJzCWvH8t+4n+tVYMKMljWiYBZeF7KFyx7cP1j6rWCJhHtD4gdV8E0Q/AtWgUK2l2aJJaP4JVXkyKAK1v41j6XVfk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mdjz9Sdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mdjz9Sdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B063BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772337293;
	bh=qSkhs4Y6PTcwG5qpk1it8DFG4zCPHcdiHeLxBBvaGo4=;
	h=To:Subject:From:Date:From;
	b=Mdjz9Sdb+IF6gluOEHMgyFwgpwSWDonomOG8oQLlQjGRUcQAv7Se5XflvQ3BqIjnd
	 P+O2xaBh2EnVmrqZNp52GseV0tyw7MURHHhP79+XAW4jztbh0kTWj+34EmatemxssR
	 hptgY++HL7HsLlKSKSnSkPXf1PyjoB6J7YsMlMiMHNcMzbIHbtnNwgpOIh2ijXg1BI
	 XtyXh2W9iXlXUL5roGidETAOOG2kADMqqxT0MkMcS+iaugKY9k9pz0bVqrgWneBoP3
	 HXQiyO6/5zqr4y3OFrOyIoDVB8h2YOblQI0Xongutp9T2GEhQSZHHqJNCdXmt6zhgm
	 vPc3lf1Z4mp1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BFAFD0053
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233729360.6848.4451430258445443961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971449aa3aeb83a575c8d48630d9194d42d1bf224da707394573850bdea651a1
Date: Sun, 01 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772337293
