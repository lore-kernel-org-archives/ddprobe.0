Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E3922D4F9
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744126194; cv=none; b=qfTnX51j6gIQAJQ+rULS1on3EQJIcu3nMv4bddL3miOS9ienVfaZGcOPS0NwXqm57Z7KGFA8Pph47FfFPNGEDSOqpK/fA2eYtlCz5Yz7eb/81SYok1hiTVnIt9TOo2WUjDQVm6FXch/QljhO6GYZytPYQTWD6dYt+OXqKzvtaxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744126194; c=relaxed/simple;
	bh=HTa9EXCnx1bo2e5sYRP/UiQI9mgu1WxS2BFluQAhX0M=;
	h=To:Subject:From:Message-Id:Date; b=oWJteuekIh5j0e+rpD1rFxiBe6HnxMgsKnRqxxfHQ+wqXSp6nPikSIsQEquP/7A/HrE3w0nvHPlLKLsvHyzuH7TPwm7iEOhFuzYWusOMg11qEoGVgVg1HmNc7J8hHN5cvljDQhQT/elYlwRBeTj4eURWheO7RvGxn8j2OW04aVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOD/jSdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOD/jSdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB649C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744126193;
	bh=HTa9EXCnx1bo2e5sYRP/UiQI9mgu1WxS2BFluQAhX0M=;
	h=To:Subject:From:Date:From;
	b=BOD/jSdw7FoGfIP30niGq+GHnf94Da4IKxP9A3tOlmFBkYl21Vf0p56Bpc5y60G2O
	 I7YUCTPS2+EEewwj1frOW1PLiPSg4spKiYY6fWjIlaKopF+QIA2GOojcGw7lmnaeYv
	 FW2HaU8SOOhlmydIV3uat6QLaBCf01FKJlShqjYt03cW6tCX8Zx69Tr5fYubJi/Iet
	 PGy/6r6CnTaLVDZwvmOMs8DghNMHHaDo10hH+7btkRnWKy9equDg7rHmFLuDEUM6jA
	 LkzAIjD3zXRV1Duhxi9CTrHD60TtZw1xxN++KtsDWid+yLBkrNkK+K6lSxYmDuhf1z
	 o0rgcanaBaVDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEAFC369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412619362.24912.2260244927545667659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9137c12d68e464b78415160df18c96d7c2b7a1309eaf8d4b4a48841f2d422f8a
Date: Tue, 08 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744126193
