Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C953B1AB
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709324296; cv=none; b=mRcEf8yowoX+S+jR6ZjaAr7/AGCF0qybU29+WELCeLZT+opKg6dMiwA89LfmSBhuSrHMJBfHQZZElG7uIkYwWsQqLGuNSFv2RnrddrYTjnKVy8+CQGClB2dzSA3sGogcgLoiirkb1pY81kV9mv9xcRStBubaXrN+7KIG5NL8cFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709324296; c=relaxed/simple;
	bh=iTM/bRYeDbpuCHbhKW8aiZmkQoCVxdIBsY2mjrKRz88=;
	h=To:Subject:From:Message-Id:Date; b=XZI43ve6S6JRBqmxlY6wFDNrsV3JuQndSHl8uYXswdJ4CaWlaMl48YPpDSPTzk1E4H4cQrY9DfL483Ii8IwimBD7IiCqYulEFoT9O7UwQA0UNZnkkJfc1IMaPS8f/U8c0ydQIjadrQcdTDEZMjRQ3OIkCWd86wQ+oErbJqLjg1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSYKcQI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSYKcQI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D0AC433F1
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709324296;
	bh=iTM/bRYeDbpuCHbhKW8aiZmkQoCVxdIBsY2mjrKRz88=;
	h=To:Subject:From:Date:From;
	b=pSYKcQI0hEhfita0xu6u3umc2Gkmy3DKOeswm2/JK24vdR0RDYofP2DMKnKRwIPoe
	 E0TU31ZFzLy1Lng5WtqPobM4mERvzsu+pW6SKyn8OhDebp6SZMNyPj3m44PAB7403Y
	 672/FQ2NmcI+w890D9eL0U2kqDFSJXWyWG9RoSkcvNas3a6INUIWqEIuj6znazzqI2
	 7bgl1v8dB0+83qml6TEilEzmq5w7736R+/q80x6p9bh6tmYIKI8JOzayarWryie5SR
	 5v7+JHMvnNunICX2Jo9W3JiUycpCocsBkF4j/U7mRfMZaS6jGppCVdgRBamtgBKJNE
	 ljd+PqOQU+Kgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B9C2C5478C
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170932429636.31473.5499547702157453940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ca4368659107cd8e1bad1dbd5b10dab75b2fb3a57e09199a0ca8b596e09f8b
Date: Fri, 01 Mar 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709324296
