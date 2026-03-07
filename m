Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2C214D29B
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772857494; cv=none; b=hSVvnswXjYtAEj8fh4PndI3ss71fXfTbJsc/CeZOi5qm73nbu9y3Ahj+CzErAVi2R8/ze0dukpgRj5wY15U+bMOvMJ0RouwYS4bKECVwFu3kdvqW/GVdB/IHyYV+tdbV1W360P7WkE0bJ20BajS6FfhMCWNYGxTijTnVzVgUoXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772857494; c=relaxed/simple;
	bh=73j5tJxPbUd3FHr4+7OywiRkUb/yhqRgkNmxLcpFsfI=;
	h=To:Subject:From:Message-Id:Date; b=mytk594/HXVvNoya8tZyg94PaBRfdKvpdZXhsiAjYspeyW7GUctuqgVGT5ge72lJ3weZkiK7eLEpjk01ZciKp26N/tfyABt771cGkcXrpMBwiJkuGsk/TY8WpEuJgSKusSbQ1NiThK6g2cGlzj3sDeK1wXAbKafs14CgGorc1xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sB0walne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sB0walne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84F3C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772857493;
	bh=73j5tJxPbUd3FHr4+7OywiRkUb/yhqRgkNmxLcpFsfI=;
	h=To:Subject:From:Date:From;
	b=sB0walne9ga4/IrQZizxcXq7Yv1XDMdQFosI8IugBX4MK7g1a3yDvC/cendY7GKx1
	 5BRmSITmGquInWS6CAh6pnWQHL4KdY40wPKMVJPnBuAqN15fGQiZxg5s672dCIurEF
	 BywKNlLUPkbrlXHXggGttl1tH6ZzaOxpWZLyhDpcJJrsvX0JYmPbpRae3IbMJ1hcYL
	 sOf9FESSlzovSpPpHfmL6hfG25EoDWO5wBvnDR556TPA9Vn0HQas1V0u+VtkXBP0dC
	 pqR+MomArjrynojq+71v/8jQhKO3abhC41FPwE6pZxV7QMAbAyY0r0WKKnSK3vHTFi
	 In2KGUcOExokw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0779FC9EC0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285749363.4789.9402321693678293091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f2cffc830b48a87ff2174dce91796cfb046314d9b4a704fb87f65cd772971aa
Date: Sat, 07 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772857493
