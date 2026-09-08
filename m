Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD579524B01
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788865834; cv=none; b=Qy45UBjLJTUUSj9QtKl2Jmc7UWL8lQJMqVC9oEBtYPdIRMIGufJ/z0lKXrfLEbV2Mga+xhK06DHcW2FCB3AcwMKmSBYSnrLL65PPZoWYOE800KHm3SQEu0GGk0g8f/Aa7EEl4KAwymqvhB9JoDZ8hMchdPNwOfYwLvtQ0w4jk+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788865834; c=relaxed/simple;
	bh=ZDKINruCt/ZyHB7ujHQHVIU4IeYhSIRzCEZaqv0IBrQ=;
	h=To:Subject:From:Message-Id:Date; b=TiP4vZ0bLeiBR8BY4x9fmmA2t8JJoMvraM3MtZEbpYGWYVMeHpE3q8T43yH7kGb6TQKkSspSkikleDnkxBObElN+jkZiKsm5Pk2vs+R2EcPazupxIdvoFZ5cdKJyVIIdhiBj4+iUJ1hiOkT8UM1+fMyRNUwIprSEjnI0WanFwfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDXUcnDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDXUcnDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B7CC2BCFB
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788865833;
	bh=ZDKINruCt/ZyHB7ujHQHVIU4IeYhSIRzCEZaqv0IBrQ=;
	h=To:Subject:From:Date:From;
	b=gDXUcnDJ4iyAE8EW7ersemvWJeXzTYfPTdlYBilPLv1FeXpkm8MAxkB8tEvg5bKok
	 JktAElT7okuXwjHPKeQnI/0GgJI3oDtwZvD2fAAnyuofmbllCqiA1wjphahi9aE+WM
	 eI8QXLSjZXWWQeM7g/V/J3zrbvK3QirCrESQ5LC95HxPCjmXXo8vU4kjCmwgLwN1LE
	 5SQrIoVPkbYcGiae2kWaNtSx+SXMKVAN8fWIIT6UfEB6/C8rLrsQqn+gMutkTdPG00
	 uqmzasL79GjuNSMAqmSNgWQmEfBqrri+aGCz/kp8I/FzIs4maT11rVaXEdPxUVjQUv
	 6qJ+5fj2SGL2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE62C79FA1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886583370.9663.2360244500965890183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea5ebf55e482b3d0374744e329752a7f4821d9c198f257a6ad3bc6f6f54d1bb
Date: Tue, 08 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788865833
