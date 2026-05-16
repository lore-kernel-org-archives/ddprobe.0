Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E537B221F1F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778935234; cv=none; b=MC4yJXXyLBcrY9J+2kp4B9L+fn1Lbr5EQSzWRy97ciFNAMlxT1RndiC1DLvpr978s1Zj0xfZM8Lr5OECp0pYKQ2bFCsvBIXxDVZIa4BKYb1CAlvOa+xaQurQzw8NwqTn8vLQ8oL+SZgccVqVf1YcEmCdKcoqsN1hMwK6Tg/XSz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778935234; c=relaxed/simple;
	bh=ergKtzT12JbbVJCraNLJzW2fH2gl9I8zD48w2+yUT4k=;
	h=To:Subject:From:Message-Id:Date; b=Lke3sZkyHCT/l+3eaM6rsUPn7uWMl3sgdprk/AU8/UfYI13iS8vQadhXP6faGJxVQ1AIHOMaqz3FZ1oy+ei7+Fn37T2WdWDra9ELqv3VDAx3n+TRnh7gVxlUKkjliFH5WOVFM9t7CAvWApdGvt9jEXa8bfc5ADk4xaEF8LH8ywM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JY+IrYQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JY+IrYQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3A9C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778935233;
	bh=ergKtzT12JbbVJCraNLJzW2fH2gl9I8zD48w2+yUT4k=;
	h=To:Subject:From:Date:From;
	b=JY+IrYQ97PsB/xUuO5+f9htYxvJOH10ITd/X0Eo97NsmmOm2zFByjZV+l84ekkxXW
	 LIPTChDQ9vtJD2WrzQUhvFrdh4sG9dJT/tDLm3o7Tlezvd5j1vbnr7aa4CpRa618XS
	 wkkLV3/oowjEYRXkMK0rC7nrYCLc9dUprr4Ledc+bUyUWCXtHc5KkQp6LhI/Jg/BLx
	 Y4jV3tCT18G1vEBv6SbhjWfoL6zUuZRSuAQvTHY8rbwXnTNk5R3p88b317tsWpT6l+
	 AqCP+MRVoqG2wpWC6Z2PALKjObQXqoUUqxY0jYf42fU+5pxQZxVe7J6yLXsKEblvqF
	 pcIPUKFC12o1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1D7CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893523369.6615.7952380391924290458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b98e65d1f119eba313c518fc3bd7ecec643cff0ee7863f7f84053d456483af
Date: Sat, 16 May 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778935233
