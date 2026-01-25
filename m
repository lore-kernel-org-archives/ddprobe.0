Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC4E23D2A1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769366634; cv=none; b=H89JUQy/WEMyFhXifoONgg43j2mK6CcgFKsX4Q8kPfWgd8YXFDf+vlgUIhf+a9UEXfZAO8ao/b6EMNIfmBhzaQrWqYVRggIr15/tAQaGZxcbXgyJQOLj83VXKZr8CztVWry3V0jUcak+Dvx3jf5Nwe/qCUsgF9mPSYXFdivi15Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769366634; c=relaxed/simple;
	bh=pA377z8rVvMic3ILaJz8AgHGmlkCYTcpbk5bW9tOq58=;
	h=To:Subject:From:Message-Id:Date; b=iT+S8x3oAvaNP/DLhdYxpn8dInCWJZfCN9UgS3RfnYJ2hXzBXpgMcfEuGEH3WPbjI9mAMeuSWFI5DhWhX5bmQ5f/QxIsDiWxKdAmonMmbTJyQvEyRb10ijNSVAaDdZDwj3yPpPwp74YTSM0LFbllcnD7vIEGJVzCdPKOOQO/dJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbQHDof3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbQHDof3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AC7C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769366633;
	bh=pA377z8rVvMic3ILaJz8AgHGmlkCYTcpbk5bW9tOq58=;
	h=To:Subject:From:Date:From;
	b=JbQHDof353GcGi5jLLGEynuQYqdYZEzfg51ytevoVk5ULhIOKSCe1Jjs2OX+pBMAT
	 KW8nnD35JhjGvQ225fq+38XiuQzAgg3aJ5nsVSNv9gO0NA2pmeg/wG3Ot3WkWbpbnY
	 VNLRnhA6vYI1xrbyjGfQFT2WJDSh3BNsV7gkwT5x2ZiCtTyuDt0j0zONiN9c3q+iPm
	 om5FESE2ix3Z35yCgD7PJr7wt5h7Ango/td9XB61YeBV50yAVSPEvrSU++r42MZKO4
	 lavcS5DoEwS8l5qjUtStvSN6juYE23WgpAqjfBnIqUJ8owdBKlcMOykd6fpK97hbku
	 5PC/GEw7W6TSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F8E63CBE
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936663357.11770.7141980681430139795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac30134a44614b40f078a60a7b12b37c41f5286e0dd08950fda8aa375e00c30e
Date: Sun, 25 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769366633
