Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3757E226CE8
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748330994; cv=none; b=Wu3EkNgwCCWGkfQFjw4p0hSq4KGhSMR7s1RnzHiH1aPD0sd+T8Cy3U4U4uVraIcC0iayH7l+EmuQ6fxbSjKbAbPZR7j1nNiFyN0MRzaRw4di795KwJ4/ZTQ05zLXt5DdQygVmJWE710gNPvEuXdNFz9skmRGezTTEuM7rhJ4ghg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748330994; c=relaxed/simple;
	bh=C0sr9gcnOvUPTvyCbqfml4FPYxd09cTmtcRH+4JfJFk=;
	h=To:Subject:From:Message-Id:Date; b=TxI6eVNraG9Den8vI6bC0HP6XPqZczoR0x1ADxsUIHjYSlOu4+ZV5dzlf/C5IcNsgjFUjttAFC6dNx51176iExxo+kA50kcKZaxfi0uJcjBSZZO2g8+AfZRfZw1OvrTFZOh0wfOPEb7LpdSBgmowDs4tGbaLU3wB9AHQUniKoBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6tTNI+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6tTNI+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD59C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748330993;
	bh=C0sr9gcnOvUPTvyCbqfml4FPYxd09cTmtcRH+4JfJFk=;
	h=To:Subject:From:Date:From;
	b=g6tTNI+PyuuRbzQhJTzwc3c9A7b374ikztY+n1XZnz04/jQyDcJJIK8hGl6LNjr6B
	 uBhDfqw+X3v/KsSHcVMQgy330NwOTq3aVfZHk2msSbcoCoqm72BRdhqiKwmMp5OKiN
	 nVGocw+5i+kiEIxmEozBRK0/+cUbJDlAgVWu+3y5OIhJPCvLWXSNUGkK7d19VZy6vO
	 +Uuh60YhcKUZFN6gSbmGigjZDLqPzxa26HYTdETFxaLF83GifmFsq+0OBej/D2slPS
	 JGEF8kOgFMs50SOVQX+2wzcOrZSg2VsIgcIEO8FUqTnbduJmepbErDUQ+2zNPkF4mE
	 Mn8xgOnrKXuUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F246C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833099357.23365.17663702292170655907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cccf68403f7098cf2f0f59a5ee48fe5fc95664da573199b8ad8f1998b0f0d83d
Date: Tue, 27 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748330993
