Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319DB1D5CF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736193954; cv=none; b=Pyv4t/eVxHNKKywZc0WbdITY9wigcT/rWlXyxrbioQwO0unSEG1TMNksGHAb/gJHwdFn7pcUbzlqZUDIx1YAVz3Kk/OpMeBI8GtMWM8UGGJNRTzuzjFgQtbBw4AXBqVxmylUtulXVkOwgOWpFicVAkxPNsHuoYzBiDV4MADS8sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736193954; c=relaxed/simple;
	bh=ghNspinwBXPTC8fLslwdQuUZo4+XPQJ7mqWlXMrHdWM=;
	h=To:Subject:From:Message-Id:Date; b=ZZD5ygYKPjXH2zKd+IQ49vZNDabTz9gQaLisAovJZRw0KVTeiXvHuf6Z4BYCbVyD23tE4bZSapfc0teLBoLWzOMi5QXKrP3kcZSBbdBbTwDoJLkFXf0pkuToSlifc8HG9ICS3IQC8EoO969kKTXcCH7AhpAGFKhFcZaVwBqqdW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8k6Gvsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8k6Gvsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC940C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736193953;
	bh=ghNspinwBXPTC8fLslwdQuUZo4+XPQJ7mqWlXMrHdWM=;
	h=To:Subject:From:Date:From;
	b=Z8k6Gvsz1bD6/LGMoYY7uMX3djF78NDyTUtbWI4Map6MtppjLVLjAdgHHvIrRIYHq
	 7FOvzEReq6sYFsakNECgcnt5RHFANrUQkydBME2gIJdbonrPohMN9CXV2u+NUCYtc7
	 wkHnyLdJ5NKq+IMYxKzkiwaSbxDxBD2F5UV+PWBMLp1qFk9z63LT/h+opREo3HeF1b
	 m3dAdKlezBPG1IlH4zv9KcUbxs4bsnLzt+5TNDwiL4P6u2hdGPBhZAy3MlsJjEZ0Rk
	 HUI+I4rYMWAtm7bP+O8xX92ymdKPy5xuoTM/R8v2QELRblHd5xwu71GkKQgXDq1dFw
	 Z1JcqqorqVj6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996BCE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173619395362.16325.12120151777604297394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1536bde9e39bae798de989e362a0df5dc59172aca4a240d2fb6d349fff73210
Date: Mon, 06 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736193953
