Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E01146A6F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736075754; cv=none; b=XjCO598aT2bBh8Ls9DnFCQMgHHPT3cF7ib2x/uYClV70iXGzGqtC3C8LTnsJxQ0OCwHIxZIUOEEF7IU56AhVqI6xzKFeua+QLBE97sY02nETXFe2tbZ0aCF6R/IdmqiSKKhjFMzjcgXNEqznG4bpKMt7xml72QCW/eiq5xiSmQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736075754; c=relaxed/simple;
	bh=wvPfCStRRFtMIIW+IRbxjEf3PleRmTbLcZtsqYCpMjc=;
	h=To:Subject:From:Message-Id:Date; b=AZPkuifC3eaGcJvdXg3Z5hq/Xw+sj68IrNx8cPHQ/M16u6Pg9YaPZy8QjVmac+0loNzFPsxkGmsqMfR+a9+2o6ERskxljeg01KYyXiqo8riKsUJZguriNcOLx7qLC/1uLHfyxUvy2bEY8zb55E+i3WvVQeat6nBAUA5cVM0oqOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEuCvcGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEuCvcGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF91C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736075753;
	bh=wvPfCStRRFtMIIW+IRbxjEf3PleRmTbLcZtsqYCpMjc=;
	h=To:Subject:From:Date:From;
	b=FEuCvcGMWdXtAsD1shn2+WtcIS+bMGgr/JlHucu5DbQ/xfwRThv41SVSltZeygoUj
	 55UP1refQCd2uwnmZUe9JrAAO3lzzUzo02pD9dX1bToKEubExLxMf3sjlAdw4HO3wR
	 PUyTqg3ERXq9BzBtfJbCUiAVrcab/RZfs4Gjmol8QYmLJB2K9NcZektom/FdR3tyx0
	 DR+2yb9BJ9Wh+1pgFeeYUXZircbsVDbrmLcf2uzm0VISj+qYkheGPw7RUHelmr3mQO
	 RjSgBCfqAWytDcA8TlQr/f5h9/VimpIbmYmuAM0gBMTPXAWlBoAtykR1eUZis7rawD
	 L6v1uFPnDueKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DF0E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607575358.7843.1544857997853860266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775e26c5df66157e67378c041754025382aab6554f8dbc58cceda46e074a224d
Date: Sun, 05 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736075753
