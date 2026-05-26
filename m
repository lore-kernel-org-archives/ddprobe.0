Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD8F366542
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779811954; cv=none; b=th5DCmescTX0Q1pxpJ1YLUvKLtNgAWsLg47NkMQzqH3SnaV0t9pNiENwA4VAV7Hm8oy8CYDtFHG1WY8jeX5ddffjiYJdBZdRSJgW0RjtLp1gOTLdOEYI3CaWDA0Dsgit7ZmQhRpE8fLK8qpZoTDoRhv8OPgGKdcOuLigq6cgsTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779811954; c=relaxed/simple;
	bh=0yEVRpBXrzGCdOFqXUJ1xDwRiKHBiBJYIWdsUOQD92U=;
	h=To:Subject:From:Message-Id:Date; b=eGd8QVAY3LEBJsbwk0iFNSV2zR+Yw7bYERFLjnKbFpCPsW86xsjyj0ecfgftN9vNJmXUGy7jlpGpDoqYz8wvq3hhtditS0qmcWL7P8ufx5bGg9/jkoSlJIuiCBzVAMqbLngmtix8sjBRj8OBNgX3KcNthDS7JtoT2/hY8oO6k/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umgFs8CZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umgFs8CZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E80C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779811953;
	bh=0yEVRpBXrzGCdOFqXUJ1xDwRiKHBiBJYIWdsUOQD92U=;
	h=To:Subject:From:Date:From;
	b=umgFs8CZM3gNklAGwn5iclru0rje3akueZv/wSH6Ri5eXjHCxioeitapaGyzL0wt9
	 nDr2tkelhIHXhoOzE9GAS8mbduTdmrRN0QMGu2R47iTGUHDb9+95ZGbzer8mjO7s1J
	 3O2py8XkVOGQ4QUzPah0Q5bS4fSqo3gd7sqmTowxIAu+DIgdJjHfL9PVHoO/RCb0Oy
	 /sfGq/vhu10Kw/U3AHTfp1634DWLHjdJP1pe7akQe7ZhvO13OajQZyBTOK5mYWZ1/Z
	 fzcow2+EwaFZhJgY2MrxOD87hXMEwC/oQCMr+wMtkwlEELKqzTmVwgD+WzQWC++o21
	 ksgnfHRl/+Ydg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75BCCD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981195373.31458.1406609429707363126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a44b17ae69ae0c76fc3b7f34beca6089426766c763457cacbebd429de1ee0c9
Date: Tue, 26 May 2026 16:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779811953
