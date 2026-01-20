Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C213191A0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768923234; cv=none; b=EjV7H8dSOY+MsDDfYa79ochk0jHu8YTSr5t/SttYVxqeSRMleEfS+kIH9rY90agGSI7aDEktl7aZOOAbJ2xbiMingH3oXF4p+SronOpBuFJU2NQ5UFEy55LHQVlZhSfpMDFdBXE2G1VDjKhUvuwpX62x6cXtdOqF9z3qnz5fXsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768923234; c=relaxed/simple;
	bh=j19bp1d/+dOsJTqgA1wB1KYFwv7q4W2F2icYtMnsIdU=;
	h=To:Subject:From:Message-Id:Date; b=JRziBl2zNUat5D4Gf6HzUtdfCOSDHXaljflLJQmySyQeR05LdFQ8sFWb1sYc+mlamztB2bmns4uGhVa+G22jpXDri3fmGXAegexpiZSAPWew9iUoVVu4ApdMOqqiv12DJ0V11NxM8KBU70lbzOClN/HNXR0zmSCKjkzf1+C5H38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0JkoKba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0JkoKba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A5AC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768923233;
	bh=j19bp1d/+dOsJTqgA1wB1KYFwv7q4W2F2icYtMnsIdU=;
	h=To:Subject:From:Date:From;
	b=h0JkoKbafTuVeg5JnMawY31zIz5/VlXaw5JMng6o10dkAKNZmeYxFqkwBg6Meklbp
	 rEynTFTclgN3ybMA5lsPImvUr998psxzI0un1FK6610t3xRZQPyhxmRtPzPLBGBtEX
	 PW92oRBUtPZxnmhD3YRLZzpG3m4ujCzQBb5J7VNVl0tkblHIeNZWObcx0TMRGLgv36
	 ByDxZZwb+i68N4HvoNAAQc2kEh8vuwH1mk0IX1VRAu6jooB1T0U1G8dmWbKt1LCXFm
	 MlOLxu0yGtzPHJ5rf3rZUehNiYT6dj1kZSjr0bvNIu/6y4P6cWUD/WMqJwBorMcJBQ
	 dvSOWXzkXqNbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9561CD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892323360.11760.9902588516852885660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4fad3e2430ec7e39cc2816221f0eedbffb58f2a4ca23a45ea2eb324cc42fbe
Date: Tue, 20 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768923233
