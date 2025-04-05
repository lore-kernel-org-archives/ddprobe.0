Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDA51C861B
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743844194; cv=none; b=CgmK72XhpoEDMdnFUjeEg4brabfE6AOZgOPlM8gLv7vV8rETdVAoB4PUoZioiWEKC+EffO6SCOdyCvkbxkQADFJCAxQzzKnWM59dkV+0z/LqeVEq/XaxufkJrwrA/S+Ldn7R9VDHQ7VADJJKVccOCqR7kmbN+wJm+NJgPPnxemY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743844194; c=relaxed/simple;
	bh=d5qni6/da0yXqyk1+RE1eFPg4s9YAwZm35XqeA2apGA=;
	h=To:Subject:From:Message-Id:Date; b=vC7oGYPWKnLVOFmNrlq624wbt3xE50la2BhQ6kf05ZmU8cUlNE4TulBhYxfma7wLTu2OgHFFataMVRAqZ82fD9X6+/RGIQGqDKFOZS6K+wRBOSCDHHsPIglkW4PFjDb7zsOEuKVintfepctzYLmSAaB8gbdWLfZAgVulm15UnXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlOLbqWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlOLbqWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC87C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743844193;
	bh=d5qni6/da0yXqyk1+RE1eFPg4s9YAwZm35XqeA2apGA=;
	h=To:Subject:From:Date:From;
	b=KlOLbqWKQsfTsgyS6xlWWgkqLKvjH2K+40eh+uoXj191xYNfDd14Z/zd1sVQFnW4X
	 CUx18UrVkVXkYu6XyMqE7U3OwrgIKs1VG8fwmFSnc/HkuxX2+5rcFKaCok/soa9tLq
	 n/sqCdPXHnwCDRlVso5KhMaITqSH5Zl2U+LbZnHO6z0ggQm6rNtzKcMTmm0/1LvJMc
	 zpRXbaahMmsJw6UWJi6jzgIMFRuH0GN5JmusoQaysSO+1nrpXLltJLloPX7OOrP0d8
	 nznnz1lyI+89fyMQXSCzPxqe2lur+DILUFY6FI5ocG6uDSUwbcr1DzHBbTFFwvchMc
	 +1XSiRXYJZOSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99795C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384419359.7728.11809309679642797999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab4f2224ae1f14046fe1801ec0eec534b58ae22fd20ae3652cc719553f4ab910
Date: Sat, 05 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743844193
