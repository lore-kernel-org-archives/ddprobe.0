Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A942D94BB
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761425394; cv=none; b=Zx+wPS6EU6elM5axKVk9ui4TBr7fK9Iee+vdR9d8C8AZ2oFw5igfFGxHA9hFr/3ehY/S0IQkEKo1J7xkJtapl7VmvzP+cMO76vcxup3OFil5+koC6pxPDFfCsCVB9blGOy5oI50MUq6L5q4fj5CsfAOvqIlfIBMlbyA6gcm/xDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761425394; c=relaxed/simple;
	bh=ph3kHeomgI2ugeEvGK86CvSfQkBvoFEuuRGatM1Q9KM=;
	h=To:Subject:From:Message-Id:Date; b=gkvsC48GWW1EqaPXuXXroe6woUbJK4hUSkxmFeNqb27HSbY76b4VTIH95t8HRzrHrmXnKYm36SSntTMhfmFOlkIwjwabOz5/QLMYmsiBhdCOiU0BdlSHyjW6s9g/n5qfY6chCWXjWd4mdwTenWoY8r0r2ZD2DcizSPKQGoW+aT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6TkAyja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6TkAyja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D69C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761425393;
	bh=ph3kHeomgI2ugeEvGK86CvSfQkBvoFEuuRGatM1Q9KM=;
	h=To:Subject:From:Date:From;
	b=j6TkAyjaNXTiUDjay0G8JiuS6bPdcgk0ITu63oEc3ntoprJaK2/zViqPkGlDwcDGt
	 9AGuQyCfSU7mlLB9sZNr3OmwrrrX9M0arU7tQEPX1cnODqlNK28Um00Ux/HdhMD6NF
	 oJCTpXqpkOP7dJZ0ZlXR3TKMw6AjAe2cO7dmHIVg1punxF3amKw4ouZMFJUwINZU49
	 Av7Zi0N4QBdKPeEg8ljt4ffEAS/reGoc6iCAevpgKCuBQ0+pdFr3xI+osCKD06Y/D4
	 kckqS4el3HHbd0YbjfnGMo3OIbrP2tVPx6DKzXkMFV81WRa/fvuC/r21+JWGtjBt6c
	 aC16M1ztzL1bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900CACCF9E9
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142539358.25222.14750260386208612448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278c019bb3b4fe982c859baebb30aea6901955f5f74b8f846b5a0971ffbb16a9
Date: Sat, 25 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761425393
