Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 866774E56CE
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789554634; cv=none; b=YhcZdafUUebcihzo3uwIBEJhAoDTj/jBchFqwXujbTZw6zqvXEsITg+KCXgogrx/OGPvw1qljcJNGSmxTz0T4A32fg1S0NW9c69/mDW6iGn3gpCKJlWmoXhohBsGYr44+TwpqsCHE1Q94DHadHKUEacSrVUj0AP37/x6j/BNY9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789554634; c=relaxed/simple;
	bh=Laf+KmPUVkrantTriczasnY8GIIkcbwyb0oHnxrrdQk=;
	h=To:Subject:From:Message-Id:Date; b=TxLBh13DpNqhc2KSRtiy0jCW9RJyXb6AOtKqAB7TT6I1b0ZZn5hxGRWHbjK5nlvRw04IOVhqyjGDM+RzShOJmtWqH3iFoEyp4XLmKanCWJF5rt77Go1ic+6HeumV0ML9PCnrwaNKNQjeDew0OaFOKq1kEI5PeAb/yQkqd+DtqzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzHYFemS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzHYFemS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C9BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789554633;
	bh=Laf+KmPUVkrantTriczasnY8GIIkcbwyb0oHnxrrdQk=;
	h=To:Subject:From:Date:From;
	b=QzHYFemS6JPr/9fTFkoufszNwV+1yaKZWDS9oYiV3ZZqNBdoqMWatjltM9kswj037
	 TI+p+9NYjdo1QY4NW3plYzuUQ4CHD+TRGzRC2iyVTUAw0xVdd81URkzLOKbCeefwBv
	 X5C5n7lkmC2O/6He8E4Fgefi1UqV6vYXe9Uwy/OIof/Bxxcq+TjDsyMGUTJ2b0EmQA
	 z1RBSeumvPCO54GA2RqeFv8pB9hImQhMxuQj5nlH3XS/zd/FXrwADUz7euDkgE9cLx
	 zfme4xA2VZVqxXJ5+Qm5/pINzVzz46YYpmXoJbesfthjMqEqr6ta6Cy9muCKLP8EUj
	 F9X7koDX5UPew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB24DC88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955463369.11228.8206012210950831104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adacc37d27d51ae3025b709a8ff11d36a11b1610d174df9fb80abfea1c994f5b
Date: Wed, 16 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789554633
