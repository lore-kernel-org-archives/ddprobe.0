Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E601748A
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725172554; cv=none; b=IlkUd9rGokcBpWWDFvuZzRpk6Nkc46JeDwKL62CDgwzOowYzREBmaLC/E/iHfMbsBVjLB2vajGWwczX+d8fzlj9j1UKeKYpBbF3TDHtrQRNrmdwfx4P9JOGrL4a/PAI0XT43QsJbLGYmn3m0c2p7Y2sOLbPsEOZIgFzIG8rPYco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725172554; c=relaxed/simple;
	bh=/DDg8jv8IW/gMaWHaPcf9NASVCBMY5+R3eIJA6LBVS8=;
	h=To:Subject:From:Message-Id:Date; b=eDVdjwC9um3BRzkD5vBYLdSmk+ohiOwMwNeQN5FZlMRTFc1ovQ20fD4EX0h0NmPoIyQBfvub+TprXBsL5ATd4fEV+AI4F0cWy8E26cFIi6mcRP0QJNETQmHCceq7eMj8LileAc+Dvvk3+q7aobvK2Y1ibKU0igLw1N+eYJsVTA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXRUhci0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXRUhci0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCE0C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725172553;
	bh=/DDg8jv8IW/gMaWHaPcf9NASVCBMY5+R3eIJA6LBVS8=;
	h=To:Subject:From:Date:From;
	b=bXRUhci07i4iXnTUr/HQLe9+yF2GmXhCJ57dRatZqsLrVEhISxC5iwwQvhHOTqMwZ
	 UQ3m95hi0Mehby1/itOFQN2IzbbkJpWdThEOj7dZ5IaFCLhDsAbmIl5MMEAAKh59lc
	 +9+kDNTc3FLEKX8gFqfvjMnh/COqRA4NTlG9D/dEyKIu6mR2OkED0NDh29SEi+1p9A
	 21fXlZ5gO/JytcjN/7OQRxTwp7bsQong84fhmY4+hMrSiKkrIHGt3BF1ax4dwJCqH6
	 dqQPJ91wscMzQxUf9+hfZv+gNHkUahzmWBjAA9w2tK54u87KHQG8zgpexlDzS7DBt6
	 0yo36hC6O7Fsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A67EC54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172517255360.10968.16569014396104779634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e28a3bd3e78a8c8824bed987bec7be634290b999254569489e3faa87e18012d
Date: Sun, 01 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725172553
