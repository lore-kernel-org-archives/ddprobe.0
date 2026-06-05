Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373B812C534
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780645474; cv=none; b=Nu6Y+XWUTLj3yp1lvWczcicEPXLdFZwom//RYIeEQw9nSlUcw6TbRnc4zPyKjcktalNcS9KEFJkCLUd47j0XvhJMsUg9/0bPuXt2Uw+IQFL4CRhR0q8Gfnp5X8nu6F21zRlibK1vyztsFKeF+oX2DrRQjt4/WwywXM6jjCwCBOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780645474; c=relaxed/simple;
	bh=eysltmoJ6VeyCOJTjSTc2Ydyohu57o25Yx3PzNZbr4Y=;
	h=To:Subject:From:Message-Id:Date; b=mcX4affwOo/M9AP2gCqdGnV5gj/Lbek+thIFZZXZCvL2q3FBF85OAeq9tWeAeBt8/FDW8ckTrO9DkBPNKEqwqy9xqtBFmOmI8pV8eRNerwLt8e7rIgQPkNpP1+ktxkLEJfhnJxzc0g1A0yukePvHhaBUWSDL92iGYh3DCHsk1Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJigbiOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJigbiOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56C2C2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780645473;
	bh=eysltmoJ6VeyCOJTjSTc2Ydyohu57o25Yx3PzNZbr4Y=;
	h=To:Subject:From:Date:From;
	b=iJigbiOV/ZNBNz8Bse1s3QwUDzGosWe1k0rNZ/b+oLNaCQ3g9u2PBteZ3JdobFpC6
	 jXwXZaf0Ik0kb6ptHS6SDkcFSOaKilC8IQKh0FdgD8e8BkfIUcNx+O2CyAo5+0BuVI
	 AD7y7CRkQd2l6M2kADHy+3SIrRoV6CmPLX9dVbKqv6dtn+C8Na4M9Ik9ddfRrUYrSL
	 7yk/3giZTBM2VxfV+dSQkY0Ae+jhEEnMaUASMebMkT9hm9GmQ/jUUC1BEaumYthV54
	 r4fdtX5HBLlJs4dBLEnRezgb8BF2GhriYtk/vQpx4wg9gYtXyAjkcxBPPsIZRhC4Dc
	 q6efNQc1ByjRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBCECD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064547368.2841.7334014788204844663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9c70da2a72b870bb4898a3163d892f31f2dc59a9cdf15cf9e634431a2027e3
Date: Fri, 05 Jun 2026 07:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780645473
