Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624068BE7
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743298194; cv=none; b=IwHUHfjmpVi3q6U1qoKGzwKrFE8Q0TCNpfqcTpsRr/kKOuVXD4eOfVzQMtPGm+8Zwop01rvlXLuNIMJn8TotagSju1kVR1RnXx+O/j2CrZmVYp1TfqM3GCmxjhDfd5osq9I8uxr/w9pe6lC2Z/guDx1ghttRLGEmZ0WskRxp8tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743298194; c=relaxed/simple;
	bh=jXAMETpbwfz3hx4FT0t8cWA7fMXN1BWvhQa+H85LBSg=;
	h=To:Subject:From:Message-Id:Date; b=F5ZJHe9QrVkIUENHr2aGvhVORERQ/l5m10VDgB6/Bz5wYJ9MlMJwziwwyT3AwPPC/CNh6A/8dDO4IN6T2cuTZntNYaTVYUm7HnbxurrWHEdr5NrJlhxFi9ZrRGEZXQ27x67v5eTXATUTBeic9XxM/QgckqA7vMFKMj0Q3M/JceY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2eXswcV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2eXswcV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC402C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743298193;
	bh=jXAMETpbwfz3hx4FT0t8cWA7fMXN1BWvhQa+H85LBSg=;
	h=To:Subject:From:Date:From;
	b=q2eXswcV8Mmn9ZsFJKY8fFhcDLGvcMiMulltPcyb6cc+62tspOvLVagP5XwNzKFIP
	 euON9/vXFcDw9VCJRc9TnplzXRMTaqmMDzBgClbpbkWKUMA4+Ciwxyi2cwkVRe8q7a
	 Y5iADW7LM/7FslV1Clh47Uwk5P4jqWkBFDBUvaiUUij6OsjUde0GdL4S0WLZVR8Dgt
	 pKLT/Aw5oL41by2JJ908IAS9xgFk1gQnm5xj9GNYTMG2UuHwAKZ53ME2cM81cxtQhg
	 0py1CcfexAVSUt77sEl62df8lS3FEXIu89FV1CAuUOa6RZIA5ni9pvf079Is9c4huD
	 whNZDNVSByPGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A22AC36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329819359.873.9760088126241482031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 184937ca69117aa0fb291ce89aa3051b91eb17cc59bc43a174b73839a07be15c
Date: Sun, 30 Mar 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743298193
