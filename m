Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBD31D540
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741956534; cv=none; b=dm1U53CaU2xRnRjrdLTK0AQsWfYiQ+cQRkvCL/RQ8EzeoN3ywDlZY+R3ybIHYGwenAyTCze1OLZiIYF0m5+XAqLKTJttndJFvZGluZDx9gnV21cxAxZei3xSi8MiV2JlXBo8UH2mx8E2I9Q2dYuV4DR5kzTpVXAVa222w0aVowc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741956534; c=relaxed/simple;
	bh=PQUjHQjROh3dm8YKIAESEebUKZCGPEqfOTgeaanOkts=;
	h=To:Subject:From:Message-Id:Date; b=PRKHUZqqPI/5u0pIV4KEchHHCe+JXlpV5caMAZyCe4SIrM7IfO1KEczR4CccrysCF+Sv+lEirfkICH4xy9OyxzAwd3KgAuDvOSVgqEFB0XJG50ksC4KaLfpiNKJpVjaPjoscxjqVcKU415ehwz+JJrNYeGv/9fH2oFgqIo5nVZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Za/36IHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Za/36IHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6642C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741956533;
	bh=PQUjHQjROh3dm8YKIAESEebUKZCGPEqfOTgeaanOkts=;
	h=To:Subject:From:Date:From;
	b=Za/36IHSDGTzLaStVFRI/Bw5AxFO9aE4fwh2wvElAkUKutqtPJ4ltJ1f5V+otj3QZ
	 rrqMfZlFR1HioqQFB84VGtOTkvirFT4wwMRZB7yBPJEeP+5fphmcYcJxRimcFolKYq
	 aJlWxE24LrkirGGOVqWr91Dkk1nwqDyIzKNH+Rky3XvL/q7bsNR5PSjq6T/XIZ5eKG
	 5Mkv+I/u/XwxoRUyj59I/GA0JCQF2Bso9SwE2JhoRUnSi9yjc/ixbzMjsnsjuLaOpp
	 Lvklos+0J7D6sQIH/sMp3YRc6Ct5b3ubyZ0qzgZQvQHzWEBZIBnAfaJEWULGc2HwhT
	 VWeiv+Ol2PNbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92779C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195653359.18028.14159751001214452539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f14c4296091202e1544ade8750ebde7def85dc39528bcdde49b6d32f9f4fc71
Date: Fri, 14 Mar 2025 12:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741956533
