Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB273A1E94
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767546234; cv=none; b=qz9gIcVSBt6ol2AK9uTYkQROY+O2vIX0E+N5tZASGL4GK/mXkFXlaJg/8pIcC1XjcBWqS0826ILi2T5okTp93/OcYMNi8YzWgVrXxziL8w2vdKwhSeDi3YTVIA4tEMNMvFpFThcIHo93m0ikeyg4TpiHcktkRvg1E0Oy3aNBy+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767546234; c=relaxed/simple;
	bh=hXwIuIcxWEu5+sQlfNNvg3FWvtH5ukbPy8LOeBTXVp0=;
	h=To:Subject:From:Message-Id:Date; b=FgeGcBe+ASlKprwP8WNgPkvbgGq37r7wxrtckMp0pe+rvi/hqfkCmtbJ332rsyJOpTPwpmvu8ifbbox9qqkmyaEWL7z+x5ZVdY/2+O0ZV5JF0zyPVlNQw3Vlyw2H+IzuZDyyo5zKYtN6r5pr9vQCbHv5g9lQgJlqbl3PV/I16OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCGg4OGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCGg4OGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A644EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767546233;
	bh=hXwIuIcxWEu5+sQlfNNvg3FWvtH5ukbPy8LOeBTXVp0=;
	h=To:Subject:From:Date:From;
	b=YCGg4OGPN1JoqbmIXl0nBNI6ThF+MR6zVr9/BVARZJpHjS/WWWVbMLZ+0FaoEDsT/
	 5YBlq/nxsvNErA3GB3tal/E9r2LVqhJ2bwW7LY1pi6i4FXCGrAO13fUqXfYZNefhYd
	 +feBIYUPnavQo1XD5MqVmYXoNgYnymLoRpT+tc2bCy33rokqZ5eyMVfcPFQXYH/v85
	 jEGeyyywmEWMI47FTOF2ee6AH7XQ59UV66H7wVA6O0ysOxcx1vCjQGsLfqzM4nr6DZ
	 5Gkr8hc1nbcBaiGpnyPxaBQDS8FWarALSwic8wrAv0VstIA978lb4RY1j6MH5VWpJL
	 cuAdfBaEr8hog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945A3C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754623357.2422.14158310969655092203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a9843d7a995d6494a582e2cbcc0468d83be53bd3e0084cb2bd27c3f9f386dc
Date: Sun, 04 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767546233
