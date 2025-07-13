Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DE3450FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752392394; cv=none; b=Hbj+iu35jD+uhG4B/Nm82IyooBvUmK5j7uO0RO+7BNCtbSK5Edxv9AQCErVhZ/f+PmBT3Kr55+WevPlnicD9OO8AhEr/pltsfwUajwLeU/UY4/na8phhzCwuBvKzOfU7H/Ylph9VRjfxFd3j9VPOCFFsAoYF6PDXMXNfdt4mfM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752392394; c=relaxed/simple;
	bh=U+k5p+2C0ElxJpkql2bWhXZfBJJyrrgpT8OB+g4Ydrw=;
	h=To:Subject:From:Message-Id:Date; b=DxPCWBgg3jONX/BJE+Nl1SiUQqo0JabYXJAsacAfq+DCkvIbNQTtuyHo66f8B2MAPYx+4ESQViAj1x6MXBzUJH3vDazoKfd8He8ldxbaqR4UpBNa8lzzOB17bH09DIs2FEQj5YmILGjRccGeJJxVK0t1nA2yF6giuvCD7CbQjU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEdllseN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEdllseN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F14C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752392393;
	bh=U+k5p+2C0ElxJpkql2bWhXZfBJJyrrgpT8OB+g4Ydrw=;
	h=To:Subject:From:Date:From;
	b=qEdllseNDsw9g62Akyu4/jGxFFJds4Ec7E+5RzfOuKBYSayFehSWK0O387jAQ72a1
	 MbExvcZYaJYgDolYFqmMx8KwiloAFyadUsS0hw4gz5A2BSen8QQkmkrsPyHgyPJEAM
	 vLbI5SS6aIaBv2aj/EiHbKfrTEGkCiGcJUPOf8+dQSI+wkkEMZpUFqr7TwLF4q/69l
	 J5bqx/+h/B3uU6BFsyHwpmq1yKH0AmcPAAewfF/aXfEGTwUSe2BYQqkIZilrxZL4Dz
	 Wjh0vtg/AM5/OBWrtgv4iX7cFf+256gT9x033wxw30iS5W11+qQ8yuXitEU3DvvSxX
	 GeGVEKvckwkLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBCC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239239357.27167.13971129541321474020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b1e85f14b766906cffc8cb6f87348d5449a66bc7a36556e54f8fcf99488ba3
Date: Sun, 13 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752392393
