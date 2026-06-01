Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3895232B10A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780297474; cv=none; b=WHLURwG5ZpOTvkP20icA5iBVU+d0nr59OLv+zq661XRJabX2qWFiFelJmicGGYpfl/SkzDx22UbCFksrM5icZBSGU/qN67tQp/FW3nj5RybhvT09wnh34Z+at+CWQnDt7K3H+jPZciz9F43dCyGTSwLYwVCI1Dr4Y/bvATMilK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780297474; c=relaxed/simple;
	bh=psIlzTVf0+uQyjjF+vgQF8IBd3ZKk+Dumrb/4pWBkrk=;
	h=To:Subject:From:Message-Id:Date; b=LsbSYEFmO9c97344HFqqkFo6KLorE8dTEeEVmQJO4GCDdhC056/MhDYoDBzAP+DNn4ozhuQdAmjj2MVtfqrKwZm9iRVzsxg43RCgKyG73bjjDcTi1KT1sXxCRru95Alph4N4bHdE2iRHr6rA/4QgHOy3ZLSgi5oyAv4bd743AQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TICFZlyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TICFZlyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4A9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780297473;
	bh=psIlzTVf0+uQyjjF+vgQF8IBd3ZKk+Dumrb/4pWBkrk=;
	h=To:Subject:From:Date:From;
	b=TICFZlyWiBCwg2KcRLLSG+ZXLVAq2Rr7/8ABRaBGvj2s7LKSGzZQVm3lk2cyq3B8u
	 V3oFYvOog5/M4rYFkhEdfwrnDOVePBmPjC0q43crht9b8S/DS/FpBbL0E7S6Z1U7iS
	 cs0ZpW5QnlV4w8EGXE13GkH5+wwz6f31sMhhuqKFfaoQWYsChqzABmF5lAb6XxtsFT
	 euolaDZH6dGCnL0HzMW9YqAtyctvLDq5Na5kaDVyJdPTheNYfw2LH3OzD3XFlmUuxs
	 0TdtMYGdkrhjhDmlwYmnyh8hUBh6wE+3QMZx795PEi+1HHRgYaRji5NbzRTzfTYh9a
	 sayl7Td9Twfsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDE3CD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029747369.12283.5262840091015442251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c822bc5736403316a3acb1b0e9504e1a375d319e6a38b4ea8c678f3314307a9a
Date: Mon, 01 Jun 2026 07:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780297473
