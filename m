Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B454C9D
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756963795; cv=none; b=YNs6u4+A6XADACUMzKQfWloDqFCcS2bv8QYcT5u6uLPfQzuPvHrdHT8+f0zzySBUcT3tevhggPHpzyekwSJEiCcYg+ge7EAFmqVKnBxBFVsiOuGGn6g+Fe0eKRnmakKYcflQcGI+ywuwOmeZpPE8uc1TpiabzYCl2C6Ze0AbBEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756963795; c=relaxed/simple;
	bh=bURE25D/Mlrhuifn+WuY62UhdNw/HptUVG9z7o9N+a0=;
	h=To:Subject:From:Message-Id:Date; b=O8w/9DJM/3USp0j1BeTmMPiW9nhahvZ0YhbPlE2wroz2y1UC6nt/hxu0PI4X6WaQG0RyFbin8+r2xR9twouVqFYdmXp9DGfjfGsw2Kd7kIKr7H7JcAQ9TDHAB/nNWQkDSqiPsp1X2SX2imnK1lGODtOZ9uAjlp9F63qOi/hyS68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iidC0EDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iidC0EDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BDFC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756963793;
	bh=bURE25D/Mlrhuifn+WuY62UhdNw/HptUVG9z7o9N+a0=;
	h=To:Subject:From:Date:From;
	b=iidC0EDaTkRf4S9FIDeeKwv07Sc1cEyw+ZciwOFzVsbzKDDh6jsVOA3yThd9U57Yi
	 YJ2YwZfy3siUjWHunrDnuaWdBFk6eQpgoVvr5w1ribCNakIw9i4rrUl2z0b/XootdY
	 X0QvjaZPqxba3SAI+erIwwmTIq6ZTi7DraGX73bXIsLXEqK7kH7Z505If3xWOsVMzz
	 V9KT1KR4jyyQF4BMgS1CyzyX++gxG8yI5PSRpTV62BCk0gd9zY+U6SpzHVzcLGsv7e
	 iHi+a1SnMmGm5s5Le5BD9tJwVKN3AMkOU9TueYbhasBfiBAueiMOJ4TnnQv47yRJen
	 /4mKBRP2IUAVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECCCA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696379357.16520.11463001808770950593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f06a481b30bb11784d13d4cf732ad155cbe4c20ea0037c1b42cd96ca1a682a1
Date: Thu, 04 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756963793
