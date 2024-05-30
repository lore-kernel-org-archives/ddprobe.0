Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C22915251B
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717061063; cv=none; b=WY1uxNdCn5LtQtzK6lxd1Tzi3FSmfHUDTliNz/d0OtwrzfED4sBsZiFR1umiHlYS1rSRRlBOZsRQ2rXnoPzzmRdPWWbxSnPZOq/bbVMVM8Bpmv/PGL50dMUcf4uGxffZqL7JYFm4NTptDfO335rsYXnYfQJXub6F1yqq1VpmD4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717061063; c=relaxed/simple;
	bh=0NKR0JWaUIWHWji/s8JoQnV2SOwcnMK0PafIj62DehA=;
	h=To:Subject:From:Message-Id:Date; b=RYlKSetmW+cmCauHw3HrLmTO2yiWsdDxSYt4hR8ZpMBd5WVU077ZKD30THidhvnzsPej9bkTgR+shb3GnwHu0agnpgMQnpDT1GuD1dAiRHUZ5OGmeGbs7z1ApIcBIG0RYNpqtQzTAbU76/F8qE25XzNjUR6Nuq1EsyfodaOivyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DY+1mszH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DY+1mszH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E57B7C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717061062;
	bh=0NKR0JWaUIWHWji/s8JoQnV2SOwcnMK0PafIj62DehA=;
	h=To:Subject:From:Date:From;
	b=DY+1mszH7jaldJJmEC+z8DJsVsv1e951fgvs2tFAPpuG3hbH+HBp29G8OkEK2oqEW
	 jlzsgRMDwMGOr/LzKIpHJAGOydMIG1KkfYF82e7RtEl4ynmiO+U2vMevAdhWhOgrNg
	 p8/Z07SXU5UjIzcHVoeD/TwJj0mMYHSFYoMpYypaR79ryIu1tMlYahcDtO/Gid8Fdd
	 Dk21Uk4cGPbtIrEYZ+d6buGZvukEAM+Rb0oJUArU+VTllFYfH0P8kpxakK+PcwZIv/
	 tcyE5ZhMOVnkh1v2umJGoTdlTfklEMJeO15DumPzSQWwZWuaGguhki4bq8J0K4K3Qb
	 7BUWlE9697BQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2F1DC27C43
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171706106284.18692.1939640996827917004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43863d850c1c1ae31e33aaa16ebc522c1d76ba04a212ab1df7f984b7843319f5
Date: Thu, 30 May 2024 09:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717061062
