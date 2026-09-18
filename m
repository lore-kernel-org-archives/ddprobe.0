Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9204F2EEE9E
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789693234; cv=none; b=SNARqBeRJUcvCt0nZZSQFnR5OB4nBI7CgACawo3mau7oTryTUqSLpGcn2Ut4RUhVswL69UZENXsXwx81Y9vXPvf3DRGqTDWdAYXIQKysdi4aYrTBVoD9uIZNg8xMmiYoz/bpNXCCl78wHgoL/Xw9L3gca9sLxX9Fv0PMk7C2wBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789693234; c=relaxed/simple;
	bh=16jGygfZ3EHW5P/1+/L3bTQjH36ygwEdi+3CNC5gfGs=;
	h=To:Subject:From:Message-Id:Date; b=pnI8YiP76IJlt1oo8C/rosdJLFVLurfAgmMH6b6xbh7+rqssxvmDUnM7KstN7+dKjmKZi1Gel+sSEraANuuwLDma+3HvQoY+U7FxVr7cTDe5NAy7xEfRetHRq8BqjAwLgmHh3DgeJjIP5M+iC/mbqbMBXT4q0z07eLcYqmwxB/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZnQeQHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZnQeQHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0641C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789693233;
	bh=16jGygfZ3EHW5P/1+/L3bTQjH36ygwEdi+3CNC5gfGs=;
	h=To:Subject:From:Date:From;
	b=RZnQeQHI8UwHBgZs4OkR7n2vFWZ+NjBViIlv6xV+MO3YDM2P2sBPloRkJ6jWuNDiM
	 iZTlyvBvXltcF4EY7EUMfRgvZ/4tz1bI+G+Tqa27KWVKuT7sC7OsNCyjYaov551Xmt
	 nXfleuaQAD6ygKmfnUTR+GzGmAsJYVl4MikTdZvfi1Jx3XBI6Q0XhICdanFwGeSSFh
	 iC2gHeIbZvrVVlCZJ4LfvYfVL3DrTJntwLD0Xq5xVbeVK3ofD+3f8/uRXWe/6eEubS
	 I5It2juln9tCWtDCT9TChYvNSEyMlKSO9uPP3AKysfiYDHIGJGtSfYl54g77y9jSvI
	 hXDzBJTHT1V1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EB4C982D0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969323373.23647.11121059218832928698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01cfca60d49947fc14a303b59625ed56ff1e1d582c7d460e52bec18ff41bad3
Date: Fri, 18 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789693233
