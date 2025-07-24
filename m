Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3061623B612
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753394394; cv=none; b=IK3Co3t2l54SX8BOyvyS1ymmbYzf3BmNH41Xu706xEnCk6lMw33OA8Z+5rDzXPlewAmnBxF7ZCY4bGBzrdtNWG/YT51uIJfjIvfqET0eoSYnteQOb6egG6kiAArQhhAp5w/MDjh7Ol3t1Vg6DDJhT06tsmiVrsJqKlg8bypHvcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753394394; c=relaxed/simple;
	bh=6ZdJnIxUbzcWq9wmIyZldF9lMih4/iSNxSAMTmoGnW0=;
	h=To:Subject:From:Message-Id:Date; b=L/HXl0jz8cRsbdYdD13ZRyevucDInahJA8N2yQ9F6obZ7jxew+R3nxV5q+G8b0Kn9qSPqB0/QmtVrOcUEj3GVmgDQ7n98BQ/ednOXPzO47gBGFd2QQR6RsyWDtW5ymKlAPYwZPo62mDhq1oR7DTGj3ESykuYAwwl5Ky3PAFaeZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvu7abFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvu7abFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F430C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753394393;
	bh=6ZdJnIxUbzcWq9wmIyZldF9lMih4/iSNxSAMTmoGnW0=;
	h=To:Subject:From:Date:From;
	b=hvu7abFEA4ECM8/j7iVA7YGwScygx4xYkUBLYCVRDRQBvGOrFJkNT1HG7LcGJKjuu
	 UD4ba2Hzq+nQjAKOQDtczSlo0Ca/MlvKvjMxvZg2/MMPoZy8nQJSTTAt67z9nqvwAV
	 nJMc/HF3c9VXEFE+SGoCIZZBMI1RIDQxR7oeEL+3ju1PrKA7uVFZZMziATtkmGtFMh
	 uhFqZotNWEPl2ILSMqdokYJGrxQmw+Q2v9jDKIiQ7lLmDsAyhh1WSWqOrdZtG/MAH+
	 nxEqE9z/sUBpopUpFi0jhLkLkcbe5N1LY6qsxj9Xx1q5ZpDyfid4slnr6FB/buOc/I
	 6qWCYWyXROFFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90369C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339439358.14477.5456893672304358328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7687ee6c1711456585645cb113f58268d749d94a1f1c769a130b27f5e0b27b3a
Date: Thu, 24 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753394393
