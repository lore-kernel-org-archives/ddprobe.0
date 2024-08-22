Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A01015A8
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724288754; cv=none; b=dDF4EMQSgVmo7tVYd8O0xhZzaGMWnXMWupUlvOzBEGoCjBUUzkM8YaYlQ3ENyPJ4Yi0pExgOKx9I4ZG5CAhPPCsMW1fBXbHZPAJE1Z4ISMukJgTLFWh+hin7LZ2oTtR7HTBNxvBqSLD4uU2/f66h0yQL5n/LWKowQKmEFjOwRGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724288754; c=relaxed/simple;
	bh=9+c4nDNBUFHD7KFi8bZEHqDn1GejOZOIBAYZAVOsluY=;
	h=To:Subject:From:Message-Id:Date; b=VMlcoO0yvS4neXhsZuYxbMVybLuKgWBPAdUsPR8KXegji/QeTTIwl7VDVXBE08hiqRea4H4QeaZExHg01vE0M2i0gog3Kodp6xiqyXcboDmHU270V693xkkRYIcjPv7w9UWeoaRUii+OKs+wewC7Z8OM86JKXz87h38Yj9icnoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gi4yosV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gi4yosV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD913C32781
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724288753;
	bh=9+c4nDNBUFHD7KFi8bZEHqDn1GejOZOIBAYZAVOsluY=;
	h=To:Subject:From:Date:From;
	b=Gi4yosV0SviZj6gugkniMf7O1LSv2RNS9a8Db8Z6rXcYCWmxtqdAa5Gr+Rdxj2l5J
	 kQ8iONh7hY/aDmHv6rrzEOcAa0PfECnUub8vdKtedLyGdcBFBvCK9pVUTPvfUCVxlf
	 pk+1AS7fGzjZJnuxSezGGtQnID+NgJDIzXI35ueGrix1Camohl6l3CYyNhU6FYeD3E
	 BRfuoGsfR1RtSm6t4189HenQ6ZonWqLdr68+J09E11SSdh5rrEgvGZCbUWiDL0yMWp
	 jnWFEiVbG8hx5+aIS0UUJd1O4R5V8NC2HHlpLdQu506419vCkgwE0pXpmItsCU+Dor
	 Qjqtln8X+JkBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A66C52D6F
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172428875358.16358.10941529047793085300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53f8b418dbf7aae550bbc0d94482d3eec6d4575f21e68bb26c1d27d1aae565e
Date: Thu, 22 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724288753
