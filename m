Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AEE30C372
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775798854; cv=none; b=TRfNRbob7rTDhIj/qowSgcXxNNIOmpU5nOBT//l5xFPJmn+yrVGRRr8QBUYacSYTMwoL5qbXxHQP7ZrItpDYVHaL23xGhSx8IzkrlJcw7EHvU51wq71O1r9anGcSdNGlfCqfELY/sU1DN0xLLyz/vsfTet8BUImwKBX6WQH0oq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775798854; c=relaxed/simple;
	bh=4lyUwemQK7F7WnEdkUl+ihpCPGwDWoRW+7BG0XnT/8M=;
	h=To:Subject:From:Message-Id:Date; b=SHQVSEI6kFB0dsOyWibQbDOqPyNQ4FwGdcXWLkXcyQPJRvyzwRrDxznD3utPJ7+4V6eJUaVbcRN4itVKNGnY3jT9hsW/luk8CEVhkadZOo41+GVXFx0RTb3K4Jc3Y0Gt9Tudes44pdPNDANun+5xZKaTMM8cggEoAN9KzbFAGPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAXja+Ow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAXja+Ow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDA5C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775798853;
	bh=4lyUwemQK7F7WnEdkUl+ihpCPGwDWoRW+7BG0XnT/8M=;
	h=To:Subject:From:Date:From;
	b=YAXja+OwSGb2CoTrD3DnejRR/adfrD7wIOJ9xWWnEn0li5IkfpZ6lymbYB3SyITiX
	 VOE8zMRHnuuNkZJ1Q9OVuZbERHSa4nJfbLbFAdOdoZ0O+TD+1atF2+7mcUSoBbthPJ
	 bebLvro0G3y1j42Lrfmu1PbrhW5cWjvLCcsze0xbuJm/ewio0BygKUwsdYZp6zvKio
	 mlsvfrnXoEU90e0u1Tj8snicRWQLqb5YJO8/AEi+V7yg3lgRH/3/XEN8iovAJO6Qgi
	 Zqxq5yX70RVPJJO+psLZIPW/gr1nr/iQdAJ1Ka9fOmta/Mtwkr9nNhDC9eh7cnw+7N
	 aXaF38L0iZLDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7B1F36BAA
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579885369.5407.3639061384044045581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fe85577b5952d595a4b1a8e1d8ccc5df1fa35287483b19bd55d395de288f7b
Date: Fri, 10 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775798853
