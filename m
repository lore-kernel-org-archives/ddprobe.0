Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E78C1339B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781491594; cv=none; b=d8YQuF8OaeOQPBY1NRDvQzWvvFfiILa4ZfhtDgdakZYKDlD7Ny+ftG/0nXSTxChjgNKp1/H2uuzfCPD/mqLx0O1TvDhrgddFfywiDX6l54Z9MOYXQHRP7/N6bDahdg717weO3n1SeQgMJ6OJzbmPmDtqsmNwdMsiLiaB9+VQoIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781491594; c=relaxed/simple;
	bh=Edm2Ki4ur9Dq2aifsyh0R4cQT6Taa3iorcDoQZWlGlA=;
	h=To:Subject:From:Message-Id:Date; b=hftXT/7J/3wZKmj9JvA5fznCk0jSFljk/h0uFCt3TOgXbiuJlgx4ww0TboIHzubCS1UX4mSiRiVABSSwqYDj4d6p5q+p8Ygwy/pBEwRO6OkOFTMJKA9OFrcW3/QmMQuWBjYF9L0P2m/iGyYkmxTj3MqBz1xn1QqBxui5AYeK8nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BViAdFSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BViAdFSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A48C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781491593;
	bh=Edm2Ki4ur9Dq2aifsyh0R4cQT6Taa3iorcDoQZWlGlA=;
	h=To:Subject:From:Date:From;
	b=BViAdFSYivCBuW76cA1zKbyPYZ+mU5rL+/7ATzsOxwnOSPIv9wRxyLGeyq+k9Ml+M
	 IjCzoYFodIuALXwBNmB/oObkY7ErxXw9gBdXhvV0RU9IHykqiQ7yrKk/BQUuNXmNgw
	 VHrrMBjdJDVCpjB2jn62YvAzlky4QfbKzo5rfE0LyJusKbKiiS8lUcqGVCyB027jo6
	 9z7epDWWoxfQUBOztwF6rn8Q8o/jYQRm0JYk8vdyGx/EWdzc6KHC+GA4rRBXi3IajS
	 bXF8fcDyuKbY8i7IL0Omt35L636Fk9zDyA72NninQhtlKtqG5It+YPqNb9d5kWqzDs
	 xG0SZpC2LDZ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6575CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149159373.12698.8613992357544183626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b52304e3bcb1a16bb1665b677a5831ec845a6e8177e08382a35e06b61ceee72
Date: Mon, 15 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781491593
