Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757883201
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718328503; cv=none; b=SscWg+fw8f2UVbMhiWPaZWMhXYyfgGiDzWGPDY+uxJ7UOT/YpRYqYIU33xD9JB9k6Y47mzaAqFflXsPzK0TxdvOl1ZsLk2YLHTShQ2Njact88aUHZW36SFUy17wgb8iaYL8IJqr10PMcxgbY5VhBtYuANvSHeF1QUqiGAV4pMFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718328503; c=relaxed/simple;
	bh=zGanDw//ONTzx4AK1sGC95Ck4IzWSbTDuO/0352DZZ8=;
	h=To:Subject:From:Message-Id:Date; b=PgZFd56fIABcQM6aU6OE7PhZ95kphTYeO/iwXpsIXD5Rpxx4CIVNs6C7Q1udC/KMaLKOlweTvUIEkop9toC8Umqbs/Rzc2veTp0nnGCLqzyrFrhf9zK8D41q7CZvQaqUti5f8gG+sXeZjAcXjQJrFjhOi8eeBcwHdqpcv1RVsbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgIcnm3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgIcnm3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB74C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718328502;
	bh=zGanDw//ONTzx4AK1sGC95Ck4IzWSbTDuO/0352DZZ8=;
	h=To:Subject:From:Date:From;
	b=hgIcnm3N3d2OKJBGk6rptg0pGpPZaqLP6rbtRuK6p13L9fiGP0E8BKakSfA7IeG/I
	 3qGovMviGrOO39CSCST8DnNDMN3P1VzHDeEZQ86xi6vCuYH9b4IOIl8XNZSQG67yPH
	 x0S9XpwIHeLcwAP2eO1kAogkTwgu0qB/LxE17pzj0K4hSVsW+oYML0VxJUPHKPN3Uj
	 GCdLrdrof7U9rC2b82KodBzTJopVGUczwrOdjs/I4RQedWZpfLs+vORhjd03byjnhZ
	 FdL7QA+GL7f8lGBHjJZqJPo6c6vuIpg1ueIF5Iploy1ugsd/7LiHEuh7Q1N0SIt4nA
	 aosF6/w4ndCog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C450CC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171832850277.5814.14749880916385649126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb9b7a7d9ed3ccff374f0927e847741b11bdf158bb0f692046a533be8b2ed275
Date: Fri, 14 Jun 2024 01:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718328502
