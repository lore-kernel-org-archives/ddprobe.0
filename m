Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD1022087
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754710194; cv=none; b=CqXssW154IFmzEbH5s811WFrct8pPy1qkJ3q648ui8rBtB0HSYk+JV0u+z+OltmjH49n218H1JnfU2s+VZO3CzSCJie4GY9F79/oQ4MZR2Dz0eBcJm/uIe46uoAOkJewD036KsYdVPk/lOcmEo3/4vOaP+5d3Wq2ddvbFU1HwGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754710194; c=relaxed/simple;
	bh=7WfCSX4qPMDB+3OonRWwKpgB5MvvxpW6Ok1gr2tTlqM=;
	h=To:Subject:From:Message-Id:Date; b=EdT7TZLETiNJSpBLa5dsaZZzYVnGXHDw+brCguXeYf7sg+aGrTVSl3B7V/l5/2kF158Judt6VOXH51hnpwmxrxF5tUNXE9cRJg1VcIDEquD6RlICTHwnqeKwducS3NEb96Fcj3g4DJAAPpRE5o/zOEmJt0N6Zyxi67Xnq6qbtTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gn7w5Ehy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gn7w5Ehy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61DDC4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754710193;
	bh=7WfCSX4qPMDB+3OonRWwKpgB5MvvxpW6Ok1gr2tTlqM=;
	h=To:Subject:From:Date:From;
	b=Gn7w5EhyVi5RkPg6ZhnTvz041el5tmz5AyG5iBX0kOtuTESm9kX0SJeymI4L+2R1y
	 DtvnFsSmKGoqPHMH7s3i7gnSgF18IiYyskWeMomMCaiegLU6/uQKP2E/D0EWOSGhXv
	 t1tYjA5fwSdLlz2xHhVcvMp8xafvE2jAv7nabbw7ZQVsBZD7xjP2CeFDep/KhB4hrD
	 e0cMSxJUO7bnjv5hg6COxcCxmqRRT+tB7F/RcETLtESFAXCdKMDgIAP2RfbwNiwu9u
	 hIoS3Nhi81xQS5VG1z5o13ZI4oN218lRSdjm6/0pax0rnV818PVn4kymR7drXtemWm
	 KzycL2n0frHkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF7C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471019357.20224.10188185256853225913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea931b39a7ab2a71d0fea2a9e7e7be4252dd80a85d0cd5537558597b8c2cfa7
Date: Sat, 09 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754710193
