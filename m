Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256D81799F
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728703554; cv=none; b=Ebu00dxWDu5u1fDwXw42NNNoarTzWoVcpMJAoHIkXe4NKmLwg18bjsWbYiF618UJ65ykH7rKrEBFrKYWjx4GAk1r/tIx0bcOH0RVagaTDVvnOFGKblE3txJiFRyCfYMkbefNhH8SBYSeMBPioXBKaFViEzbHf7XTNOJKFYGca0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728703554; c=relaxed/simple;
	bh=5NmRnt/mg264jqwNvKSdYdoayG5a6rKD+qlFT23ZykE=;
	h=To:Subject:From:Message-Id:Date; b=a9esV8xFxxpAYVzDoX8RG31fpD8VMzsObxybY1IbRaWKjnHVWgD/YO7HIp0YrxNfucdd+y6IAaNJqOBmGEtetN3nmWcbIrKtPW+54Kn+facPgvNeyce8RJUdiAufg8S8UrrM3Th0/rCcWkjT+kAjwjeHZ6WUbqGqVrxrGptQkpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kycLYfY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kycLYfY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A537EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728703553;
	bh=5NmRnt/mg264jqwNvKSdYdoayG5a6rKD+qlFT23ZykE=;
	h=To:Subject:From:Date:From;
	b=kycLYfY+bHcdHvjPVAKslCYx52PVaqtX3Z7TZ62kN44rd9rJYco/fMNEacQBwByy1
	 nH34RBgyEaf7HC8NyD3TzOQ/7KmrWJOp9+/0H6oeamQFm0ngjfDhnLY3OyLuTYY+ib
	 tE7393BhHf4qqG+lFk8IlaKymPbXJxXlWpIt6hC5GKeGlEBi+aleycJBO0nrxXNR+x
	 AQsEqHw7h1I79L5hXMoBfnywv3KedPz5jF6jG3g/rZSvFlyYwTpxWRtAo+4HLdgeCB
	 nKtSsdfKuivzn+kYAJLisvrWXxkl9jNGTESOglu/Uj7aVL/xS0soGdNsHwo/pvifI5
	 /fLTz9s4s4cqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94026D2446A
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172870355359.20194.12956603160206848776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e279ca8261cea94319c8cb2bec2ec651712e54abc465311104a59408a6737b8
Date: Sat, 12 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728703553
