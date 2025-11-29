Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B1D1A2C04
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764388374; cv=none; b=PjRvCoAjEe2imjzTCtTHHFtaTel0PWvTpW68IBp85nggnWgTfXyJnORP/NpKw+lLx6nHuGSdChVnbAW7jFoz18pBqJ0TQtgAWvsUPgVJ9xh3UbTZsfGxJhLqu8ifI0oDRn56b/U3xyWimcYbqX4CUb18dIksbuls2kRE2icu/nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764388374; c=relaxed/simple;
	bh=6CnQkQ/KzKG2VvRgGjtsg++jDRgWmrsVsWWXHGQ+q/4=;
	h=To:Subject:From:Message-Id:Date; b=s9M4Drt8oSLA7EYsf7u2tN2Q53xJ6rqvLyDWAKy5ELVuLCzhIr4XaGXk7s4AytDxlD3YkXN8rArC+bJJ9lFcKl3GGUnQRf96f8MwTVt5y/HKEu2Gse0oYtcGqkXYakUxqDudlxAMuVsPeNvGjUBi9mPPWmLDIHBcNHL1TSWzsxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7cU/VhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7cU/VhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE33BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764388373;
	bh=6CnQkQ/KzKG2VvRgGjtsg++jDRgWmrsVsWWXHGQ+q/4=;
	h=To:Subject:From:Date:From;
	b=W7cU/VhUPyma286cJ/im870A5+iDIKekS8dHPoiqrBhfgtfI9ycabHAQRhkxw1E4O
	 FSkf1Z1X7LvAprG5obFE1lH+icAs67KUoKMwMZm6kBn8x9ffJMZAdBuuezeby0DviM
	 1Rh1khrZsgefy166RAzE/JHMbuCHMPv1QcW/Ljj9Z1ELlS15PfnKEflI7ZMze0Fhep
	 Zl3kqturHEb4vwsbXa9kqA+amhGGQvqlZYn9qeIzsnlqsKtTqUYlpxDe+Y/tbKK6o3
	 4ZwqYoqB3k7wBh7PvGtNhZj1aJDgjApehUrwZdkBERHZqDqDywcm+fiYGWX5eyZTrU
	 mUyd7JSRqebkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0F0D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438837359.8475.15094201328865383903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a32a21e4eca910e1972612575567a82a2f90da15d5b2e587943f9c8af9a55d3
Date: Sat, 29 Nov 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764388373
