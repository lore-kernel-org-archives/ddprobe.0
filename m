Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A10218AEA
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 17:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722015355; cv=none; b=Boiask9NycnoN97K7IONHAL+f7BvTRhHKS3KADRcvEGTZjkHTaEx4M8LhY2p9vWKBx2c7AjbsqPjRGmrS3kdhRveISpWMAd+aEMIjwAEw5/KuOrS1MeFz3w1hXH68eUS6dDfJr0IqfQoRN4PWdXKhStQjZK6ka3P1qHlVkYbm5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722015355; c=relaxed/simple;
	bh=wvvAfyREAvjRunRo9ec3YZoh0+c3jO/XIWNTrYqjpIE=;
	h=To:Subject:From:Message-Id:Date; b=U3pQA3OfFFF7eghvtQq4/pSUmyKccd4hqWFVkVZ09tFt6eFVe3Xk8dLbvuRkBjwUeC1OE7rIwDvWxh1bthDYTXwYBG24k8JNwQzHaUE6gtQHw+wrm9IytALCE4QqrMR5yCjV+r4Lh5JMQPevW7jAZpGUoqr6Wdab9E30qgpLR+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jY49yBlW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jY49yBlW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6B7C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722015354;
	bh=wvvAfyREAvjRunRo9ec3YZoh0+c3jO/XIWNTrYqjpIE=;
	h=To:Subject:From:Date:From;
	b=jY49yBlWoZddCFc3OBAY/yxAMh8dAzRlh278b/AI0f4X3Y1PlI/lkJ3Pppr8xY2k9
	 eOdBO0qQKerTLM7NI6nj+4b1I65uY0KuICDi7t6J+DSyTElHn1esc0oK4StWRH+zzI
	 Wras0InMSHF8Yu87Do8573/1GfWXyur8jvNtgyCwUuazFePfwemKvu/ck45r+6cINZ
	 ErBSJUxPr0wchi4hF7JZ+DNHKk3IGZTwaspe3xfHl0rKi16YmPJZvRh+o63+M/OAXn
	 pCbFJjgowK3YrJrmxhP1sII9o5MLXnxgifpI06P72CFS2oZlOVX5XLHq4KGvqAX14O
	 7bnEIHscD6E2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96013C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172201535358.3284.13253320050195627008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3d6af55472ec016297f83a5bb0bb74f72ecb8d30def02860a0f8a11fe5546e
Date: Fri, 26 Jul 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722015353
