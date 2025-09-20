Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213A1C133
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758338994; cv=none; b=d8ShEwWCsL5SLUwJlVLx9L5WwFqTRhPDVM+sfnJCJ/WxgmQHethO2aNH1Wc6wDWXhUZrFfEiq7MWx30peok+7lHN4fvSy1UlHc22FlN3OPx0PMvXcJuEKawyivUfY0RldjSg5/ZNxBbHF4wKH+1PWV7s9cYC3i65KWGcEa+rC3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758338994; c=relaxed/simple;
	bh=WaqcEMGsL+wa/9okE7uiiGlYi3Z8xa0idXmlAXFyIeI=;
	h=To:Subject:From:Message-Id:Date; b=plgrnlgO4RU6jkzBScSFdMcxLQiA5OxVF3fbIB7lSN0HUizMLTS7HPvp1vnsV85D3W/T81y0lxkD8Ij4Jng5pZ3M1/EeU+F6Z6LXY029VjtKgXG8yKdHjkORdXdfFfG7/ma0+7ZIkj8i/IDWsTm9KddH4apeAP5epKSZy3vI+yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJcBLXFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJcBLXFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB531C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758338993;
	bh=WaqcEMGsL+wa/9okE7uiiGlYi3Z8xa0idXmlAXFyIeI=;
	h=To:Subject:From:Date:From;
	b=UJcBLXFTa0zSDrd1wGZt7j1lcvaoRR1YPpK8/g5OUdONeOFSQOURsT/YyEZFJsJ9u
	 gGtn1mcOCX3aU4Gk799d2/K4eD2s9SlpK9c51Awv3KgNm9bmAzapTjEpBiJK6xIdoF
	 Id/Da5ej0PF6KOUR6QFNf6HaAbAnW4DgfojdwwssT+usG+AHWIHOfOphzURTG+UVUd
	 VElprMIPTTTkfMM2IhHeNPj3iO3n26oIzfBjHdrWTsvZNJxL6C0jxVgtDK3yO+iDEE
	 rpW/gJ8V74X30xyPHVD2vHIbIMWea3gRuyQ1gqOwGfPi4uek3COzSTbLtvDT4fx4Rm
	 5bEBE4D7oJbaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9671ACAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833899359.8490.1921175295741591828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9224df53fb0cbbcb69e68e91d1006abb7f7ab7b9f01eae4494a7a2a42a32c09d
Date: Sat, 20 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758338993
