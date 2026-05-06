Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284343090C5
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778100454; cv=none; b=bnTj7AjCWqplxembV4arOrCPv3bLKkPERSxVH3ED6HrfV8WzHNkp+1enxAB3RQMMAxsTB3C7c7Q6zD5WGKibpiOMSDyi2uD7txx8XbaBaVVqSvLRcVPXCZHDMHERfBxRec58RbeqNZJ2Z1k5y0FMdaFg+B2GigS0yJ9EmSXdD54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778100454; c=relaxed/simple;
	bh=HxUOThtQmNQz/2wlmXalb04y0k3qiUXcc4lXdZyF+7U=;
	h=To:Subject:From:Message-Id:Date; b=AL1ijnXJIYdkAwDxmFT891lWYfr5t03YNc10d6xIHiALRfsECJzkMvEoOA3NrjZDn1OFSypWMkWD0mmhW8wIxybC0kBViM61sSmU0I8oi0YmM6SgJsU6G1CFjFexTJTdeqwgjotDguw3HXx6zbnvPS/u7cyEVh7MdPHutmFKev8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeJNnNfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeJNnNfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA392C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778100453;
	bh=HxUOThtQmNQz/2wlmXalb04y0k3qiUXcc4lXdZyF+7U=;
	h=To:Subject:From:Date:From;
	b=qeJNnNfuO0O35liFfCZjp/Z82IaCPWqGfBIU9d/ICfakkpbVgTfVcvpkWbA8qi5rW
	 F02IH82IOVy28onelTgl/oSDpPEhb024SWCW2HF2lant6gMgFD8ODELQFMzbx6ITLF
	 OrYgY4+fxnC2KMvKOl+/pXIH+BSIyDdMacY2oq3yroov9WrwXAXmJIAhp9qZstN+yw
	 qmxEOd1tvJgNhC4HncSt5rioxsQsSjDotZgPtqYAn5CX9xZo2QGQGEJ3cM7JlFFLj1
	 TlN2XoONsXs9LNiOTJyeiQK8VZNUT5mU5tuySSRKkkEQtFaQCoRbovA0qg9yTqJpwQ
	 Uj8TlBU05IunA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE5DCD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810045369.17568.17187026249397517655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66ca8448afd78626b84f1bf1a32e69e64e9fa5158df333640f5f7f7b2eea439
Date: Wed, 06 May 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778100453
