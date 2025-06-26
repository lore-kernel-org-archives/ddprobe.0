Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208842E718D
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750952394; cv=none; b=BSyYvW58cZXkPKqHIEtNBnewv89uBrFyPNWTpyKqZN2P20pmx2M7RvMAxXdWvNzUwUircZcu3RaqHJ0o+Ijo2FIsEi9wHn+oC0HBBysvbjUr0oJMEAVvehetmvnWM9m3Nv/sGmVk8F6rHA7fbIietWZ2d+JX0eZSma3+068jHAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750952394; c=relaxed/simple;
	bh=rmy3Z6at1Hw4psJEv8stgI3pJWWG2q2EaF3Eszw4Jzo=;
	h=To:Subject:From:Message-Id:Date; b=SxnKssX0Ho70qp2XbWNT89q2cTKlpI+9nGJSRa+WYWWc3CaYpA5Q8SNxidvoHzwFDpmk9q0XgIbSSgWmv4aZ4qzdhrivuhbZp3Dmpqtx/qQ8f5qczWCNjszf197M3vaAK9/EPYuwQmYBFiarsI5MRtJgDU3xKXgXn0IJZua9UVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXV81ya7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXV81ya7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4549C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750952393;
	bh=rmy3Z6at1Hw4psJEv8stgI3pJWWG2q2EaF3Eszw4Jzo=;
	h=To:Subject:From:Date:From;
	b=LXV81ya7c3CDrU/UNSVNekx3unZDovUJACOl9oPIvm2sWn2hpA3PvR3o+/ckeCEnA
	 WpTbtHQw5ssSI09xLUdgqMt9zPXdZUB/FixFCpKu8P7WzNmEtPdLX7unJFw+WnR+Xc
	 3XQE4DY/fIvNMdVebr+3FIWiOBwQD70NiBDtaGD8GcO9k0J44Vo5Ih1zb3JZfpWPxv
	 QnA6IHpwoAdwHo/JFUTJhaRYiXyxiSahMU57UZxGlg3ZG1atrTFmw1kLUXUZ8DWmqf
	 RDf87AFZNqlvV3UeTue++yv4lG23ifGmq4gmI+JPA1FY6XRV+x8Ig5ArOxKPq1qm4W
	 2kchzYKJ6SWHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D36C7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095239358.29137.1381138203091605221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb905e8dbb40eabb3d9ebcd12a3fa3b45da54c094577323ee4d62bcb8070d17f
Date: Thu, 26 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750952393
