Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EB618DF9D
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763276454; cv=none; b=QUTEL0pBFwYtsBsG3qjHCexwJwc+VttEDQLl2rK4QTT/H1gv67t7/8rTkJN4+4iy2gFxRHWtdcwtiawOxIGMAreAzrRnZqai0sKhER/H2XW2O9afJH1V1sHU1HT2b1IWryYEuStBKgM9UTkduQbxAX+eOuJvt9PlMjjP8EHe15Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763276454; c=relaxed/simple;
	bh=hSGnLBMRAJrlLIfuYNqBpCHbLqWqQ9KS3QGd64P8Brg=;
	h=To:Subject:From:Message-Id:Date; b=KRqm93PFayOqjsXR1fOc1iVfqawz4JynvHjVCj7xqah5BCJo4F7q0lvUsfPY+0gBJwHDj2Bb/xu6bxUezRBmF042AOWLuYeJafgou+9E/PbPStJF0hzLxNzIfSoNLDsjqEJGrmrMP0jaXZBAVczxVzJDkw1Sg+BySxm4rM+NDI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQfvrpIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQfvrpIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B142DC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763276453;
	bh=hSGnLBMRAJrlLIfuYNqBpCHbLqWqQ9KS3QGd64P8Brg=;
	h=To:Subject:From:Date:From;
	b=mQfvrpIx9IWkzk/97gy6IiTX1L6tIIpWfjxS8gtprH7gvHNSKPXGxNrjahDfdjjyy
	 b+ZAbjijzc0kFRIIb7mly36ofqkMeddomTsCXyVcHhLDb8fKPWeHz8RZcIF0uRcF9I
	 RjJ7l9quiGvQpXHsALkUEYOEmOrK/9MWXg76XY6t5Hq0cFAdXA69BuKiM8bO6MForz
	 +38tQUFZDZHW0Oz4pmLyh03w+zORiwygHYacVCYBYWEswHlOzY0MyUhLFppa2rNmms
	 NUkZzW/i5gsemJFXE4+Q69OFXWvPPT/G4AageUHhdNmpw1PkQlSCRceprL1E5z6dsu
	 ++5NvUUSJTpsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1785CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327645362.30109.15791894240441500843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce371fb74760c05c0f8c8e208b31c23d178a1ef9eb90d0ae83dece4c49d6ea9d
Date: Sun, 16 Nov 2025 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763276453
