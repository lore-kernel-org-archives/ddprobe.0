Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605CD3D0908
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790964034; cv=none; b=s8RJZYiiM/mL7XlhTHa2H+xXPabgkLZ5Kw0eVyADrjokcvTIR+EQtmq2l065xGo7ZJB6j6E7LepYNS/eSnaIWK65KXoJf36WKXkqhGJYhXDS2o4vp5torSTKmF9Ig8EqPIeQa3Q3i5/VZ82pSsoHGnPIaGq+Dq/e89B+annkP0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790964034; c=relaxed/simple;
	bh=13914f2zq+Z6pGtr9PpHT7csoZD1LCGIkVY1JQE/gDQ=;
	h=To:Subject:From:Message-Id:Date; b=SJydHm17fyGx9CJfbrO0A+PYETnIe0xsbtfANN2mN1aHReOyGg5hwz9IgjJRKKSQ1K39uC8aG6sIlDLGHX6NVoReLnBiqGi6BI8i/G2h7SDoBAdvTL+1QcyTMYhBHK+WIgUFWfLkYqes1HhGeIu1gFt0Y6oh372DLQuKnI0wNCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isS9VeAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isS9VeAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD53C4AF12
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790964033;
	bh=13914f2zq+Z6pGtr9PpHT7csoZD1LCGIkVY1JQE/gDQ=;
	h=To:Subject:From:Date:From;
	b=isS9VeAO8KBZZJPywy5/Ags5lOtLIJ2peEI9HqBzsFNxoMsWbhi88tj/E0a7eu03/
	 3XC3uWyJBb6Fc2r5JzFmeM6r4F3/7uSuMKR/krAh41mWiwxSfLqkxNbIdathGNfMKk
	 snEzlTG2de1BFPiV1DKVj98TdqQRO0wCm7v5I+mJuYuXouHvdwGNRn9jEUBeF7Gyez
	 EQDtQdEV0HVnIO8mKyM1ceH1hM/UwSKRnplZKkD9w3uXrp1NE8FhoKuo37381fHBFk
	 LygK0RL+RYp81DNByTdzmvXobEFCt/U/v3eCY0+WAvJ+8o9mK55Uy1cXDPw+2xfQEx
	 IxPFjjjAUWsUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA444CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096403368.31165.440457772862818222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d1d9165ea6b74789f53448bf250a1a7283b11a417007ab21c14b8abfdde790
Date: Fri, 02 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790964033
