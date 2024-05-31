Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9001F95E
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717131863; cv=none; b=BIw3bywRHtwMbLE6FPDK+fk7DL2XpIqCa3TBYuWHElca9xNhEEVgd4Tw/NnUhOy99vnD8YLMkYME37XQEcGZuE8QkFlwNW08Ejg+eRpCHw5Dou8250hyS4hzYnF3MaqadVmVd+GWrJkymy+UsB+JP3eOARCWqzjyLfVV7mobCIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717131863; c=relaxed/simple;
	bh=6Rw5kExr4yAVNy8gjlQbiYlQW1guRLBwRSy7flckhr4=;
	h=To:Subject:From:Message-Id:Date; b=QDA5f/T9PZy2+3ikgqSJhGUVQTpAeY56jcGy/HOr6pjTWycmRwU3S4vuQ1ysLydkxIAL/avStQL2soaFfjadibtzMjUo/sQg8Oc+CYCKSWE/5ObUv57qb0SPbGS0Gx5RQNDr7tltabQgWZftJS9WApKlUaHhYSwD/eqvIO2XWJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj9jOAfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj9jOAfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF030C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717131862;
	bh=6Rw5kExr4yAVNy8gjlQbiYlQW1guRLBwRSy7flckhr4=;
	h=To:Subject:From:Date:From;
	b=bj9jOAfeJkjrWXxoUemb6mOqsHqsiI0CeJK1lWgEuGHZVtC8SmuNw1rUcrC6HBV2N
	 ycafAn2sIBbRDEahx+dnC3OqKWa42NJv1YAzacpIf7ljziZw2x7MdiRjtRh/ro0TO1
	 S6+7SMzdDCeqk8JGjzvB0hBDq9vCgRcgx2uc1fMoqUztAtwiGmfwc2QiCacUwEM2AK
	 UX/U7WFD3LEG+7gxUuSibmF64C/O1m8NVZ7h7sk+tw3ozMXhl+73ClkT/s09I2OQ30
	 RDEcTCjgQarDNyvC1Jl+yyAXNFAUe5IGqXE583V1eLogI5aO8yD8rzLlSdBgfhwaId
	 XcGRj9YA7EpdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1A1C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171713186279.2914.7182630423554672111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799ac75612d2f22a8fff2ad3fed892c1142ffa0f7c6e3535fc1f416ba94c32dc
Date: Fri, 31 May 2024 05:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717131862
