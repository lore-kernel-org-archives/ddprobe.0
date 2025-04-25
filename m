Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260EC23BCFA
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745575794; cv=none; b=pXjEn8Kg83h8IGXEBRIWfz4V7Ok0Ida8TCTJXkIAmBTmQ6iQlqtmlaUXm7Vqq88RcriMEZ8g8TR+BmBGlN6CTwI4+sN84MCojf7P/RGhjEBzs/Sg7wSKx7PY3Omw3yAAa1s+FN3TARh87hhNxZm9go4Cgn5rKzMF3pzEcX3nDTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745575794; c=relaxed/simple;
	bh=fKGwb+6Y7Q9C+AhxyLYYElk1Bj2+tJ/A8wWLlZdbl60=;
	h=To:Subject:From:Message-Id:Date; b=S/pLBQcewzwsGy3yaSpQUgrSAJ9auS9X3XGbMayO9Qh2tRumY8Zqiasmniu3BnUrj6fGt721ONdJCCUYSe0fOlEISstgMlg32Bw6gfYD7HQIWUJYTGGBNAUSgZM4p+GPmeXgq0i8dnxCNPU8dnnQwqj4rc53WXl/TuTeGsnldSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEEJIOjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEEJIOjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E009C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745575793;
	bh=fKGwb+6Y7Q9C+AhxyLYYElk1Bj2+tJ/A8wWLlZdbl60=;
	h=To:Subject:From:Date:From;
	b=iEEJIOjouBmV940vN5e7IYtSdU/zqm5KkU7x6nv5SFXi43kyg1HIPyGn5Cc0H6GDO
	 kCHB2mf97xG+A3zvbScLhr/1OUgpTUeyp708OkyDBnk8i0qsZO5ne96m/3C4d8Zqf8
	 MU5pmymKKINinaWO7TqLrTmm+Yy903UZISCuWSlGsYK1iFB0w6q0q04ECeg3snLcgO
	 qxkcu00dxjayLSw8Pg6zjjObgoqXkAHmNnBW3TAF7l4oN7LOa+QiB9ojDZXP886W0a
	 Ea426pKnlGSdvEwnsHNWznIDNtkUgLJgGzXVJQIh7U34mak6nMgMSwsTchXz4H/mst
	 EQSLN8cUs4aGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE5AC369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557579357.19377.13912541083398630382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be00380adae171cba97ba917cbd843bc756d79a8cd80ac317d99fc26b2a9d452
Date: Fri, 25 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745575793
