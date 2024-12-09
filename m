Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D93139579
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733762154; cv=none; b=tSCl+eFobys2EoR1enKkY/IJaj2zKc0a4epr88fXu0pButJdKiwRrzwkkZzq75lRrXsVWgVMZYUz90w2YVBdKw3iGNxL7tOc1srKfCF2phmcBgO8Z7zic5685uCWbWmHLvXDerrAao+Kqm0vcl1kT0WwFfLBk1KHfdNzm5pwLUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733762154; c=relaxed/simple;
	bh=6MMwbUNksUd3LMzYZrp+aP8BW4jPZXZyyP29bF8U/IE=;
	h=To:Subject:From:Message-Id:Date; b=h5eGkrKo04ynzbV8XY8SllisMw8ZeXiYWy+s7OUa/1/furd4jNZElZjiiaEHzY47uscKDSXdPK+CV3ZfAR8mhH0S14RLH8BMgpXoG1f2u4OsrbIFYYU8akzkydSqGjV3yo2QnGeTrn0hbpDqnY1KR0IT1ajZt3rrX18eJA0x41U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oL3jv8pc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oL3jv8pc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC1BC4CEDE
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733762153;
	bh=6MMwbUNksUd3LMzYZrp+aP8BW4jPZXZyyP29bF8U/IE=;
	h=To:Subject:From:Date:From;
	b=oL3jv8pckLeafiiBgc8KYNt2N87gBzikb401iZHpDOPRfjtJgEkhE5wK75KaizBX5
	 ji5AiiEeWn36QjqSos5i9huUOYCNtyhyP0hFaWwadWnlNjpKazxX5kOwUvZTt65Wsx
	 04R8CxSHJpqqCoqKwkPnjobWTjJu6mrSslPu2VRxgLMe/N2LpoaS99r8jrKB6cGKAD
	 bGfAqVhguf0Ftjk/tvfK7dV5MZNgvqz9YQ0FthemGrZFipAuww1Vmu9wcuyDZPo5o4
	 EtxI0R1YNQ1hDGF7vu0LwyQm8AB99GfAQRRawwWV+z/FFLE5g6idZtY8UbFerFJJYW
	 MjHPVnBvksfNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973E2E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173376215360.16493.2819413581255470000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358849f7538d835c58a7f8630d9f9792fd051383d5e9f42a35f2a06ba68a0331
Date: Mon, 09 Dec 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733762153
