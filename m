Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D1C38DDB
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731633954; cv=none; b=OhOAWe+gMYvmcz6kD2HqSfdbu2WzpGwXvs9v5UAkCSt3xxIOR5KalHUrsbF5iUK4a/tH67LASHc2AeuGGCuRcxJyr2dlmN2coXeLsVsuQCpFas4ijswpGj87nYGt9c+gKBUWkM+BTr8IH3MXj7MOgrR5E2sxkTmt5oxAoiaYJ2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731633954; c=relaxed/simple;
	bh=Wpyx1HEoYoyZUVaoIogPJuLTT+zTeX7O+zRtg0ROrqw=;
	h=To:Subject:From:Message-Id:Date; b=sePb0VXSUmv6AyCQ20Khb4YsYFRlf6lBrUY0D04sAr1M3FXydEyLgSK1MlKdnhkWAv8ioyOFz3J7Q+edxnGOJCQpPHGGnHynbjq+s7f9SmH2DmExu4t0hA6EKuCYlqddvALH/5ziuncjtCTcgsQ483LDzk/yQrl5dYfLesuXJWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ji0jxEl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ji0jxEl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85B1C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731633953;
	bh=Wpyx1HEoYoyZUVaoIogPJuLTT+zTeX7O+zRtg0ROrqw=;
	h=To:Subject:From:Date:From;
	b=Ji0jxEl2Lfn/kKGB/HBDdPHY3Tbbyzra5Au+9PrUee6GQsunQb6UEzbB/7rpnGXeR
	 DwelJ++af3qmXiyq71MkYEbk0vUytTQgbhRYp1a9B4Crvr/cmSMkFMqhoH3Poz5o6v
	 Jl22iNcSRwLT1pCIIq3nrtJs2/Ng4QgZqBvwfTHhoThLomNj6X1Xw7NNItgIT8ubJ8
	 KZKL8I2lHVvE/XfA5tctdyz9VLeRmBXDXdladEPCchGwHzEwb+I1z4Ar0INlFXj+Wh
	 97bNLLrRP1+eYmN6uHrKlCFXCY7RnnExHSg1Aly6ch4ZF8H3+ogiRSIjS9OA8jUa56
	 WSBLnKXk1IaSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DABD6A225
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173163395360.16687.7813825977599126706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a58e295415c52f5c016991121d6f3affc4062b34f717fbea2b2750a4ebe62e4
Date: Fri, 15 Nov 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731633953
