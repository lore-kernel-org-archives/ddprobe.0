Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FE12F745B
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756978794; cv=none; b=PMNfBR+11euL5mpaLbSEHozcA9it43qD5S9NVtG/4mUchLEIRDdNvBklUtXCbLi/C3/QPNah12wkjbYcdN+ait5oTvLhYhwjMhC4sexj0bNDEVaReqmvYixOO0OGusluRTWt68/ZKd/vaMuO0dyaI6SOAbV3ZplbHqszalgnxu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756978794; c=relaxed/simple;
	bh=whc8deHQuVjVGgCFlkUN3jNfXTIYApf+6g389QLNGF4=;
	h=To:Subject:From:Message-Id:Date; b=Y4fVHjxMg9AfWroNZUXuCJU8fk8iJ5mPuAjLQ5qetIbUEoXRP0GG14Y1i8zMETuwW9bNNYORknjCx39V0eTDGWrIQtqronLNXPTtvX45uB5RdtKlmT2CsGiiiJ6vKnUbMF6iXombAe4FsS4WrE2npCZkeE0tHa8MkqlMpLthDRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBhETTDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBhETTDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13C7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756978793;
	bh=whc8deHQuVjVGgCFlkUN3jNfXTIYApf+6g389QLNGF4=;
	h=To:Subject:From:Date:From;
	b=iBhETTDNleHKBuZ8KecXPdWO7e+7v7z2RrhfNQCXDf1VpfsDrhqxYjVsuYacTEr0v
	 391cxqP8Pue0/doKlGc3iF9NOCbTthd2Dn6XvI4g4d2NJFmZBFVSXdbM4kPdeZz6Qe
	 Va1mymBs1GRCJSSHAIEBa7VAVkhmRDX1gxjdfJjG0g+Q33/i086KkpXM1BxBgX9Kf9
	 H7fM27ISo51XefD1Rav5QOY0uGOLNr22aDaq8Al2XM740rdiS4rqhbidMDK8JmQ5Gc
	 I+ehLPKMBQmiCekPPuBXmHJdHYvG5MzQcoXzVy2wmev9XcMkg/S2hOj0Ecj2scTFIA
	 HLTKSfdyeQFAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D4CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697879358.22273.16155719643179668087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699c0f1e0d5f5b44412a8d9caa863c58d28e57f47680e2c64d36500bc83ffd79
Date: Thu, 04 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756978793
