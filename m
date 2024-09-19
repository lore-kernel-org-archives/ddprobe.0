Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4D91B29DC
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726783554; cv=none; b=qpe8J/8239Mpe7/w5ZdaE8H13KWHTedCVYtXAhteCqUbk5GYLQfvGfc2CuLD39ALQfIagOaxnvAq2/qPsSoczTfZxnIBCPO1uQYe+xO8/w57tZ7gG97k+PhJQl8/SKWxcbZUzWnkjarg5qzlSpP3sqcZwOZcR6IQsYt0D9XzENc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726783554; c=relaxed/simple;
	bh=IpzBNqpwXwP9CuTYNWy9LBmEoAdQuEZdNs70LKhfaQM=;
	h=To:Subject:From:Message-Id:Date; b=fHPEcJIZzXz03m6fIdsHWpmWg4TTTZtfYady0ZAwz0wLVrY9NF9pBPmapfwsdDOa7gWvuu8SfbQVf7T+1I+51MbXNxgPLvo3pShGber0mwIEVuL0LskJDXLNWIHidYpwY9N65BsVj7/btKkzG5PiiVqpRzKpm/8G6bKgtuWMH5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hloROsyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hloROsyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A681FC4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726783553;
	bh=IpzBNqpwXwP9CuTYNWy9LBmEoAdQuEZdNs70LKhfaQM=;
	h=To:Subject:From:Date:From;
	b=hloROsyVKOHE+Aq6LRP+W8zY1frAmqx3q4Oyye2p3XhRAurEueWZCH15fhbGDt4U7
	 XOM+eAGbL9ioiv+/QWo+6stsb4pDwKdz9EHDFQ59Xe9xhTOcIZT5CbqDQUjIb6Yi90
	 jqIWSE1laE6BcHrwHtIHIJXwI5GHfep5/REOfzZ0FQKgeyv3Y0g8XokPnaKors5Ovh
	 aquMQyR/lqR9u+6fhqN30whj6r4Y2r6kxLVPtz8AsbsE8i6vtE7Yefu8upBX15Xl54
	 kPGgIAV3A27KmcC1kEseIw5NJoalGc0UalTy+ULcM5eXYesT4G0hBJbQWF6h/oaO1p
	 wBBY7U8kBsxOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93143CF3973
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172678355359.27009.868949710415723666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 015f30f27ffb34fbd29675f111676effad46b0736af38f565533bcba774473b5
Date: Thu, 19 Sep 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726783553
