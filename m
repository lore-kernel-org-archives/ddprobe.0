Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3087A1758B
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760665794; cv=none; b=jx/No3wBFPhAyr62D/k7XXOYUjVl9DYQBVJTpBcMOm6YpApqwRm6bBE7VTH6/5d8c6bEHHEZC482VD5z3ub5POqzqY96EizEv7ISDFrDLXVhDXxpQHfWscmWadi2Z7t7rjObNVUHBOYz1BWl5Kjb4lZIGxqCNu49bOIs5pv9reE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760665794; c=relaxed/simple;
	bh=7/pk67Hkvx0UubDyCfqRQM9TKest6k/TsFB24u9jbp4=;
	h=To:Subject:From:Message-Id:Date; b=NUoNNJflmj76K5aAA2OYe+eSQxRl3x63usRiHldD1BuHk5hAvvC9oBJUKEReFM7XC7cEv4wjoJ/6RdsyKh7j2XDMlBbtnBqx6LQQumT3b/BwdyY+udWPxYvQ4Q8tECQtPh1FpDlQ0VUFmxw/0WUPZDmsIHiTc+UJVLtdWJXVaro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/q+2Kc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/q+2Kc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16F8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760665793;
	bh=7/pk67Hkvx0UubDyCfqRQM9TKest6k/TsFB24u9jbp4=;
	h=To:Subject:From:Date:From;
	b=E/q+2Kc/PgBojmi968n7AyyvAH5IEgXKghi/yXn6LyYRU4tlmUB825IKXjCBK9sFs
	 qxWwVvsx+9i/HuTD0y8UXGSLrCJRWbBh/VQvvLHZu4tckT8SczCf6a+sXT+0seEx/A
	 bnEudRzBtV2X7kyMYsK/Yl8DxbDcGlmbBANXqTX0Umic9fZiM97evPmqHgb+PfkI7q
	 OtSCEVO2WQn5jUCosyRvclQIbQTdPsUZCwH9pO2yiZQkGK/lZ11PeBE23ahIizdQIB
	 zWa3QUXnAiDz3AcGJyI8a6/6NhUMKtjZ1S50lIghFE/lZzjpM5lD5tOAbf+5XeN8Fs
	 Ubm1oFP9anAFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DECCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066579357.20240.171010310327302132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a3d84c4a3ba44a1626499056c368d27649b44d248a4ceb5b6429c14190322c
Date: Fri, 17 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760665793
