Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E81215F5C
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770400434; cv=none; b=N7loYkL1TqrJzzQwr95l6p94JQ4s/Av1nNeUOwu/ADOy1vG7kwW3nO+dyhAm+ebEZDjqGYwQZEVQY0EIrYqiCzpDOZVtJIpyJWj0c22RlTVvTuvS+LQmlCmwTLPJULkS+70ejRexDhZ0tHu8TF2s4h/OPsMWD1hXsZm/VVBao30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770400434; c=relaxed/simple;
	bh=n2Y1dZu2LPoa8tKhZZd930cKLPAtdtF6DXS9L6frZCg=;
	h=To:Subject:From:Message-Id:Date; b=CCqHbn/Fctij1po+eGcmuuXDXl8vR0CxEzoJomYWiTuBsVjahiE3UmT95ACXp8Ezj+NzhKVWPS0EzAnFe2NtWSBiDNWWOWkRKrcqnYZV4c5PhqovM+bvXRcKXRvDyijDS18OTinvD2nvSBDQTd9YcvAyuNLbBcSs6uX2NJB4514=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqcNI8WK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqcNI8WK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8E0C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770400433;
	bh=n2Y1dZu2LPoa8tKhZZd930cKLPAtdtF6DXS9L6frZCg=;
	h=To:Subject:From:Date:From;
	b=GqcNI8WKbyCVZCJ4e/eZdSqsnkMOyYUSGHpPONRU19adQ+hUttg+qDUD23+KSm5B5
	 rou6wdWcUvVUwH+n0fxwDTYCUiAgAn6A6dMJnZKDVBVOUBdWdwPF8Y0g5eojlSEw/T
	 uZ8dmQdQ6qjV3hatwx+GlPb9gEmDoNzlMBuObR4fdqXgc+yheaX5OrqzRTEo+3WS5d
	 SbcfN5pJ0nXOmY4PrW8eObKdw2lnHjddnqs0JKTPQmo8nurjNKVjpytAFyO90LCkbS
	 PMuHUAfs/MCXgzKShxnRfXKxDfLMzyoNs+ctzYikIyB1E1q9JfBuJjEY6JZfamdg7L
	 QCt7IoFCBYYvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96457EE6B44
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040043360.12111.14443958949139908271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a2d61199d34990aae3c24f9be3877bfb3940a87d0503b788859db67be3d117
Date: Fri, 06 Feb 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770400433
