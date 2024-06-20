Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B21D4AEE9
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718876423; cv=none; b=aJEz6aYJ+zZ37BjXmPY0QdkwZyYjQnRh7a4Du3FNbhCviWodRn259fNHg92r6dBldrNqa7PFmzqKzWtAySDN+AoIr5VnzwOqPjRH5aGGIziO0EVpbIhnhktjBYLgZb8WJI3xrrOTMBdLpg7C/PejU+sBjruCYc5DnmtYX8N5qUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718876423; c=relaxed/simple;
	bh=gJmrrl04NCJwxXujfw2TrBEPTUP6Yaaot05c/hhKSHM=;
	h=To:Subject:From:Message-Id:Date; b=fE2gyzcKl7Kc36Ki1VIdSIWcnHmuG0lUS8r/oNOBEubqbMWyfdWOXCaLIwLnKh27EWO32HCs45cY1JitUmLxsNnGlNZMrb3x0kWOTwZwmkR7liofdHcOW1QxqE0I7L28Bh/hVZiGwcbhdXT8g9p9G3Aiuad7Tzhi1RuEgY/up2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFCjQF5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFCjQF5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E98C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718876422;
	bh=gJmrrl04NCJwxXujfw2TrBEPTUP6Yaaot05c/hhKSHM=;
	h=To:Subject:From:Date:From;
	b=bFCjQF5tSQbPWX/AgRlUUHAqQ22Mbe5SY4fLdcGyO5DaHFToQnuAgILD7Ouwcqze0
	 1PJgaQjgOyLfLo7W6kwANWgKCE3vUISrZeHJYsMj1u41qhwEDqe8mb+TytJPLEb+0J
	 KB8ioWy/sHpc1M7/0mmdaA7Uu8bKH1eVPFR9G3OXs1iNk5kPxQbAYom+lnJFkRcVH7
	 n+rQul887N9hIeoALWezhV3nTrKKSdyK5CMDiNmtRLzOuNgt5oPwbDSeeYj/d5fs1+
	 Yya2zxFK2sigBcXW8ZnWMmYtZ7MNhoa1RaHlsI572KTbQd752N2+T4S4xTX0bwe7MX
	 g3AOg0EOB/2Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA5EC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887642277.2508.1941360672280392508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4296a6058bde875d0deb4ee99d01570c30728df170dd34770cdf5fc9eeaf6c51
Date: Thu, 20 Jun 2024 09:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718876422
