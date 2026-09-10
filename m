Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6402B39446B
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789070434; cv=none; b=cNUIJFSdU784IgpIzYNJbN63ilc/6bBsGQ5fhXdvC7m9KmQ0zsZ9XQcyCZzGv3A8WMpgjjbxd/AZZEU1wv27yJnZUFJVo8SREke6K+MoiEes832MvKusu69yxS/vtPurKEqrIR6fzXLcH/RrwyWhLLT7ceXIdm6We2InxK4rl/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789070434; c=relaxed/simple;
	bh=m01Dg3On0U/hMII7hdRKlrKUYhU3uGxSdoHwRJowuBY=;
	h=To:Subject:From:Message-Id:Date; b=Qy7cRE4Ohu1dzRIuNqHgJdudpbDPIlPAPT8rvI+FjvVMzF22HIuJi9Re2ZfGqZgsYnGJal5SKU1mrW6MonPfuBP5cQunxR8W9tAwgnfpwlwFcDc9dEJG1UT5QdMyUKq1Ikmg6msfJ1oVGza7WT4LzuqxLM1PszoZUlLR3VsjhBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nr9442Cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nr9442Cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BA0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789070433;
	bh=m01Dg3On0U/hMII7hdRKlrKUYhU3uGxSdoHwRJowuBY=;
	h=To:Subject:From:Date:From;
	b=nr9442Cs0rMwfplWE4myD1evGZQkzmqAZGLZnH9VYZ9IBXEeBIrziRa9UZ1vuWYZO
	 iuJFB+O5Gpm/3WSNwJx2Ouki3XjwXYOUQMteuo6f3UPsQ3E0/qn1Angs/RyerCT2GU
	 XehOYuHNPqsZHojbGDopvCU9dm3lQiAFdrUa+FWbt/OTtV3lPpjSZMSynpG7MdqXhw
	 gd55JOWv5XrhwYt88vRNMwzgGE9aAKypOwfb74mIFwVEAON3F7VrRM6arWGnqwmFGS
	 qVmKR6cOHood1uKhGdspcn4Z7rWovLffPwk+G8i+MhTX7sjJuwK92qYOir+cghF2Ht
	 ffks1NOcpIv8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6A4C79FBB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907043369.10012.5114347130121170356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7081440989d517640e80957361da758a5ac791ce074a8a16ab322b8b2cda8af
Date: Thu, 10 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789070433
