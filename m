Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E37F22DF9D
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741773534; cv=none; b=dZi8xw3rxYRwKLmQBUcnWX0jZC2kMt2kDLu3PxL5tMURwrxsQJezksrHbP4dXy7F0HyLtj7a2+s1y7C0oZHXpUvTGgBCihNkaGT72oYxvvkaR5lGABudMV1PMJP6HOUyUuZCeBzYonaX4NGQMnSxmbqlDpU7XWYYMlp+85+Y00A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741773534; c=relaxed/simple;
	bh=EQyppM5ZaqhHseRrvCk+cTgWwrmZXL6UxTEsUGgzqik=;
	h=To:Subject:From:Message-Id:Date; b=YkWGI9Hl1HoD6j9ybn8O4CLkhCJ4KzkvlNHti7sa9kxqWPXfl3FGLZpNsUxjvgJHo4yBA8snHgvxjIXVxPxYRcBPElS05RC7Uf/QzrGFjtVE0s4j5WzW4ykU24F2H65zSGWedelfRNbCY8iSp/CUF9dmmgwpI15b4GbfBQB33Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfefYvGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfefYvGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A458BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741773533;
	bh=EQyppM5ZaqhHseRrvCk+cTgWwrmZXL6UxTEsUGgzqik=;
	h=To:Subject:From:Date:From;
	b=RfefYvGREs/OHpwAmGPanXMJdQkA8PAWH3VD56ABan3vOJymSgXWfWNMvEu9gF1cf
	 3sBhbCbdReTjl7HZCBTzXVdoFpeUyo74kNcMpgJOpKfMXBwWEJB6Wf0gdjdMTXcNnd
	 OXVCvjKqZH1pm23e2OBVd7/SkRp3y8jq41udbnufLX3dsPjLCWihhwa9I9GQNAJnKG
	 VUdYRlXsXi+fQbiOPbWbUGXexa5PZ8ZM+sgGV4lT8XImzhg5Wxg4ovZ934f7PdXwI6
	 1udMKu4hRlnZmU1ZOIJSi2hcziVbfWtI7CJnCGAi1RixPladR6fSjpzBbe5ytCDmy+
	 tYiLxV7230kAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94816C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177353358.3911.11349972653802636823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1bf0564bf633a1c5c9db7a7654b6d3370ea76986f02bab14ab9bb47582e2100
Date: Wed, 12 Mar 2025 09:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741773533
