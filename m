Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075A3221DAC
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750457395; cv=none; b=p5RvKEHgKo4pj7MUypkt258rd7VehshrStMbe2rrRr1e88ub5IplrTlCizE8BkN786WpCiU1SgoYhcB4kybaccJmatclKfPi5RqqiaSu6RPEXxhQTJ1GpriUFz4SDisGZ6yfz/wNYLFM3T8qgyPtlvHucbyBlArSQ4aX/YFbRwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750457395; c=relaxed/simple;
	bh=sFOPROUrNWUdYZyWM83QDcdyhoDtLr6FadwXmBc37MY=;
	h=To:Subject:From:Message-Id:Date; b=WMHO8J5mIzXLpxLIk+s2lUO4x+/SWlXgcHX6vP6iG2X3ls7C/oaNrIMmnPFobvPZAIOdpe9AcaT3+5cCklPAyDzHBaJbk+mKZtW2fctsCnPWKryZJTPb/M7hegxflqJwl3Ff8uBkBsyxYqI7LOTYrkgZUcxxAncNmEOVgSrSsI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBqRiPIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBqRiPIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1877C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750457393;
	bh=sFOPROUrNWUdYZyWM83QDcdyhoDtLr6FadwXmBc37MY=;
	h=To:Subject:From:Date:From;
	b=YBqRiPIVCdQSsfhfPcrM8XizHg1Doa7+gDmNhzNe5xCoYejfj89Oq3tEUjTqcmpIi
	 z5sdLS7VOoDoqgi8OsOAk7+RK0bFY/WZ/zJZudN5V/H3jNCZIEK58jSgNvtC3RXp7F
	 bzysWguhW0Zo+Av0FcKqWbuc1GL51fr4ZQkfy/fyCQCZb/LRAHW3z/RrtY6ZCENsTL
	 RnZV68LB/uZGXFaj34uxklzAtaaMACoCKz9Eyx3D3TWrM9ImwZiSh7tgxxayW80ed0
	 Yplv3yRijoCW7t7paJEPk2bnuf4XFA+oP8dQav2loT5FY6MElGvsxfUJyR6808uc3D
	 eTcdqTq6iQjoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED95C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045739357.9647.17212189454989134641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850ef3540738f8898d23ffc8ed2fdf719c5038a6156d174e694b0f9fadb29261
Date: Fri, 20 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750457393
