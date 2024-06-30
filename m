Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C41B374CC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719722663; cv=none; b=PaBb/gk/iXu/3vOtGrTGQDdy1uv07pltmpaWWtIhYNMJlE/GKRUUXpYeuS7O8VNdDax6rBOfD/RfAUjtGS6WH8EIoT2Te62tX2lYfJJBRExK+GBVM512g78iDsh+9eHZVYaT5vHoeK4ue6XMRnOBnnV8ih8SfsZI3LRdvqZ3MLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719722663; c=relaxed/simple;
	bh=aIR0Etu2Dx9y6E+d+7HzapWe5cuIlyw5WUEJoMGawPs=;
	h=To:Subject:From:Message-Id:Date; b=Py0CTrpNexDD1YmkDba6GD+9EdBjTsUR0ZhWLZ8dmEgJfvgdMVq+Gop5obgr4KXpI38eXbjRNmLFvTlJPpIzgYjwvBHPKGhPlRQ5cyhU6DKYiBBEhSfnR7BHKo8oNTlizARQh/Vpa0TwmZGTqZDPvat+mh9/NYgTun6T2k9QreQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CO3GsnjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CO3GsnjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E01C32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719722662;
	bh=aIR0Etu2Dx9y6E+d+7HzapWe5cuIlyw5WUEJoMGawPs=;
	h=To:Subject:From:Date:From;
	b=CO3GsnjYC9AnIjHvN4ZO5d6mO2qlolmpSeEYl+Hv/CvxHTefHdRznE8b6/oJNpU7Z
	 0jdHIq/uffDYcVuJg+Ym7PX4ExKRRORxNuXr+5mUayU2Ep/ukh6CW5JyzkNpvtm64N
	 L+khROqDj0uY0KxlJVjl2/+IvtuiN6UbcgMTICLgfton41Jn36eQcAJM88mgBlDsxV
	 44dCzUWvB8XgDBFCxqIs72lrPD4wleUoUcddQ2L81r4OjpfhNIJP/SSnB7xG4cbr8d
	 DHAcL6r7yQeP6pwCbiKyeTa8ehY7d38Qe5ZNtBHifOkQuFIHGin5vH/zMGWdfASIDN
	 ZxN82yH6r2aBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD20DC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972266280.22847.17184800098172325262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8dd63bb3f4b74fdc696d13c81b4f0ff6aca8f67fddb4804caa00aa0551d618
Date: Sun, 30 Jun 2024 04:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719722662
