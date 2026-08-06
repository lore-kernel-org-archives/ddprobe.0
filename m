Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654B432E728
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786032034; cv=none; b=txnscLLbuQSkiZqX6ADJA7XNE4xqHzBx5oA7Hg4tif8NNKNvOLlQxjtfeu5xqK7gkGdTppky8woUJ/FsMn6cxZOqfIg860cYDGXkTrQl7tXEZxhaAOF8ddKVS9iEjf4GcmP/2tCMxOGoIbvxjz0OxyC5pHFovABCf0skzLDTiDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786032034; c=relaxed/simple;
	bh=jju255aZnI/FgypOja2c3uqaulKxoLFeYAQWSHn4aCw=;
	h=To:Subject:From:Message-Id:Date; b=VdNpNym7J03FWZuSYgxWOWGmw6y9saHcdagJHvRwZNLFCSU3xWC7H8bManAupuNf8lJEhkseFV3PeNpZBF0oCZBjwO8BRDs8Av5HbV1Nze+MgBBBfR9bC2sKHWV56yvz575z6CRVTgA6tvGWd6LtuUxrVhMOugUl3Seit3iHfJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/MF1ODL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/MF1ODL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1086C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786032033;
	bh=jju255aZnI/FgypOja2c3uqaulKxoLFeYAQWSHn4aCw=;
	h=To:Subject:From:Date:From;
	b=q/MF1ODLUbjT1c7DxETzS2ofMQ/UxRXZvVSDHv/lItGHbF3DB6UoJ0AsfMQEAYS8q
	 gN2gS1F+LeQsYzkSVUY9ZYcaCKWUaZ6jgfoZBOU1IFJvvjdKnAqliw+RP05K20MWCZ
	 IB8rhQti1/viKTqYSpxXXOFk5s/ckUBelbjlQV/5BZTyxiQ1EmT8VHzwZONSbmECON
	 YovggpOU0YoENGq1bETqoj6YLeQu2HkT5KF6ElF1wl9+S7wbo467QtH0zkfaWnQZ4x
	 hW2hJ1lVZ4kLddTaYoxhopSsHSykHJGwrT/2HA5agJc5vL5N2DyCkOe9nm2+J2svyq
	 QVi1Eaqfaz6Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB670C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603203369.2617.17368821106681312182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd3e73b7dc731bd530197e91574c67558263902404b89dafec300f5699ea089
Date: Thu, 06 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786032033
