Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CE621A452
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750284594; cv=none; b=YOjNqSk7pVzBpqW7FPdcUdG6BISVsT/Vfm47gDCgDNNZRQdJz93d89Xh2iJnYm0P2lhBnyWAnjvE6gMNsWwxj1TMwUWvenXVQmiObYdmIxdSlNrKXmtRGs/JG/UxbP18lDGTtoTMsVBo93v1RmEAbDov3h09UDnXHYO9d7+xUC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750284594; c=relaxed/simple;
	bh=QN9LOTHcqwq79v4hgaWn22WUL4w+CdqNp84k8H6f6Vo=;
	h=To:Subject:From:Message-Id:Date; b=sL+iUZGM1pL6oWZpjXpPyXnfkRwGFZd9bby5/YcNUJX33vDFuJAh6pKqWJ7a/BVhSdNXklIaXnqVvHemXA34u6ApFRw8lTAj7Os8HQ7iPhyZewVw+bRNCyhj+dQknjWp/Nop4QfWRsrQAlekTfyWr4bM9gOhq7DKOE5VZv4xxH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9Gd1qnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9Gd1qnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7905C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750284593;
	bh=QN9LOTHcqwq79v4hgaWn22WUL4w+CdqNp84k8H6f6Vo=;
	h=To:Subject:From:Date:From;
	b=c9Gd1qnhv1db98pfTV+yewywyyfUMLN/y/Z1hT9GESD1Hnr4qFxYgIvt/yfFcnDlL
	 PR3Nd9zcsH1x2C+AkjgltBtccOh1J3cFyKMQTDxzlN2Oh5bp3W0ZKUU4nJ0w+jKx8/
	 BHaQkpwX1EzE1StN53XMCg15ypZqrc44+EKg+NXNj+goX7kYMaX2vmJcluEppTYDfM
	 KuLxi0T92BBQts2VEJiQKtSUe9HzqHUjrXBjkOKZCk9kUU6QZr6csXJhDacesqMGEo
	 AvFRKQInNZcKFCgESXu30wm172COibjUP5aPEb7aeeUEYPhhbN9kFPTkAtOg429QLa
	 n7x2Cs0q8hMuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9614CC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028459358.32082.9604646662523823048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cdbf813165ea7eac9ca41cf1e15b86ac6ab898e1089598ecbec70f5b7fd7c4f
Date: Wed, 18 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750284593
