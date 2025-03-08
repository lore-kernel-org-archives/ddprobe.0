Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4893617A2EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741438734; cv=none; b=VnfJV/updyT1+JtzpTdiEEQsM6sYme+mX0sXx8yUfcjMhsFjk5qDs7veC3ak/cgYgV2KR6k9/HSG5efUTMXk+ej4Xzq/K5YiZi5588/LKN1CX0qigTmKQAi0G/VX++EGjogBWg9sv+m2CeTtkF4O7Fm1UjLwE0CVtvrE5dHFQv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741438734; c=relaxed/simple;
	bh=yOOYwjHaN7zvBx6uSi6+kduxJ4OmsKrbohPasbIvUbQ=;
	h=To:Subject:From:Message-Id:Date; b=PUQbfpbayNCvC3WDlOm3aVtOL1E3jwAL6jX2Ce9WM3MVOOFnstBp/P8yrOnF7ku0BoszOoRzvq1nJbxkVapL0IU8p2r522bebpQqTAFyj/POq9Eu/AVetAlzUC00/+3HKJetKLcaHf4/Fj7+TElh1pHxudjsbnl2WErem+w3tkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnEk/snP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnEk/snP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02A2C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741438733;
	bh=yOOYwjHaN7zvBx6uSi6+kduxJ4OmsKrbohPasbIvUbQ=;
	h=To:Subject:From:Date:From;
	b=tnEk/snPqNC87qIyRHS1BzATKIVy9AHDJ6XLNs3n1lWOupeGTlAWsYIDTgLa4qV/d
	 YMxNM+buibtCSgGp1mD0KfGyq2EZ1IYMsYGIdahUb7GEpNOQjlWhmYVTTEGh+vIAM8
	 pmZ/S4fwoyr3sh1MIoI3Ru8vESYhK+d+NHbrJKlRqp4M0yA3XOQ4gnAx2vzICE+UQr
	 Tyb7dRG8lVhUtS9sqDV/5OzheppktXeuDJyIgqf/k6s5c7B+tELC7ERtetTWJ+erbi
	 jVjzQCGGZhwudnuuYVr+KDIDOw/vhi5F7isB481hgc1nEKN3bQh63pjJL5QdZcKKgu
	 bAS5JqU2x9y0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9641BC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174143873359.5911.14278618098867304429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72773d6d2adb82e80016e3b064873da6629adbe096a98841c7883c9abf4bc7ae
Date: Sat, 08 Mar 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741438733
