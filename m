Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCC71482E8
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748479194; cv=none; b=RGzasYK2BBXAYp9zNk03k9RltHJz1eRgvydhbrgeJpcnwDfGwRf+7CMeMUdlRXpYzSu1gjStBDLTuaSbiZdY2YWucALVvbfeARo/d3IVnoqWzeBiGNCcQ687EZUPiWIlKxQPJPNZQqKlwEha6KYPYjbIzVnZ76W1RnkjtmqcImw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748479194; c=relaxed/simple;
	bh=sPAgH/kIZIVRurnddb9krweGKxJl+UVl5tXcCUJp34Q=;
	h=To:Subject:From:Message-Id:Date; b=kPLH2gH2ciw1KJmzFvxnnHT7l4JJ82W+xhV6cCH6gW9PrKEefxv+uEYSdHfgk4+pGLrl1uqe7s88pGxzeAzk2OPn9KMLb2vUo4gsY2762d1+JVg+7U2doqhq0Z08+y7p6cOptLsiyKATppV7vsa5BaZPh+C+tQCtJINzKFd48H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHxVsNeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHxVsNeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3EEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748479193;
	bh=sPAgH/kIZIVRurnddb9krweGKxJl+UVl5tXcCUJp34Q=;
	h=To:Subject:From:Date:From;
	b=ZHxVsNeudh/kmVnM5v4EUc1kFhhwQR+LFqTriu4AAARKJK+G2qmATr34ugFHi2NWo
	 Xuq/DNeggcWV+RE2WNUCu1z3Q6IwDt5mKZrQt0imcTlPX2foQzRd2iCiXraTIPu2P+
	 soQFyq7kYDgNBYaKsqA35BJdtHizx7wS1uLtnf5wWCkmRt7FmiPAjqLpL8qHLVAf2P
	 1eEGiq2/203jLcQgdCt20D0hMY52DqKu322oCTK8Z5k2MggS86GIMHJny1brcQFgrS
	 PBNlr51gBHKbp/Gwjr6hsouLY9QUfAAo3hO1U5wlqDevoiFGzdBwnzChLxIRLIEwBW
	 j77+orSkBuZsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E945C3ABB2
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847919357.19645.10644790818507531840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a7bff9f544d49ca4fed60e75badbbeeef1df3161aab590d994f30740a29875
Date: Thu, 29 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748479193
