Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AA92153E7
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759609195; cv=none; b=Cyfg5c4uDkDFhLFmqqfdEb23e9IKqL9EMc5Dqj6n4SMP+csyccRHNPpFv+BNqWWSfMYGHs6VR+PnrI9AlEiCke1K37pbPZaxphHTWVhCek+zOFJ5nLs6ppt1gsTG6QDDjw29ccyYPXi6yUGIN9qOlT/hGpBONuRprgvyvP+cPgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759609195; c=relaxed/simple;
	bh=rggDE85Uxazs95bzrE4lAkt6woytDOyvKYvwzXZflkk=;
	h=To:Subject:From:Message-Id:Date; b=siHRJjQSDT/uBjhK9qce0VxvHRXYNmCD/may5bRc0UbdBvPB7oM2qFToBQhs2PJgsfR4cKw6ifiFynY/5BTb2vKVUMzt5itdG6GDNaBUU/293DqDlytYqQ/U0fZZQ9oiTW8vwUiFiJfYAmdYYNRIfow6+e8G3vmrcaTFPywyii0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emiQssq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emiQssq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1600C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759609193;
	bh=rggDE85Uxazs95bzrE4lAkt6woytDOyvKYvwzXZflkk=;
	h=To:Subject:From:Date:From;
	b=emiQssq/OdJt+oNm+WRMpC9uJBkIuLfVMnEB0CcPf2hr4YCxxREpHUSfPIJWFhLTm
	 ZxUSkXUHfmQ96+enxPWs7g6F0Cquha5LiNlvnuNZbqDvISC7yCwawzFyjelZJXFlbh
	 i0IjBclfVt5cJHq5DN+tt2wAgNt5uuA2yEHCSaLILhuxiF9B/GJnm6d+2sqWBuHp6f
	 sMY5LYze5/U5angCGFZPwdvSDP6Zn9dftk0MoZ1zjGkax3cVuTxWa8huU7XVbdv6j1
	 Moqf91OeAwUpE8IkZktVQkapG5Bu1mpy7sMq+QtFR/lH3UDDJA0k9mlJOi+rffDWri
	 AGZ6ZrTjg1E5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90148CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960919358.13927.3107476086841664412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08a830b7f1dc74697dc9fa616c53ae9cef567af3bdcc8f0a01e03e6fc71c401
Date: Sat, 04 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759609193
