Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB291F4CAA
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753024794; cv=none; b=ZxQEcmBP4U0YyyLEZvWKoHlDn/RI4K9dq+vEipxYN5+ozcNLTBDBjXCYkS6Z4K+y9HA3hyK6HD4Y8OODyEMra8TKUUUXn6OUfllcq1379L1rRZilCtHgmKb/v9tSqp5H5LuFM+nYCm5FQIqFMrSwrhGPKeQZxfidggAXF39QVEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753024794; c=relaxed/simple;
	bh=/LjWRHfi3PcnuYqlDA5wQgIp913AEb/99UlEBMmUyiA=;
	h=To:Subject:From:Message-Id:Date; b=fFHgKiwO605NDc4sgw9JrqsJ97cWwP5NBu8qZejxZMGLPEgHg7jbMnz35siQRUaZLDp24U3Q7GallSF5fawJ4o1CvF3lKkYKTS5dsGQtNK4SBscK2Z88CGfDWap3hTmhnwbfvvy16o9xIij3uCE4xewmHk8oHEmq6lZAXFrqM7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbIfCVyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbIfCVyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F2BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753024793;
	bh=/LjWRHfi3PcnuYqlDA5wQgIp913AEb/99UlEBMmUyiA=;
	h=To:Subject:From:Date:From;
	b=HbIfCVyPjxh5o9P6rQQqmJmqV8bHzY/5JWz0hYznALFEwO/hh3aMBq+V5aJms5SOB
	 eCnCT1uwx2EGJozeoIXwHpl230zjfk0me6cryt5ZH89VeKmiURfXV2/acM+v/+DxF9
	 vWo5xPzuTC+jazlTRqMVMl58SKVRrKVnz/L+ntKZzhSSRaghFPHdKmb/wuUA6JNXyP
	 H7DTlJqPEXTIQgtd72MT1GieR8gk2jGUfUt4GPNUERMydu6PMx4DR/cjZcQd9KBjtd
	 gJ8jTzqk0feWjBfitqnaYY8/ozTtBeVDrJWSzsdz2pStQOxziPLiPTstwv7VCprWFq
	 aj2/Vnja4Zf6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91092C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302479358.11763.1153516715111714913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342ec8d35914d8d5a46c31207df2f0dbee556c16e1fe394a9112d9ab7d3aa3c1
Date: Sun, 20 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753024793
