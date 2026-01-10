Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F6D3B7A8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768028034; cv=none; b=LB9M7bHlZsfQ8KmwZpZ0hAfyJcCbzHbAbkJR1e8lWHsgdk2cpTpfj9ASvNnGYtfITixHE3Qp6SVFzBp4bax9T5/2tkiH5vndBvZfrBOKUUHlBryTEfnfsnuHegy0H9C1FQ7LpIMPditdSHaKJ3BKJldnPh+4BiKgHSg0PGRsbvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768028034; c=relaxed/simple;
	bh=na7m6JcquxJbkfGiYjde7JsbmZwLdRsSguE061/gBLA=;
	h=To:Subject:From:Message-Id:Date; b=EPWbJ5qvyRz0NFBa2H/3AAK9op0aEe4XjhN1Mrx0sngzSUMITaOwTvWkvqFc7+fD6tJIDAOxTXaLjpH+HeU2VIFnw5zI1z/FuC1JT4b6M7hXWyEMx0nyg19ONkfwO98q1NpTwQ3zUj4jke3o3vByS+AZGcaGux/0bEztCp85QK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbDAp8Lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbDAp8Lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C65C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768028033;
	bh=na7m6JcquxJbkfGiYjde7JsbmZwLdRsSguE061/gBLA=;
	h=To:Subject:From:Date:From;
	b=nbDAp8LcssCBUam8TqjcDfStqC5GNiri8vF24xxGGxk/vrZA37PP8OHHcyIlY/uHI
	 H92TUfmFkaUFCBeVkCQ1+7X03b+2fvYvJdrFIPh1gqrGferJ08r6mTW/a37tDrzYhe
	 BFqMjOJ1Q9JPgHXaHoZI3pSZWHwwPAE8LJ8M14TN83zuIBtL6oKA9fGI0YtClNjmLv
	 OTk8kak6+Vsj4ECCeLfHD7KGx7CeaSc9v6qCMdzm+j0Zxc6i3dqjk7tvcGmIqAsq6j
	 bE5YKVXR+cigfLYdmI3bQkkSZbve7EZHdlxgkIvUIQ6i2/BS3uNhR86dIBPjutVDhu
	 t09rP4CUrlVDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D5BD277CB
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802803357.29741.10055964382330699947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b95089b3c7d8ce5957ee9fa40755cb57d3978e31cfbb15141900fe5c1f70e9
Date: Sat, 10 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768028033
