Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190041C1F3E
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732059354; cv=none; b=iFVRdafeKHu1Hg5mMREb0F3vjPd2951yE1+T2CaGX1ErQjzoLvcoFkMgX9JYevi4z9AA3jt6ZlymI783wFsWJK03q2TfP2caDjgsaiSPoKVQXBFn7z3w14k9HoGKSoikvu97S3DvZ3Rh8S0TEd0VN73B8z/uAUAEKPeJ8+b21GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732059354; c=relaxed/simple;
	bh=rpjsPxbSr0YPsyZmxrJ5WM6dLYEhro0IDhqOTnIYhfo=;
	h=To:Subject:From:Message-Id:Date; b=F3NfWbVipwuB30dUHPBbuxvSm47rKpWMMuGLpzE6dww5w358orA9pw7GHHyx7VBa02VyA7cwCJMnqA4uWpdOqBH1RW2b3A9K6dIBdfKP8L0QjbTuMQA7CXS/R8mljIwG4cCR2wi5P+Y5Sl7qRcyT9UCsgNtjqtS44C/jqUzbRtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eczrDR1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eczrDR1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4073C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732059353;
	bh=rpjsPxbSr0YPsyZmxrJ5WM6dLYEhro0IDhqOTnIYhfo=;
	h=To:Subject:From:Date:From;
	b=eczrDR1Qi+GHsLA6ClcIqufCZ1DsKaJBhwFD0nEwO7fJW+kmSmTA3udkyG5ZY5j0w
	 qVwfNjMQ8f7+wGzPen9PS21/3TIb6cwv3pLqCEh3Vrv7tm6lIz/BgEI10OR2iPuvkz
	 7ScN7Aet0zs5lfskCRFwIkLWcgntPf1J97W5Qf/JGlBvO5faDMdKx7TU5rsjnisnWL
	 So0HuyJNVVAGTn92WW/oWIsnEKlFC8WsAL0kQLc21uENX9pdXuMDqPMTPjSbTTiRLo
	 ZXWMi7/RWyzWwJtKieZjauZ6hv/+vqYuhKDIJOR8zPWgzbK6px9P9HpGa5llDpw08g
	 Ww57yN1C4MRrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90982D6C2B8
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173205935358.29394.13884234337230323068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298c5476e8b1f383961814af04060022964b2032b941db4fb2ed501be92c29b9
Date: Tue, 19 Nov 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732059353
