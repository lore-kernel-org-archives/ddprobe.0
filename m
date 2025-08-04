Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C8C54673
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754333394; cv=none; b=oeZYFCsnYRFHlQzw99zFo7SGH1NpRDr+J4YVt6csGzo2jNRrU1OoMV4/NyyKqRiHV4T1yL7LtAUH9eRAG43NamtBOqQu2CxP+B7h0VzPW/4J+A1WkJvODYZ7B3c96Abqtg0zFcFVrDMwjF95N4Z9AvBgk1p7HRejkcnCyKYrMiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754333394; c=relaxed/simple;
	bh=CH+hIH/CkuAB+fYE39F8D1kN1uAZRUoR4MU/aXiW2k8=;
	h=To:Subject:From:Message-Id:Date; b=MqUzuHy3hCelHtdoho8FOAc1WNUA5yYY4gHGasBXC2DCZqFqTPLJY8Pz40rNgebczWhQBoNZN+jXHa8KZOY7xjaAVeL0QgzA6c7+VBE9roDUvfJbU3WRfiWJD6tffu9sKD0PbxRn4CeKgSHo6vWQ0HmcW77bGnxSL8tayQ3uQXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQjMxv4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQjMxv4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15D8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754333393;
	bh=CH+hIH/CkuAB+fYE39F8D1kN1uAZRUoR4MU/aXiW2k8=;
	h=To:Subject:From:Date:From;
	b=lQjMxv4ia7f7luT2b4Y/nyvB4gT69WR38dIe1htxlEcx+3WhtD3nYegElreY07+wj
	 1TMRDLeF8ngaje3m/Jlgk5JUw1COa3Nyhr0mNIXqSQYq9rLQlqaI71lOCWVRqvTCfd
	 JGPJGmmOofJh+FzgeFSFu+oa8qJJtVLBfwM1vYtuWddYkJB371THbyLsAc+Epf2yHL
	 GuIXfDx7pdCLJ+EUDBdJ0YRTc5I2bPqBx1dobeDZPH6CNL8v09BlZ1Ol5WCLeXmnjy
	 eStCQnRkdHgwsA8aT0CuXzqkA/f92Mm4LqT7Grl5v2Eh1k1NRZdzOaHVhR7ktwcK07
	 yB4o/oIiIPJWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9065BC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433339358.27165.6200997388224792004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9653bbd8bfe5d4b27af50c3730245af8051c4de7b509ce0cf7d269fbe503c6c
Date: Mon, 04 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754333393
