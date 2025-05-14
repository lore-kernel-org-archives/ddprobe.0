Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CD2165EFC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747198194; cv=none; b=eDV1rQHent0p3CSkYCRekJ2Fr8xyNQtwQsiRQWk9wMzdx3PwL7gMi0VyN5oCdB5ODud81G8d8LnfeiYUpgY/Y2Sqx9292rtu1BYMItHkIRBWS6KUYZ7pu4dSIutEV03dkMdmUzbZ6mforo5Eb/Jp/uwK0bmaPjgjyWv8q3RaPck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747198194; c=relaxed/simple;
	bh=ythxNpnBSf0DOv8PCffHsyIgBgJeh4ijOpfWROKYTyY=;
	h=To:Subject:From:Message-Id:Date; b=rNCdYj/cjRDMtm4wVdHwyk4f/cfoR+v1NHdf9s8EQU/nN9YPg+TPx7jqZUwFSnExqaqR6TwcK7X+s7gouF3jvBAW2omg379Gp4QXoB0drZoLV3SmPQ0PR0a2UBvOvSPsmn50yaHKIYtvX1Wy5/btbztWgUNPhhRB1m7Rk3w8Y+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUBp71KP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUBp71KP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFD3C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747198193;
	bh=ythxNpnBSf0DOv8PCffHsyIgBgJeh4ijOpfWROKYTyY=;
	h=To:Subject:From:Date:From;
	b=ZUBp71KP22tr5A9OaNqapC95hb4tsX8dbKsttaUwPJJXizyQZDf9bseerjEfr8ELs
	 vaAVrJdN9pVnC5K/46rxTxxYNWVOXTaqQwjbFcNnt6Tj3IhDCBFf1w6BRKcQinsJpG
	 Ss7W5+dzKXqc6WnyCeWYxSfr7vuTlR6VxTJpnGGBZ8c03pmXvh8bf0UVlFcGPxWdCz
	 ego+11qIsx8r0dAU6lywh5aMJX2xa3CTPhX0MkGEVk7XtXUzUK1ggHaGTpL7swXqtR
	 DBb0revtF8fl88NZzo2ZzLtoQGlsyCnyfFcgtIQnm7862IDrZyxBrbTSS2b+QxUw8T
	 h3lHqYT9TD4QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA20C3ABC5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719819357.23029.8848723144551925055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa0332104085d43a441762af7336782dd5c11c3746145178b5c7ed38eda7763
Date: Wed, 14 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747198193
