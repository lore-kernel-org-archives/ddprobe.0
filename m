Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5454D1E4BF
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716828863; cv=none; b=m1pS9O/pTiiN2bKnEnpDNIM4BUTNim65rMnf69089jyWBpItHyYw6AKdOnUE+WhxOsCT5J47lb/O1lBPnQwUxz8n9mgfqY9cQ6zZJFgG8eXqXQblNbv5FtmLNU4ZlDmHB87DwUE53cJ+b5kgMqWBLJpTtFE98oCqS4pnkOTBuI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716828863; c=relaxed/simple;
	bh=HFo1ciu3cZWLA6AG/+Th6AQNO0T2q2riS0DL71LwWsc=;
	h=To:Subject:From:Message-Id:Date; b=Ap3TE/lyzaYfsG6iUZbwJKu9MIqgZh4tT8JtXdi2Xa9eocDAHw0OxkqVZCBhvzALe7ZpwVRiYrvJOwVfj2OmWnQClRWnh+63T/e55sQ7DrPjTsctsooA52fJgPjvYU/lhu/prD+5tZdN2qMO8YkaZmhPmqO+wPajx0+HJrFzJKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQWlFNW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQWlFNW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D05C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716828862;
	bh=HFo1ciu3cZWLA6AG/+Th6AQNO0T2q2riS0DL71LwWsc=;
	h=To:Subject:From:Date:From;
	b=oQWlFNW2XdAsbKRA/GhtahDops/Y0TrCUx5yCX0kmg51MsqEo19WVSocEaOGWR38A
	 tbtX+pxREve3lJyIIqsSTW7LGJnfoG6VKfWhqfvpXUui/cZB9pKaJU9Bqht1AtWgqz
	 jID9UHDoyt/dsgUYSpR5RPshc5czD9IDT4BYAC2vyy2TjaLAQXAX9fMm0zEGCRslsq
	 8G5Xh+gVt3CP/KyLqzmjMv1ghr4M+OuGGjJZcsQPLbfk9RaGRRmP3AufFkSCvhRn0y
	 BuisBigGG9igqUWSnhHkivpKWVKRSc+/wMQE6K44Tb+UhOq0x9w0/yGqTl8pbcUSnd
	 i1QHkBx+zz1mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3DF7C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682886277.30121.11440437212913575317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33c530aeabc6a64c5ef5e99f3f3ca094915c43f8561201e51554a6fd0569e0f
Date: Mon, 27 May 2024 16:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716828862
