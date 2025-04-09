Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E1325E816
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744211994; cv=none; b=JUdyPBto3IsSWZ5hX9j6GEdzGc/CMqE3qiWZmhMkVCH2GzvOw57zEjwEanJlSLYX/0HfOlvYbXqVD6cPhzelJh9DyJV/NN5s18dPMv4UDMrf/gUHseWW7Oy+/ecPd3Xl6J2n8DMcKE4DkEbAsb9oRETUsSn4krHD5nmj8OZkZD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744211994; c=relaxed/simple;
	bh=8cE9IRFMNoThiey8/Se/IXoqWRRYx9yi/TFS5ECllh8=;
	h=To:Subject:From:Message-Id:Date; b=eBT+fSStxfrw2fbzylzvIXYKhEi4ileQfEZZftDCcZE+sPUQ4s0DnI3V0AYXyuEifKcTOgj7KO0Srs+4vS36ahHzm4gG9lTpMU7aFW4O4/MTiYMB3UlEPHsyCETkM4tnktlpFIYVJQSVzeddzIM/zVHatn57onILW///s+D4prE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvmtOuJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvmtOuJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DC2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744211993;
	bh=8cE9IRFMNoThiey8/Se/IXoqWRRYx9yi/TFS5ECllh8=;
	h=To:Subject:From:Date:From;
	b=lvmtOuJ5Rt2lo5FOMnJhaUWzEJNU7vviaa6+0PjNsoc+b0/rHGdTCjgvfiyaQf2li
	 5BOdAelKcPqFOp3BWqKblXM1yr38B1M4mklNotEYXUQBqxSxpaRKjYdCRHxU1G3IV/
	 x8rSZe9xNEy45Rrld4UO36v7KzSvS19lHY54xYUWxmCDnZ1YnPa2o/1PfzqQpE/qpJ
	 GXVim53ZWqV4rwubFlPn8Omk4GlxnDF8qQKcz+4+Ezh6WK/rCufdH7wqFRzp/e0EAt
	 KLABlCD+ZsKxwqc+ssC1GG8hjjv39JC1CYVBdsJoLOkKTPLPhthFPxp6inEz9YPn4H
	 0v24j5rIvA1mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5391C369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421199366.13974.16177097284898583843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac13660bcc0d2cb7bc7a2eb9a0a4959666c12b6514077ebcdc4da82019f17afb
Date: Wed, 09 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744211993
