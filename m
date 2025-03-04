Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F381F940A
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 08:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741076335; cv=none; b=fLmF1n25p6uAy2shOY09HUCEgRLyRJ6wxsLWpnb975qLPSBuR8/k8x60YRbhZfufrqVXbyMl1lIkTrzN4GPHOj56qieOB0yt9FmjF7XjzuAVNR1fJCk/CPSEPdUjnm1x4/wbz95Xi8l6G1xM6hopp4yWTr3PLMzr4BduqL4L9Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741076335; c=relaxed/simple;
	bh=v2mr+VkxlabVtkXSj166eaQc7utqCOZ7/T3OoilmXrI=;
	h=To:Subject:From:Message-Id:Date; b=BFltu7cLht7DNWFIMOWYKSzPOQxRTT0I4IPyQZVOMooX4GH92pTVVt1I4zxLrIL6MgWhZ1wQ6Ld1KnLpvAQd1xcOYt1SsIuqmbsO2A2vZguMexzT2sfliMkThIffcwKnRsCjm0DGT7Mgwmm8JVEgg8Pe+4ju6wNEtX94q6G9ioI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAg/uV+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAg/uV+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C139CC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741076333;
	bh=v2mr+VkxlabVtkXSj166eaQc7utqCOZ7/T3OoilmXrI=;
	h=To:Subject:From:Date:From;
	b=YAg/uV+oNapc+S30iRfu5aBafBbH4s1wkXyGENUh5HeHq522vM4fQcldJmbxxI1nw
	 pfOLWaBuyNNLA22ATiUPNa8VXuQlryfeTUve7OKhDEXaGG9aSBG1e0KAyIY2mw5xwu
	 RA5yPn30yuJbHEaz3QifQ1MkVjMsi6q0uCCoXMIrsaZPuZJX28jHncpbxsBzF2AAdA
	 WbIjO4SlqZpCYDoioPIKM4iEZv2RtLzQZx9FobqNYWknlJbIqZkN3D2GkFtGGlE2hA
	 eTwZLohFpO6eMxdZYSAMmlvrujTtiEZBswaO18FTXECrx/1C9T4aav1HkZvWpLwhwb
	 fIfbw6ftSP+bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAE7C282D0
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 08:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174107633370.20089.1299425085675373621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353f087188ce9d41f6bed7f2a7e996fc0ce34f645d5019020efa9a66bace674a
Date: Tue, 04 Mar 2025 08:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741076333
