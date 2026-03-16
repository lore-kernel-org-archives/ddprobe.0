Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022C52749E6
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773659094; cv=none; b=LTUXxPgg0Zoe8XcOTr7VPxwiwTevcR5Re/yPjIDBTMsPLrexYgGqwlcDcko1KxSPatimVvsi9uSXSNOA+mIVNyGKYiNEsP4+d8CdYOMMZULRBHNRoJYMCEKXwxZuhMQsehfK+mZ+XY1VqcIkXGWnVEMw6WK+x4i2uphr6bfn75Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773659094; c=relaxed/simple;
	bh=CwvBpeW2mYqLowrwKJI76yNft5YSEzEOIHeN2h39J8o=;
	h=To:Subject:From:Message-Id:Date; b=q5V49v9AqUl+yMjvX3pePUCclu7irBCyhpL+af5v8OwQpxSID7KLcY0GK93bLJrKfXhuqraqGzJNrk4WJsfRsRIy+Hq29uPXXZ1BN+xNkquaG88w1FkIoyNeLHNwoDkwHGjZjEndjlf1aEXOS3vw5YAVzNx8wask7zFNIghncrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIOkmlmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIOkmlmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F126C19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773659093;
	bh=CwvBpeW2mYqLowrwKJI76yNft5YSEzEOIHeN2h39J8o=;
	h=To:Subject:From:Date:From;
	b=XIOkmlmIoo4q1sSSPMhB4137vEft2+skVLpcO6MJrfAzzLXVQu0s9hsyjCDmeLsdi
	 /Q18ABEAD9CEni1nx/wU0a7TZx+pR+ClsdVFk2tLuBKys7LWj/hSAgj0o3o8+kKIUV
	 qhIW9LfVVTUU5ABWi5r2eUkAScVEJPRQT2hF2oAXpHI4sQjYkcqYW/2sfENVPm81ck
	 +lJ02VAxHxKqV7vNIrosRwXiFeE8H7F34dYb+/qijnicY6bXZjL+sAIz9cOmuqGudX
	 2uqzCQTMW3JmNuTQlY9JnHoR3NHLHLjYG5/692HkIffYTM7wIy3XRXiMpLfvPtupPw
	 nc5C/Iq6WfkFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F86CF46445
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365909357.26233.348964004895078593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10763fa10f4ad05852ed6eb5cfb88de9235efabf2cc8fe0dd4cd926485bfe151
Date: Mon, 16 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773659093
