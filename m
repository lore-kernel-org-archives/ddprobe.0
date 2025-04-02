Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EA81C5F07
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743617394; cv=none; b=GZPUoCFHgQ3LdfwOzXiwugZqhvgRDjPNBH7jZyI7+Gz2asockSLcDwJTAnK+gioFbQscPBIVG9SPlUtIK2JNkNwqa29hwXCSQV1RRYcjNlzbnd/w5B6ztuowAO/PmoKJgWHEbVsiPGYdIHYVzitQwxrcW5GBcofCfzEgMa2pgCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743617394; c=relaxed/simple;
	bh=DAj+eJfLlZMuWIaf4xd1lVGlYp4JMSeBBXaRwKoBAzE=;
	h=To:Subject:From:Message-Id:Date; b=FaIdU9qtqo8lQYST2gyVHlNfXA7TAlFsnUSwTTYLNxDZkCAn8iRjodpwNRZ12MS/l73VMjgEk2hu4ZV3QOCusoHc1zbvIvI1VUDvRbErYBnwOPtzm5n/MPbt5OQQRmbKL/jvuvXUTrnAR5Yy8v8RooZ8vz7klHQULf/4Zq/qqko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4MCo6Rj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4MCo6Rj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD08FC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743617393;
	bh=DAj+eJfLlZMuWIaf4xd1lVGlYp4JMSeBBXaRwKoBAzE=;
	h=To:Subject:From:Date:From;
	b=D4MCo6RjFT0vMcDzUeiL8zL5WPxy7Zo2WpalQfXt6u2n0I/1s05LF+ojGdBLnA9Ow
	 pvugGfLh8y52+84Ubjv0FAgqxRudvOwc664KcfR6vTw95st2GCAeh6OAum6QcsdcwE
	 2+S6SCBF+WOlv3AmjkkeQp9JHr8nJ4ecY+j/FMlHNHigyOclC+JWRxqtHGWYhmHs/S
	 62l225u9Cxf9QeMA8qrecg07HLg7BaNHa9IQbfy2bckwLxXO+ar59PDygC0P0FyFHb
	 egdWsMdWfvlbmOaloUfdCwek5qCgxf98bsl66+ZaYaHRIXh+EVd3sRiVwiDApG7+q9
	 0jS6VSjl7dPZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9838FC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361739361.16261.10330875445458378920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa151071bdadda8a2b35d0ed889eeb34314a5d37779d299730bceb4b18988eeb
Date: Wed, 02 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743617393
