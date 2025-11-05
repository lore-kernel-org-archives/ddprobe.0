Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0823C2940D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762303194; cv=none; b=FJJtyFVqrp8nG1wkSA80AxvDYbe46aAxVlPQTaA5QrsQBThD/ZcDyE3EZrAMUf9d9uGvUn4Qs37qBBSRoNAhltdNLPJW857TuCtwTaoPCz9ZRGIKkG9/ZMLaWvKJKVk93N7NY1PFNHR974R9biMlS6+D0AyvYF719EbybWchImw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762303194; c=relaxed/simple;
	bh=BCi8S8g3pLKaN3+y9tUT6NcdLvv1/iRuk9YVpmAwvvI=;
	h=To:Subject:From:Message-Id:Date; b=Ipa/tyqVYE/RcHSfvt7Smxm+3VSZfUJ6YtF1u/GqTeW0Na8lGmS9lXq+UEMGA4FRiwx1aqV87CHPEubbDOCQD7+64dTa6fzB4+AJMZ/BjXN811DzbA51f4Sl9zuO4HcjsYJafRWV4BHylML9S76CECTgzb5Ow+c1SyjGEnEn6Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ok5NyPO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ok5NyPO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF6BC116D0
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762303193;
	bh=BCi8S8g3pLKaN3+y9tUT6NcdLvv1/iRuk9YVpmAwvvI=;
	h=To:Subject:From:Date:From;
	b=Ok5NyPO8gtp5zS4IguRhJNLQnGx7mzKu3Thxll3whdoWG7NfzujCZwVkOFO9B3YOZ
	 Hc/PgrXgLm6eVrGX+7QUafpny5r3l7YZV6N3fVlU8kip4IvZyIPf+lEbJtmX6akfSB
	 RtUkwgqyWmYp4L5Kk3s6VByW9RCTqfUgUnEGgFqI8wU27DT7OJnZQ7sgEy3B7hBSk8
	 NLd8z+cz9JoIcLq9djHi9Esr8LSj+3lK1U/z+yHPywf2Qe2cXsc6gmwTCsM3MgO1S5
	 wr/rmcnO2mx2O+d2Z3vWCoy9Q07qpH6eHVj5XSZFF2bDulwvoT0hLVhhpVJMeci0uV
	 y3pHrfWqi4x3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91929CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230319358.22794.4334459936236643608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1bdaf910fc77f993b6242e601dd7943fd02023ed9604ec6c18fcf2ad8fb6b47
Date: Wed, 05 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762303193
