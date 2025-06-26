Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4672E5423
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750956594; cv=none; b=un0SleAffPtxAoDRA4+890f14wLfHegPfapcYJDjq2cpTAg8rS8OPhdKUVkDEkw4jJa51Ex+ugeYm/WC89/CQFigrKceh/Z2LFl3Ywf6+0JblvPQIYXF4bSH0E6cTKyIXBTn9yibsHPDdTEqHoOLVgkK2lOizp8BAkdLT1h0nWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750956594; c=relaxed/simple;
	bh=miclRXTZr9NDZEUSnVWI0/KAO7VNhkxeKXa7boRy5dc=;
	h=To:Subject:From:Message-Id:Date; b=Vbd4fru7c9Np8geswo5N0nPKlJT0Qw/tiNcSg2hzLQLX5aiIG5sJtDH5NlQu+KEt4w43rfUevVy20dfG/tXFGDoGlQoLAcRMdNYsm1Wb+bQkhQHk5loe8MvNEY4t6+tskuAwVqbLMW3mkPfc0F16x/U7bH7MjUVQaSWX5Fmqws0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGvt7NVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGvt7NVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C0FC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750956593;
	bh=miclRXTZr9NDZEUSnVWI0/KAO7VNhkxeKXa7boRy5dc=;
	h=To:Subject:From:Date:From;
	b=jGvt7NVV2sl8V+FrL3cbXpiaw6JhjH7tY26N/eir5nuOxcZSHQJ5VUXHsxUlx0PNd
	 erfxstJjbvpPM/YSw0T6iq7xIj6JfqdUXkX2iFdS9Z1kMEKyHxixIdqnplGqwezqZt
	 ZUmWrWg5UWnVLkcCdxbzrjGxdzYjl4ZXvE3C7CDz/ar1xv5fHQqbC43POCv3ZYZtbX
	 wjE3PjhiECXt+nKG/0UdznH0wb3x2MWEibtd+91N833dvjKhCjcbnGYn9mXuPKT4Sa
	 eAFLmjq7HTFz7Tz/pGQOcYOY/K3HAEes5hcDR0k4FVdxdJsWO6HICy72xoD7yeFiOb
	 IyFUNqwUCM35g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C3C7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095659358.18371.3686076095794290915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9785a89103701f5f3a5b05dd9efb37fd7bc4fe489c3970e26ff814f0d9c826
Date: Thu, 26 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750956593
