Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281BB2AEEB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790781636; cv=none; b=oE7dn8W5kWzTxiVp5cEbIMPaNNQvKxrjnFgDfIKGeKoRSXB6OGcMESq/NzJ/ZAAnCXKyco4TfHwl3CjNnv9XBRMMIkKezRmacp8kLr3EIjdpgL4rjWqKNuxlxxNfZT+si61cLykjYPqGgQo+86hwUpEB/Qolh0uHZnre8iHVj3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790781636; c=relaxed/simple;
	bh=cYHi5L/dCXxZeG9Wnk8HXVFAtkNrn9Ss4kBJRJSRg4U=;
	h=To:Subject:From:Message-Id:Date; b=UVENe9NNzleRG0RjrlYZp2LFw8pPKrlMvkdxP6V8qtYkktyHJrBxk3xB/lLG2K9RO5AND8igsJf4lGhlDrIllQvhwF3EtSQlOYVIZuoaKNsi9E8YboRLc/A1lbMRSADfR0jdkBzGqG5XN7y/LRRfS3YiQYHflh7DUHg/mGmaL6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IS48ge/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IS48ge/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF344C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790781633;
	bh=cYHi5L/dCXxZeG9Wnk8HXVFAtkNrn9Ss4kBJRJSRg4U=;
	h=To:Subject:From:Date:From;
	b=IS48ge/oFS2woLrgo7Ui9c2tM1WB9S6u0CbMqkQ1ix07V4C3h1Dr5zTBVpACrXWG1
	 o1q2irt7YBMm1MBIXcQqeRxaOM71NthqAYo0vEihhKkeClDTa5ITydzNX9wr6+hl7a
	 OpJUJFnX4OgtuJb1PU/2V9/bb+HO8/lsFOaouTNyJ/QjUaF9cFejbMh9lKAXwM40TG
	 FuZ7HMRDis67lXFSGo/81BvKVWpkHYTYx/R7aI9s6w96T4R+2tKzdHVXP6DDLfJyux
	 sXGEfiv0EF2avtZcWCsSB/lvSlss7eHcEg7WQvDUlweAElgF09/WIq5i3RLPFdOVzK
	 x3VAVdLqI+y/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA92ECA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078163368.13626.13472632879778982122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05f61003eeacaca29a7c43bb2be3a8c631cc007128112efd3793ce628bc394b
Date: Wed, 30 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790781633
