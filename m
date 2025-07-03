Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C72E2F29
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751503194; cv=none; b=TvQu68QeiiDM1Q/lyQBAqyOhF9uclyxNiol4+61h+Wq06aty4l+awHHfF+GKVfssynHRB7D/Qa9ZIUHmRsFLXGpOvU5kKnsP+R4dd9A48CNK5VAuhZ+u9fglJZkG4ymDPVbLC8qL8TkIzNIDfWkcSAkhlrTp7g2bkFVCGlzG+vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751503194; c=relaxed/simple;
	bh=2yQA/6Hs+ySqivdWcHhHaxz0zje/3D/i2i1Zl6IBmQA=;
	h=To:Subject:From:Message-Id:Date; b=OFVmr9hp5lsJC5dWoTnndOCAsBNfzqVxlVIiqIwy5dgb5cLCnPmIX8WkYkCca9UtsRIGN4sPgnUoZywNxYtqUc1o1uP9Cia55xAY4JTR8h+6eHeuEmspTjyyw4HfQ2RE5fnMP6HJKNOdHSvX+lFXdfW+9ifJvfv0F1abW/UPCk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0VPwnah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0VPwnah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A807DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751503193;
	bh=2yQA/6Hs+ySqivdWcHhHaxz0zje/3D/i2i1Zl6IBmQA=;
	h=To:Subject:From:Date:From;
	b=T0VPwnahDXmzZW76gKbkytMGNaWxuLfmlEAMrfTZ/zfSw3MOdq7Nw0qlC0yQB6uI8
	 Kn4NG75x3B3rVOglN1QEReinwraTklRlHBulYnTf+DBhw4U+fhpsezE8otw67dfBmS
	 6iy6qov0SUEa+mW9PcmvhI+Spn/GqN9wPFKO5HeT4jF+zRfa9y5n3ZyJY+VN3fj0hU
	 qavmt7YwzZ40O8DJndnCP+Dzy1KrPdekoZVjQlgzDjJ5oJbrGOkC/CwOcD47GCEFiY
	 XoBnPFDS3Ory+RyZpQhwSlxE/cJV8GmFKTbGbsQF5DU/qxkWQILkjMlY8dorXPSrSJ
	 1BlpbYCvaQ3lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9419FC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150319358.17952.7392570030813903065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd934ac2023368c2d8c3927c24e7c55e8b3248a252cd0deb8fd274a6a72b64a
Date: Thu, 03 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751503193
