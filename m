Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DDF3232
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 04:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737865554; cv=none; b=KalXrlqFMpRg7SlmbQb2z2vyvdruYa4Z/sTExOYvt7vbuiWIhOK8UiXMVPvGuPtzKb/Sf87QxrCmmGy9dQTyVmU6fRfhMjQ5+j/ytLTB1r1l9DtQdO821Qv+yrt7v8DZR0DKW9YNGn5A2wS1A1kt5d0ZosihET9vKiPXQBOrBNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737865554; c=relaxed/simple;
	bh=lhU+0j18+lvULXbU05QY1JgnbX1C2qvz/hp8mVCs6cg=;
	h=To:Subject:From:Message-Id:Date; b=KhYCrcJ83ebBFSCNiP4BgLM5ll2hjQUisZiEH1y+xPMmcXlojzfYbdTpO2mb+ukf/1Bhhzhy/5X5bTA9HyGxHNcT4O3X0Zdvt3EpiLXxZMp2inE75B8sFQqY82Lq8vpyT9uASif+W7HLbxpA0mEciWvaZiBbx1vSkkAZ9ENtx3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lN42Jc/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lN42Jc/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA9EC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737865553;
	bh=lhU+0j18+lvULXbU05QY1JgnbX1C2qvz/hp8mVCs6cg=;
	h=To:Subject:From:Date:From;
	b=lN42Jc/FELGvEkT9lWPZi5nyq5iThl+q4sO9pNobiT+i9AWOJEgC/I8GL/v18ce+n
	 ciH4cVa0vFh0WeJwC9ZYhdUUdAh2n/018sPCExq2AifbRzfCtq0N4KBJZLk9ifEvP+
	 ZxLpvuWoYemS1WmVrH/wX1d0nfBJhktITIGNh9mDbwuX2/uBq5jfHBoI2oEmqesb+w
	 V/3Dkfg6iMDRDqK/43tzmcowvmOH2+zBSf14+9ErR08U8f3RnVngvgzfoFmuHiGECV
	 +c3K1kiKgltTsNL04zq6yiKI1NKaVERAsmxGiGNCi60NHaVbN90q/mhX+ylL9cXkk6
	 WEsm0h3FLfmKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AAFC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173786555370.17629.7593658594671924780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1955e6f50fd8c4c7339656bde0bfd2063d7be3d8f2ecf974b04038b787dfea
Date: Sun, 26 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737865553
