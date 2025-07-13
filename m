Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7711991B6
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752433794; cv=none; b=YvQP8eURJxbqCntvaQTz3QoTXKshV5IU3U4s6wkhAhYrkIChjnwBTBNKsIenOdrjCbb55/x5iSBsEothul9A1WPFHoMHprKtle6Tc5RUZketkOs7ep+obm5f5BepNNMwiW7zCbbXfRHYzPXvZu75qvwcT49pDhnyCVY4QfgvC68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752433794; c=relaxed/simple;
	bh=ESD8fpEbdfpxFESgJ0ajT5TTxCc9WuPpjwlmf2hsqUk=;
	h=To:Subject:From:Message-Id:Date; b=GG7aJP5BgImmr5B+pDkC/xhyh1g6kX1BaghuVd1Sg47C6eyHfMVhZjd1Yn5FbZAWj4KcqjukEMKnef4Sa8TTMDTob65H+j1aITeexgGJ3nZy+zelKQvPLY8ZifkaP97YEOvRCEU0P6cvH4yW7EW7wuSdrUutS39XfZyw9d8RNHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAQ2j+jg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAQ2j+jg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85CFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752433793;
	bh=ESD8fpEbdfpxFESgJ0ajT5TTxCc9WuPpjwlmf2hsqUk=;
	h=To:Subject:From:Date:From;
	b=ZAQ2j+jgnmghNlYNtweJzTmCsR45kiJrgHz8L1gLtJHBDkfyCIBX/7mUyAMAxmaD1
	 KHF3lVAE7ZFfFC4NQ3XzAZ0jz39VY+wZFUL+4UYxKH1xYQVVlqZzOvaL/zJSFULnSH
	 fTuY8ByuQsZgH1z/1vpy8uELSle8iyuNbmmJyQcPwGyV4M8RE0apj0Kroqz7kHGtiB
	 i3dg30kwdjahSe+HYzKdKQFpu8GnvKaO+Sz/eWQkFsARWdQypd4WXHdHqyaOsHMxeW
	 EuuBDOvxJPfhUZEcLYlPD+VY+0Gp/nBlNSi0dxyE1Lh0hysdhaeN9lUuSPG8VpxT2d
	 e3aSegcuDM7dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E2FC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243379357.2640.9402788645986040974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97f2fbcb92e073ee147621e8d84c73598a30d06770ec9673f972c47aa919d4c
Date: Sun, 13 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752433793
