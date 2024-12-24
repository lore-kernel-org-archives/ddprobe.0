Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162721465B4
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735070754; cv=none; b=rHCTcDGXo8Oc7RTo/mzLh5CCV5IHGjLoDbprR7vgZchRS1ZglviBQH3UYRkppRUjb+JjS9t809UEqKPOpcR9/mBXvLyiTN/WIuIJImRHUy/jHJGszqIARYjROVAcZZpAOu2h/4UGhR95TIbgG0sHj7cz8GQjHeN/yIvlT1To1Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735070754; c=relaxed/simple;
	bh=61OU46N80euoyIaXz3tL3ZLTqGDA+jNDiKdqj5uYp1I=;
	h=To:Subject:From:Message-Id:Date; b=Hed11C7n5R/k0LclH89rKrMFyX06nHSQFUG0prOT4DM8X3kkNp0kLSOSsN7fp2aSeD3etJI9p71725BCgFspWQY0tz+TGnCqad1cxXv78z47N0Ewqcp2Z1s+UmVcQRb3U7WzjEXYKjUOTTg9z2xHKo2f8dgEMhrVYSKL3Y5UzSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcrbrQy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcrbrQy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ECBC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735070753;
	bh=61OU46N80euoyIaXz3tL3ZLTqGDA+jNDiKdqj5uYp1I=;
	h=To:Subject:From:Date:From;
	b=dcrbrQy+63MPDMoQ/kxfwQGuNZ+SyXMOoK4/4dZed0AMPaMCvVdF/pmxWLOrkTCRd
	 LqCYX2YB1S0KBnOTWaE6vIWBryqnWUXs+6O2+8XUaFfeyFwljAF+/Jq+Bg/jOiX2yt
	 MgP46o5bI6PqW0gr5t9/j6iDH8SY/4hf99F931A7nUYEAW/dDOTLfibqAqTz94MUvp
	 1NGTNOA4Nt533qv70tv88pWAGON29dvP06fv6a7261aL+3FmAgAPNHH+D2ZU4wuIST
	 DHQspq8BRiW9igxUs/PQ0WspXnY3CXriPvp8aiBj+vy3UgNCUx4djcq7wB3vCsc+TM
	 QSXXXhBWxY9ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DBCE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173507075358.1960.11145902599325005360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9cc21d052e33389d2de8210476e144edaf19f5d7285791ec28da1e9c6ddb5c
Date: Tue, 24 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735070753
