Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B741632C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744437595; cv=none; b=eEPs/raUUb0XTjsSZUFC5eqmBDqdJf137Gv0tX18SQc6ugv0xCHk/8r+VLd/FwvrqJjd3hH+00H0SwdrN/QOBuRmUAOTN1zjpoGs396ijUILpzwtRRCTGCaeB8nWWFXFF06RdhNaWN4GmEXU2zULhJSm0h36zrVDE0rWoPZYvaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744437595; c=relaxed/simple;
	bh=onGYgHDb0vtzB5qYRWEYbXs2Z78csNzXpA7kuPoKisU=;
	h=To:Subject:From:Message-Id:Date; b=atGelJPox9xiGBUHEtY/tnBpw1JMYkAJ/YY+SeeR2+91mKzSJrqXek+2m7BxYi7w7gLx2QGxGZuIq081ktlRSsIUlm0z38TDEN7zJM974SS39SQxpB1gwq8hA9IhfkTIK3s25P/N2A3qoetRWi80AUbYQQXCMlTTIJhMniPofkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elga+NGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elga+NGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5EEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744437593;
	bh=onGYgHDb0vtzB5qYRWEYbXs2Z78csNzXpA7kuPoKisU=;
	h=To:Subject:From:Date:From;
	b=elga+NGI6OEmsL9VS/HQvwWd+yWR/zeBuFjBw9XAKGQIUxjKjdESC4hgtBxFnR8AA
	 zQkfSaxUxJ8L4mO1DCAe0q5SMLSfaA8D4jyvdY/TzUmdenrTsO2z0B1i64ur4GqX75
	 21tUwBGdQMdOW9f212YQoKh3HBbjTMVBQ93nPGzXx3Ea0sNXbJwnLKa5iwhrZKBYVg
	 6GLjLFL4udTA92/NJ7U0KUlUYQhmGt1I72EBuDmE5neM1iWG7o1eVkFbNrwwldKwCO
	 OHYBZvLlqdq/L8hXYiRmUFLZCOax+XRNxnrabXTBo4qakuGKD9Psz9k8jb0je1FA6P
	 t27kii9RY4rSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B77C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443759360.6717.3947708153261790188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae66ee6f2a899946b4337188b3eb3b3c78f2187d70aa4a3e91bd1a629097c28d
Date: Sat, 12 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744437593
