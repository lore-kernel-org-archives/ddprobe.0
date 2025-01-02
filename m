Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2ED199237
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735814154; cv=none; b=VdMmVqw5A5IdWq2wJUiQC+gRYKWe0I7MYKUzkzLbGbT6q/xf/f6hSFeN6bkkNbstC0UTrro1Ufi9vxaEi+y1siGDGjDXntpDQm7BwNjSf/I9YK6O/3K/VZD2ym1Id8n2wMUAM4E55EYo7m1FN0+JT9AAkEkNIKvnfDGvi2H7eJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735814154; c=relaxed/simple;
	bh=hoJS4PqfbhvGQR5zMIS0CjuoPPIyBObxrNUPnvFftMI=;
	h=To:Subject:From:Message-Id:Date; b=N1kayZLDfgTlZ5+uD19TO/2YxkKhpq8oLoW7QdWDB1zOLSy9epFpaTN226vtwgPdF57EcCzM/G3nWUgW/VUQvCmLxpnfCaaRboblGQxupMjx8CMHEWcLkDmhcQ7Or6Xu9GSBfa8R7Z9CoLbN+4/3pWnRb+nA9QtAElweCzCDTe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VS7uiJlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VS7uiJlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BF6C4CED6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735814153;
	bh=hoJS4PqfbhvGQR5zMIS0CjuoPPIyBObxrNUPnvFftMI=;
	h=To:Subject:From:Date:From;
	b=VS7uiJlzfmkLzz7mLj3WMox7yIjzb13fEgmhrvNAKsYEu+xyLjS8pg/SCNPlCt+OE
	 mvb0FEKD+xDVFdY+IABsVLS5XOyz53S+sOP9NiAbZPjvqAnZ48KkyXbb3BJ9wtaKaE
	 1XnlKl56bCLAc9w1vBpRUI5AgIDEERKdPixh0RFDbsPqelhMqyuZidHRTuY/Gxu3HT
	 EBhu7hECPkkD1yoT+ldg/4Xkk7hTrlOAD7LP2WbVFOC9pbtXLTL76ZzJ9Fc7c6xYbu
	 P01yB7HwgUVtTNDC1jf5tczmlwGQDzCkS0O3Y31DDFhzOGUqthkOFc135MeFwWAVM1
	 NhxEPhbgbz8OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C98E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581415360.8587.4715714950939992696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbc3e1d276a7d9c2746657f03062bd50719f6f1d195aadb8b4467fa04ff45a9
Date: Thu, 02 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735814153
