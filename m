Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB8EC1D0DEE
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774109094; cv=none; b=Upk5xEKgqlll271ELk5b7QBW2N4h0s2VdFNi1GvYOmrruzmVNHDKuiidns3Py5S+61MFQC8W8ZdZbbkpAMtn1zs8gjSQAg9qZP9YcJtSnBHIFyy2N/KG6D+LlUeXde7T6ZqDCecsXnqapgftZhSK4LLvi5XqNtVeRByWJW/N50k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774109094; c=relaxed/simple;
	bh=eTlL/f13y/vixkoA7pYRd1coi78IA5QNWJYRTsmZVys=;
	h=To:Subject:From:Message-Id:Date; b=LFCATSPqcrxmZAwVcncYayqAE4lFBbmqwvMw+gyYHNHiugsq0HzqABQ4822C1J+CnaVd0qOfUCkeretXopdk2F6uu74SWoeuz75m2SiSEZdRWm5p47/s1AFjePjP6OEGzkGWt1k+TO7+w2XQBZaBeuUYhIZj0Yn7F83D+wR3LFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/tNjfLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/tNjfLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5575C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774109093;
	bh=eTlL/f13y/vixkoA7pYRd1coi78IA5QNWJYRTsmZVys=;
	h=To:Subject:From:Date:From;
	b=k/tNjfLJOLqMZBZjZwktbIfge0KypZllN1tCXTyzYfOTSc9p7lcnVKPfz5vJttL8c
	 /UmjvDUm1vwypexh/Z4IPA8NT2ASXbP4GRy6rVB4h+LNOg1rZFnG+juAk/Sov19rF8
	 bgqIxc5lQtAnSx5pcjscQDVVgOnISv+k4Vc4lJF0xJFxyT6/tRwfhGu5aFPaJ5PXFH
	 PpurJXCOKcLs1TYUygqAscDKTS/HRd4l6CqV4E76HFldPYFONISF5PsCG/ff3ItqTo
	 sGSjcLw1aXKEzfg7rENv881dMgyrOKsYlYhWkmC1dRsMRHxv25d5OtZ9ugMyrlE2nm
	 llf1shybOxFLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E9B1094480
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410909357.30359.11074924853456649131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2145854aa5a28ead9637d27af4c99acf21b022ce039cce6cf5f9454506c105
Date: Sat, 21 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774109093
