Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DB826E708
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750436395; cv=none; b=HPFKWnLF2jLVjf96lcE/iKotsMh9GPrCafBPiYo6YnbwsloStk3hFDOc9NpH86IdhxLNpZmZAY3wEHNnqTwHksEXI8KucnnvV35IhHtxy6nd7kS5nOkR0GaDlcq+X2giKTS4Cd9TADyZNEwM9HK/DxX2TxXkDY6moEhU6E92jqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750436395; c=relaxed/simple;
	bh=KxyTtybKh7f+KuZ9DmielL3mus2NrYkdcm0kcxZYPB4=;
	h=To:Subject:From:Message-Id:Date; b=OPw6gbG26DPoFccDUI2RfiCygNt+tCTyO8YCN+mUh8mUEBQVU280JX8Sp+5Qe/fM55aTNoAxDz2y1VZ2VSUQJVQmIyaKTk2mHPF6c5xls7UoZItje3YJfGr2nKjrsBjhHcV6biCCxhw7ZQM283/mEw17tkusdI0zAFsXxR7mkLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXEZb77D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXEZb77D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C36C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750436393;
	bh=KxyTtybKh7f+KuZ9DmielL3mus2NrYkdcm0kcxZYPB4=;
	h=To:Subject:From:Date:From;
	b=SXEZb77DQLh5CCxdcG5WmcjVM4QhtmwmCF48g81eWNjJJBTpZhHG8O2oaEXAnbkH4
	 CGSQJMMMUh9NVlg3Uoxw9icMrr1v73alCK4kD6sh+XQEquYupfLFQZp/ZC56VjRi7n
	 XER2DBI9PKBCXWoV27WxOaE8BoQ+EERICI6meS8YdqzAz67PM0MG1Xm4jbLwGnHv7d
	 euIckLVW+vB/SEejeEdv60Ml4VjlAV/1rhBy57YdF9GmfeqrdG45fOy8XKtgtcyFjQ
	 x5VvidZspdLLvsd11UlGWTsDJ8Q1ZlDG/XTRG5D0oFbRo751aFCsRMdwJ+3alqnWpp
	 wJQul5rexNvGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F81AC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043639357.23174.15860225109127481657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b40fd47280122668f0299b587481971332db03fe6e9bf60578b02485a02293
Date: Fri, 20 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750436393
