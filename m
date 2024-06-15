Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7199B22338
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 10:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718446703; cv=none; b=QkJef3cdylHLAW6jf9JbaadwPJeUd7j20vjWgGMXt3al0Ff994p65sq2RghVDTHZiwaRMGYYzX0qIV/1dA6Gq8Co1XpNan5pJdjExGWRVfS0r4k3A1dEI5GxfgYGq88pNYjXDJAyWhHBAo/fQfDBQ+/t7B0JBc6T4yF0sH6cqac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718446703; c=relaxed/simple;
	bh=bqx/HaaF9dieXgsJ40xmx3cAgrSCqYpKgwVEmziioS0=;
	h=To:Subject:From:Message-Id:Date; b=HSlV0jU/C6XeUg59J1bJNqQ6MSlePzzxu7S8E42fcQFPMvKAxG/dpdgHPGLs8MBrvqTc01h3bC3Gl7LZrw7TJS9jff/90+ETJI2hNvLQRBUGKNIQcTyorxlm6n6bzC411mkGfAbzhe0v1HUXd2qyxzsBQoh4iUb+9DJdJ9Qgr8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptZWNjgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptZWNjgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF84CC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 10:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718446702;
	bh=bqx/HaaF9dieXgsJ40xmx3cAgrSCqYpKgwVEmziioS0=;
	h=To:Subject:From:Date:From;
	b=ptZWNjgFj020QsFi6sAIQFNOn4i1l6YPXThodVoGCddGcix4/HlB1UNaJHslcCNAg
	 E80U+Cvh40dRuLePQbzW5bZ+SrE3wi2ODB1hECIMhJ+l5c8zT9BPgQGhtKDkIbPZoD
	 rNYIfZ5Vee1Eb/SbCWJej5tuHbKWWW1tqzhxK/rN3Ne7upakp1WYqNiBRTOT5aUEyl
	 UjOW1na7K8uwDa8sUdQEjZMLvz6bUtIrFBpoC4bhe5/FnLcGRMYiOod2TAGfNgXr7X
	 nG05GAfhtIKJcXEJUkRtH8i/Q9DeWAtBwu2EMLY0pVkhSe2M9RkXqI59KzJbDye9Vs
	 IsFxM3M0qrFow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C877FC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 10:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171844670277.13033.2739274432728151718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d782831ff9d8708dafd8f88819b6d941030d6c0c2b6a9d880cb8d6d47fab674a
Date: Sat, 15 Jun 2024 10:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718446702
