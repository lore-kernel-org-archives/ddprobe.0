Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09ABF11712
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750351794; cv=none; b=HSw33U6cZ9NQZypjwxaxH2N9iYt8VJdA9nQ7rJqOAQ3ZRtpl/HxektjG95iATk8n/FiXVknQF+bN+VrpnxMuiM9MNk+YEneYBZ59gI54v3/fFx3NThuo5I0Gxeai4BoDkV1EnRAG5OVtSqcmXkE4gxB5g2mpuaIMmVM1JAA2754=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750351794; c=relaxed/simple;
	bh=LHbpGEDyI/nrog5ny7k+hdBK9P81wiEKk7R+8UEHOQA=;
	h=To:Subject:From:Message-Id:Date; b=QlFUJ9JZggnVxAdeLY94kE6xRBHlqC2uG7KEQHztU3LEvKEVQqT00luvAKM5puf/j/GCEXa5MYA2uwRR83X4ukIvRzvOoeO4Q+dGjnx5f32lee9uxWITTRKkYjEy8hlFF0E4IdTMHGnueoRTPAUqBq+rnkC40Gk3f0PpcmIOHtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXrzolX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXrzolX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86F2C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750351793;
	bh=LHbpGEDyI/nrog5ny7k+hdBK9P81wiEKk7R+8UEHOQA=;
	h=To:Subject:From:Date:From;
	b=dXrzolX4mBEWN6SZ9cs3m4u9HrP33KUwQsNNUDt8mtw1NWhBnYqULg61DzVItQQRu
	 OUPvW7do1L1+LAgqbMTkXP4W9TNP283gPA0AMCE1i2TZ8oRi2DdFirPIHN4n33Xh5i
	 3Y4GRYOS9bQXjT9i7UgHFu0Potd3KkvK0SZXAPqqsRYPkGCYDoGbI61bJyTtpeB8g0
	 eLdSYgdzhyfn61F0CazmTfKgOb3HRPLuBfShzS1ZfI6jxU63wwi8KQB8sdQT6vMjVL
	 BXAqOcIja5BAVr7K2bczhUH/UbPhEitLBBsiZJ14QFBhPXDGvKGHskxzCwFnlEYrzU
	 8P6Ufy81OtTuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D56C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035179357.11074.12224174208283265353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03bbd3c92b59abbd91b0f2f78ebc291c68ddaa90371274574a593baf84157f0
Date: Thu, 19 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750351793
