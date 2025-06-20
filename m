Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2161F210FB
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750462194; cv=none; b=fWB5E01TZ837qadh3FtVus4WRXzFSJ4nex+KyUhw/8tQLxNgfBpHC1TreqDCJAKqakonOVoxa4XFEvJ/zYoB4WUkiF8QhM5Eavuktb5S+6hVhXDTLUXy9XPbQ9nwedlcytUbVsTxDDRuMa89SN4cxbBhXK6AjHNuwdmZ+lh4dPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750462194; c=relaxed/simple;
	bh=wrAA10ku4wdk1jcUw6strkMeGNSxQuqyQlPJ5fWutD4=;
	h=To:Subject:From:Message-Id:Date; b=dm52BLrpowoYPybyrnars3/9bA0Wby6rfwOuacbYn1oMKn9+blbfpAtkM0kc8Su5CHj+ij5I+zDzyRkzWqAuijHMSJ2dmamhiXe6hDxaQmnBxkarQZivkplBaU0mh/vACgDHosV5iSo/tkK1ZbFaP2bXd6Fuih0GEkJgGr+KAqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuBQO7qf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuBQO7qf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21BDC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750462193;
	bh=wrAA10ku4wdk1jcUw6strkMeGNSxQuqyQlPJ5fWutD4=;
	h=To:Subject:From:Date:From;
	b=ZuBQO7qf8y/fkyulpFyYRCcnnnnuiUk06rDXROSArJsAkBfj6g7WuGwzFhavnAB4I
	 SpGCBG3w1f5caN0u78wOYw3nfjl/7ASwwAQCCxYO8EGOF67C4oJh1CBsORzWe962KU
	 m2uXo38Q5zGn35dZ27YwXcwPvcyQ0SSV5ynRHh35XRlrxS1fMXIF1m4/e8bOmtRHR7
	 iAed/lOp5nUqK4jbC52eY66tsPLVeYEwK9XLaAtXuZoY3pHH8hVuoUQR6ZVHmf2ahF
	 CDioolGGrst96cModZLdYwleK49oxKILSf4v2W9p6KxdrFX9njq7R7WYXe/Y50Fdk1
	 kWe5/snayh35Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD0C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046219357.18063.15424386191157085738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f97e01a1f66aa02df21bdc4c15310f766ad25d792a2a096e13aa455f40156d0
Date: Fri, 20 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750462193
