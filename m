Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3227523CB
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722668154; cv=none; b=cUn7ch7nu0YWvdDK43yi+I62tCMEmCWWeAH51VhlJdfePZtAFODExTRclJf9Ci48HOWeUqieR78W5sVccqmZsMJR/JFVfEILGa6mOJx7cgSSObAxeRGicISNCSPH8ncjccCIN6YcL7SOZMCNsr1NikOcnj02nCG1IdfqvAssLyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722668154; c=relaxed/simple;
	bh=sa49aco63prcneaNrpUz7fY8Rtdy4RY3g1BpPKe1TSs=;
	h=To:Subject:From:Message-Id:Date; b=T9StJnXZKoTO0UKSdVzON30Ou9pwiUgEJuSdzqtNMQYOCj2kFOgrEJcWXV9ouXI9snW2UdFTvP9c0cRPsEgTsGP6zfeOFks8dFzRg5/P9fbflF9IAnvV0m1DUIP++JfVnFaX0QtbOAH/L8B8GG6T4NMamds9IQm17KpSy+QlvNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXBdYAo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXBdYAo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3CCC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722668153;
	bh=sa49aco63prcneaNrpUz7fY8Rtdy4RY3g1BpPKe1TSs=;
	h=To:Subject:From:Date:From;
	b=dXBdYAo0qsAhqAPchkjkyLkcSX4IpRtKUO1Fx9fbLmkTJCgUK5T9AiEMnJVkPdPRT
	 +vCRD96yAI41cGQQzVqvzriBuhJjaUbsS2Ee3ZDHxveSGBJkerWsEis9Cj23w6QsTR
	 4WA4409ckeebgG1idZ2P9fYiKw/Y8A2HcV+QKmZeL9mNIs/DdfxIjtZ4y1qHhH1ZzY
	 HzuAoNxPUZfUBKKnShUBDnHouqHmD9LEjqLAl95+7T0HkAXWzbTCSQjsMEarVl39jM
	 mL2OzMqF+xJHzO3i/RT7UohSc64cW6fWiwtV6qTZGqlGJsVXzDUITY317IXTcSY5fU
	 n2sngRZ8PsDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F1DC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172266815363.23190.2236172040670716985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737b7fce826c4e48cfc16bb6a57db5bcad6cd794a1699dbac94a0fad66c0d35e
Date: Sat, 03 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722668153
