Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C3613A265
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730040954; cv=none; b=MmWXVG0Dj7bfMdglPqSOmnZIizFNKPz98VapiyXa4WgGOElRRkUNh3Nu/z4rHqYBsFhdt4pcBJji9I73le+SdPq2Bnr7va83DhuZYJk2IIGyRyEg5KeEzSce93uuJWIaMiSh+SuIeVZiRLsiwL/PW+5HY2pjjwzR6jA9zucbFJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730040954; c=relaxed/simple;
	bh=rAw4xti2HFg/mqJdFLkUI2A02aJsjomj7TwkTZb8YWc=;
	h=To:Subject:From:Message-Id:Date; b=Y9QhkqJ2AjBfynKlaZIy0zVL+xPAUBrzPRUbjBtmwF0SxSOGMXARO6sG6CDnxGVrLJFJL00UnmOPSOF5YDQkMS/gr1pGISJ9m6SwPr6KhrPH52Xo1u7lRnZPEDWfMCc7O/AQDrnhzB1WOaqJ9xe1qzeZqWVmLOzX9MzBIP8b78o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsQN48x/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsQN48x/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B896DC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730040953;
	bh=rAw4xti2HFg/mqJdFLkUI2A02aJsjomj7TwkTZb8YWc=;
	h=To:Subject:From:Date:From;
	b=BsQN48x/gIhrbkfKsjbiYWyLh2ONWR8R8jxgXT8474jDFQh/TZmG6rdI6kP6DuIdw
	 /N+StkEAxZ94L792OaoVjTOgighGjN48DoZnOxdsdTnxYRNEakFAk5sebRcYfYDxK6
	 tp5rlkfgjMsJ2mRUFvM13hNWOW+5XPBJOce1fs8YjDY3eCJmHTgcMvmzpUcprjoFDx
	 xxQqIVHShduq8+n/FifgBKh/l/R0y/eahqh8aqgxWQObml38vOx+J8GtIpePeLB8tp
	 eFEnIKlrkXP7DDMegbCvAFm3QKvnmEareHa9dBP1wtgrrTqjCkmqtVSkHekPRFr+JP
	 F5VQfA8ZwW7+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0215D13569
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173004095359.6576.8020287645997196293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a673ff75c40dc256adbf5a3e8119ae9e778bbc300af479d98e8d0c5c206065
Date: Sun, 27 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730040953
