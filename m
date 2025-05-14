Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FE217C98
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747186794; cv=none; b=reDy5Z2o4/jZ0FMtW5JpNf7642v+tZYd20IQPw4/YmoflQGu47MHB1zyB9j7awH10FFVfmU9iy7fm061oaN/vXvp4wvpO7mmJsXYwUmY2cKIDvPik9pQ/22Yw3UgtgCfGiyF3sqwuGe+f3NaoFgaD+dkPPicxeb2KwHePdolEhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747186794; c=relaxed/simple;
	bh=/w9kR+IMbXoO2rsMzi6EhczkfXiBFoHwSAinAppaozY=;
	h=To:Subject:From:Message-Id:Date; b=cs9EmGtijm4gAYch8ZoC2Bq1UfLWnIFBgcQTUz09h1UJ14AtMbJQPgecuOvY+o8Tg/S1Uww7yltzIz71Fb1PHkVhfV/75aWgNLlNQAuCAOloHU9Dk0S4NlQjdqyFK4/oo0aHgsnWJDWLLGgyTPsTF2G/JRYYLw53bmUa9o0WfLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sdsh5p5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sdsh5p5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72DEC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747186793;
	bh=/w9kR+IMbXoO2rsMzi6EhczkfXiBFoHwSAinAppaozY=;
	h=To:Subject:From:Date:From;
	b=Sdsh5p5SaqiabPSI34JbF1qo/ifBvH6TV+0hHdd8ToXCcinLTd70DN1NsutRwPx/6
	 77ohxM61uniNiqKs+qXQf2t0BOmTujGQNnZGsnLfS8R9sgsvkRj5OEY8SEmEdLI1Ew
	 LWEAvLrPXR8/7xO34cdkOK8rMWVms2/nbHiuLsX1LIZjJkQgQJ/QiuZb+VLv0CYiNs
	 rDnBPWldyirQt3x+mQy61qEkfc3oqFnnaM/0ZziAsT5zpWPZPVUY/kEi75FEo/T6lS
	 J/pK2TKvSwD8E9GrZW5iYm5hhlWDbIC3LEGf08yb1Q7U7OAIHhDN+haT6QZUkaHwa8
	 zniDJHlLlLT3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9460FC3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718679357.18973.12718584208366214352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7702d48b662f96498f6a38f8996421b084264f7df1ce91e88ef664ddbe2a2624
Date: Wed, 14 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747186793
