Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646054F7CA4
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790178634; cv=none; b=EOqDmFSY3UfCdE4d34/e7JtHksQQ7+gzTZyn8z+gUU5X2Ru9cm3XHENlMcadFS+xivk7CO4OILdu6oIdzZWQgJiuEl6BsSOnZkYS1W0LGPO+A/1CNnBApDJEOXJmkgI1JoOr2Ry5FV1iWOhl0X1v1PPxgWWJVvA6E8Gw6z3TlBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790178634; c=relaxed/simple;
	bh=bhimhuG6ReDKIQycPIGYWGbcl9t46DKmUl6Ca4ITHrM=;
	h=To:Subject:From:Message-Id:Date; b=n7tAfqR3LiQ+OhdoV7Jqle4QJHM0KDBwRPKgTeqy+xb8HnbxdtEAT/ls4VImKRZhypkcR8DXyk9AWAok8uJEnRojIF8vgrwJ6ENhtAeXWDCwkA1vDmdUpjIbGBXmohqkuIW0pt90mo9gCSzbWO0DScBCsZUIdNG60WCzxmOawU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqQBd57G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqQBd57G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E63BCC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790178633;
	bh=bhimhuG6ReDKIQycPIGYWGbcl9t46DKmUl6Ca4ITHrM=;
	h=To:Subject:From:Date:From;
	b=hqQBd57GNl2qcIYFUBr4LvD2+xKC/QA4JDV36oSR6tXDXfAN7JchAGbRHvupW7VtE
	 UnsMN02c/RdHelG1JO8JbpmWuaNc7XLPJS8t2OSSAt+CWWC5IzMmtisuLnyATxC7vk
	 IfpS5q/ETEWpwHzdtqNMI2nKmlqtGhkQQ9GcZy4z8+Jgx/Mx6eB7uyvpZWPUmUkuo3
	 EU3gxl7Hm44pNQyjKv8WGTZcxIyNuDKHJeY9KdouKu023MDXqTFRzZj0B7xq+1teQ5
	 8cxA6ZKdtMfDPZ8ylUUtXJ9dzRux5WDb8MRu2e4zJa7YF/b5J0DvXzMuoUTwL9hC/u
	 rLT4Ll6ZhbcRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF389C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017863376.13847.16548233810350856839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af3489cc46b5c2c72326ab60307a0db11a930e86588c577813e3390954294aeb
Date: Wed, 23 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790178633
