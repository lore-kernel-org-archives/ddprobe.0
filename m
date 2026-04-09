Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D563BFE26
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775739994; cv=none; b=cPmoCSs6IY06ittMHNJQNsu1Ep3ikiGRJbq9KXD5Gs01QKxsOtU2oT31OtEL+/COxq7zIgt6lQqB2fprzzzV9bLQKkeVt+7iBvFLYJwX90yQJ5+z//jkVxUI3Wy6CoJ+qe+CgTdID8RfmTmAt69Mk2/UxcStc1c95tyCHEWWKUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775739994; c=relaxed/simple;
	bh=JVYiP37K/q+ySZjruE9X5ICP4Za70UFriGRPaB+nK+U=;
	h=To:Subject:From:Message-Id:Date; b=kJ4H9ID5j5F/9ZT+9SSokBsjontiERkWZFSnQgRfaEeNtgsQHruJev/C5GDl7DttD8vPCT1Rc0D/ZCGgugu/byqUwoRB2hQcCCInE8VMzoWvCyHy+/AZiJXGUmTCxSYdZ+XMIiy8uI5B8+o/Yz9+9HfKM8PyFYSoOBAWUYSuR08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tofDrKiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tofDrKiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 185A0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775739994;
	bh=JVYiP37K/q+ySZjruE9X5ICP4Za70UFriGRPaB+nK+U=;
	h=To:Subject:From:Date:From;
	b=tofDrKiEs7bee9X2hunH7mQS1+Z6N76yADEyZx7NFD92jr0LFIVPMMhTASmdSqC8l
	 5QHmrOVoab6emIcVGcD5dxTHohb1+XlvSHcO4Pwyfuty1ubCM2rM3YpJLvOC4ltr85
	 bXr1rtanTg0dslFfOAfacqatKxHg6mail8y1J/Z5yNKU0OpKcsJwG0t7S2C+Hyt79b
	 X2J3f4nVzNB8Cqy+P1giBwwt4Vu5NMJc+F/zL7giW/QlMNqsdD9EU7xz9OfZwVu/Ke
	 +NJ+cLQ75QAmv+xfAKe0ga7bUy1AdGs5rAzEbv+reLnrtSSVug8fZW/zjfI6THYWti
	 4r+iMktaE8gyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7689EA3C59
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573999383.13092.14754779180091141338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664f92cac178d9c647f9df28a21fb6bb77f64b2b57cf9ff7a85133f7a1c6cb14
Date: Thu, 09 Apr 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775739993
