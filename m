Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B942AE6A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720209923; cv=none; b=o5X5RoTDDX6F2sNKyAtf4B1SPnXqpA2Ke5LF5qbLu8peRreuzWc5Xt8yy2xNl8j50NsuyGqhkdlcGKcmbaN8Dth6+IlSIxWvKWRtpMUWrDFmBoKdYAWGqS1f4RhClCFjlQwi2IKRb35pcRFi3kQuMAZVp72/Ven3TCXBgvjOsAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720209923; c=relaxed/simple;
	bh=BeQKhJS88gLOnvYb6xx3+bumH9eXHILeW5BMvuY+HcY=;
	h=To:Subject:From:Message-Id:Date; b=lpXSeDXMFqe+pITe4JheFW1DsxxsgaO3l6aowbR9ey2spXTnJ7+NrlNLeGBZBcH5WV2uXizGwrYN7T+zkq8JxJDH63wlHyQlrX1z8Ifb/07sHVEMuqrWKTghrqbXasEe9y/l4b5TQ/xe86SEH31Z5hXpfoaFTw3fBpkjepX+JFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIFB7LoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIFB7LoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0592C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720209922;
	bh=BeQKhJS88gLOnvYb6xx3+bumH9eXHILeW5BMvuY+HcY=;
	h=To:Subject:From:Date:From;
	b=GIFB7LoGZ10K+qgsdV8dcOvZ+bAygOHTiUF/JbGNebttKRrpYe0bXpIWzBSPuIznR
	 +wYKfNNHCvB1oD8p/y4nF0aNT7Ree/e8nehPZC0ZbMgyLy2AEpvT1TufGZ6DeOFJaM
	 apo/Ih4NafCLLXgwu3f4S18h5RzJKHxxtBrPVYbrL2dlrHNxkSQDez6JYdWXwhqx75
	 JkC0ftNjI4dObYW7YuymduN2/Cwcxrj81ADRIlGLsS9RCGRhuIjKgO0Sq8OjqaZm9i
	 e1y54UCkqlTjsMVIJA6dxDwOgFbRON0/T6VZJ1+sq/aX7QrarRhrjfBKCo9MzQTaJq
	 3csYsKW1XOpnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC271C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172020992276.15202.2255404139772708441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c008e386d7b91c52756de1b44807aec4c6bc01dd5583e53b0922ea36f22f49b5
Date: Fri, 05 Jul 2024 20:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720209922
