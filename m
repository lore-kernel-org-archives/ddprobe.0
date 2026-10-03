Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B081E1024
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790995234; cv=none; b=F3fuIlR5xX7FEcuZW1gfzTdGnaLJcF3KHQqtWADxsY2/vlSJP0vmDxfDNpVWvlf6m1bawVQ3rW/Re9lZMre5UulPi3fsPYbGtQtQL0ab+4RFA7zAGGxqgeRqudvGQ1llgB8lr204ndZAJP+pwzvABZdWBtIfLRNTD+EznFDa46M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790995234; c=relaxed/simple;
	bh=IG5MBHzHp82ns5ffO2QvZuBsxqepGyNwpFL35XON5qc=;
	h=To:Subject:From:Message-Id:Date; b=kQNuBfUcIZ+p4HaSZ6G1q3Gt8z3ADoVBT5h+jMzSvUAmff/L3fF6qK7QiAzZIAs/JFNGZrHQo1PEVQ4IyjNqs8wj4P5hZSTIAjAOD4TVke+NnHiihDB61NjM/upsEoNVJFGPcy72xexq1Byz2k+szviUyi4WeqWvoML+rt6yuI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9CxqIRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9CxqIRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C86C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790995233;
	bh=IG5MBHzHp82ns5ffO2QvZuBsxqepGyNwpFL35XON5qc=;
	h=To:Subject:From:Date:From;
	b=e9CxqIRpJ9/X2DZyw0MxOgGqDKTrPji7cb/91M+tps8pFGsBCx7PNZ7GazAIpfe9r
	 t/HEX76nCj2SUypYX/jCb6sGI1vhrTEukEj6lxFNxSj0adn28B0z6qPUN79eMNla9B
	 vTa9FAZPf8a9CdHN86Y0dmYoOWu8W/vWum2V7XM80UuCWpZkegE0uhfgN3K48wZgEV
	 CqHLBxtxWgISsXB6PdsyHXzaXwO0uHjlKmsZP6Q7uQ2HCGrnShMhGmwKfPFrjjW6WJ
	 CPzk8FrL3ErYGV2zhRnX4Zcu7RjuMklvTN5e709mrEq+TUwERgl1Em9amNQa8zcBcw
	 zSFLBICBSfoxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B44CA5FE2
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099523369.11616.3064745578022922800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c001dae51fbd971b10bc2d083da00b0b1d3e879896a1bf961206148aac51e7fe
Date: Sat, 03 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790995233
