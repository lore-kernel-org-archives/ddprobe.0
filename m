Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3629E4A06
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750311594; cv=none; b=py8CH9cfv/suB8lHoOWdc0T96oY9EqMjMPyLJQQOv9xARva6akjChKLF5DWQ3xLPKWUPp9vanqARYyYEoypW3Kuxsbw5yntEuF1RuXN16G2iaE9MrRQX4ImrQ3lXilVz5oSnTkllrw9Cmvfa1G7ps3hAjq4tWwjbZ4pE83v3bW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750311594; c=relaxed/simple;
	bh=ecVh3MpZRCZv5LO8hipyK8JAsTJ1dvR7RBbQzhoWa3w=;
	h=To:Subject:From:Message-Id:Date; b=uBIC8Yi0SKGoti1zHqiZxx6E1sjP3NwIN+euFDd7g2HR2gZIwaehVxGJm8VDdONHUXzOFQQb76NdmNKpSfa161ibffIHzd5hXyz1i5gyOJ91p7cIUpYNOfHQbYjnZZ0Vd8KyPaSA642mDIM7g9FYP9FIMTG+wgRKXYbPNEuKKxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyBoIu5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyBoIu5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19F8C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750311593;
	bh=ecVh3MpZRCZv5LO8hipyK8JAsTJ1dvR7RBbQzhoWa3w=;
	h=To:Subject:From:Date:From;
	b=pyBoIu5YsY5aFET2s96gKMS7DM90+tR7Rw5MXqdyuQlw785fF4/JZAwE2+kMPaFQt
	 AJsR2OWKKFPVX9Mc5+/xLCn8wAFLUL9P8gErVYXmHbz9sCUKowYEV6CTX+IDp+qDF/
	 8Eo5Qw/LMWACBbimMZDKUUlb3Xzo+ax+2evyAVDzx5Unm0OcavRw0dhICrqzliDZJs
	 FOELF/cJ8iR8KCILkjTCSZE84DoOVVUaPLmnldaY8jCDe7ry11dg0HFN2dO9imhmNr
	 EpQ4aiSnbYMUOWL+1fk9ifrekeWS/ivu3kPzekEJg65/umVN4ZOZkv+Kg3pTraBNEG
	 YeZFFeBYPt5xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAE0C71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031159357.5715.11649074034408171247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646423d2a1f57dea81c995b5e779d36d5e48d88fdcdf2512044fd21a66d40bcf
Date: Thu, 19 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750311593
