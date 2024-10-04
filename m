Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5C5140E50
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728035753; cv=none; b=i19gBIE0hvVBW5l0ve0YFRIHikYEZiUzL2ZKoy3mVw3ppzuz1GWRPoXfBoMY5Ll36pOu/4k/HIcQO0gk82IAfZz96aakYZUkxLr1Yg/YT/3vEoIWuNs340bXIppORljYM0Da3iuxwYRpQws1pIl0O4TE+jyyXl0YL0vlq0WyBVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728035753; c=relaxed/simple;
	bh=h7Dmauroc+FE3JHhcrPFZ47L6kRTnVmcVN5gAR3hlbo=;
	h=To:Subject:From:Message-Id:Date; b=etvY6UV2/AP+XLFQW91id2Z87hwx8M7MlTyaYc0GC3fha6kZCQ7uUKulofYn4+6HKU2QX3GNWbN27bAMrsuGYPBj2kjGEZOLkWKoLEsD1ESuIwcDDeIUwTdgXaSBD/joG/E0lHSKLmP0g56mkRetqPAFBkDkakt09Mh0V17HRzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0GhDA9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0GhDA9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86C4C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728035753;
	bh=h7Dmauroc+FE3JHhcrPFZ47L6kRTnVmcVN5gAR3hlbo=;
	h=To:Subject:From:Date:From;
	b=q0GhDA9Vc4yf7D7tnISdCt/bS5XdfG+VwFmLyo1a/hNIyw2ml83tfpJvSWV0E236R
	 FWptsI+UANVnRuSuqIB3hzjqc0KqC3KpNFlXnB3rW94Q35cSIwvwz2ynlOCvWzXo/K
	 B1U373dpZgU6yKxCXps7PQOmYB6mqomOEVT0u24eYlxVOW4X1CTSkmD7RXXdJkCXr6
	 lz/mWfyYVl7uDbpR21YBkFykwN0ad9QzVhX5uDCfarXoKf1kSdiFWMBvaclWHTCl+/
	 t5dE1t5NYTA50G/kaD+FqqUlK10J83MQsqZp8IHjqj3UOtrxMQR7qtHg5mK3du2dlx
	 8L58HQy63dVbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98861CFA753
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803575361.4111.14200779944804313205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708fe48649fa68787c9feeacf1fc448c59688bbf1aaff938914c2f9ed3e949a2
Date: Fri, 04 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728035753
