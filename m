Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE96FC19
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726746354; cv=none; b=at/3ZyciOieAf+um1mV16uQWFeRB7FNQPkdVDm+9IXVu+7BCAf5Lg+E2pdXGmfsMm8F8f2HeAZxvEgKPyhWoq6Wrw+cRHyWcKVrzIlKB/Aa5tPGiUoGoDNOVzc1spCKY+DSWKIFz7pac+IXjMAM73tlRI4boftLKIyZxXZokdU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726746354; c=relaxed/simple;
	bh=kSCf1rY/uK4GcjSJMSPv6QUzc9p9945DLNS69mgDnSA=;
	h=To:Subject:From:Message-Id:Date; b=aQ1qWnWlMrOD8l7CzZ2kuJZS3As7YMayy0AK9dQaAiTAQi3eKN4vM18MZrU1MtdEgvq0sH9H5npgU9feYwswIH18jIa2L1ls2nahvTPaSW4mgf5YeKo9Ue6Oa9LL8u3/qIi/cWQKQERA9faWE9ANtT1BMBLVjtZfb525VGfOsxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSWk7UTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSWk7UTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5640C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726746353;
	bh=kSCf1rY/uK4GcjSJMSPv6QUzc9p9945DLNS69mgDnSA=;
	h=To:Subject:From:Date:From;
	b=bSWk7UTckQso8TGh5pPEDCenomjOfRwEnihPL4NyOe38RvVNjqagcn578zDL3u45N
	 CW5+Gf0OBDbaP1HsVNTgtXC08k8uVK0H5NXQcXYQNnSb5RnwjsGgM9UrrvvLKZTQYK
	 WbR/jpz8GHYcrsh6RRlf6pNvVdraz4/dAIHbNqfaokloWe/J4X2L22Q402L3UJCIAl
	 3bZDk9pAS4hGBi6stoGQEczOC9IVPxwF4aQ6wWDR0L7M38yQ7vD7NlMozeJ1CrgGsJ
	 wRdqr5NIqg84r8NW6x+PJQ6ef9knJYaIHr5Ke3j0JMcxcvL4clM1mxUFJbZv9IsVtp
	 v8lGTRggJtzUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F5CCE8D78
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172674635360.7469.10395113365718502755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fecef9289455734b403dd277076310a6f9983e963d799e78648a342e9992ab33
Date: Thu, 19 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726746353
