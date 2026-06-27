Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4185B34575A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782597514; cv=none; b=n6Q4JH5Zj0GXCXBL/pbpRnDTejOZY6mcxdD9JZvYtVhxnlCWu1Kv4oAc3h4c0jJAS1FoKxkbbJnRiYMJavenuaLDqYQpjah/mWHX92WYQnP7yQrDqu4QHbt/CynjuKGJMcuC8i6L1dA8hXzNBjbYdLbYc7Pd6P5TGLp0LffWPiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782597514; c=relaxed/simple;
	bh=UTBONMYcM6ZnBSftcSYPUzp8SgB8qxmSlQkrGaBs6Js=;
	h=To:Subject:From:Message-Id:Date; b=jv5s72kYQ7D09L1IWK7cjr65VoZFhY9rjf5x1kiqoU/19o6LEyxjQV4lLgS1RAMNY1sz4qp/iCFCPG3i/bxRzbwffHKrKO+PrUbMx4NtggWRGv4m+tJ4Xwar+x786XSzAHOE8H4I7I5F5JY7daLW+RYD+Y1HnYhwiu9xUQu9Ye8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRdOj1Ol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRdOj1Ol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D386AC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782597513;
	bh=UTBONMYcM6ZnBSftcSYPUzp8SgB8qxmSlQkrGaBs6Js=;
	h=To:Subject:From:Date:From;
	b=kRdOj1OlwIuZq5iNojxE+/aPersYQ9Hxo/f0K4ps0YfYLvPyit30uKvWkXQF5ntYa
	 rVw9pDKqChvSZcn8ZZI6BaTIyrIbsPjVal8YOYdom/pVcwSwsEpeFM3MtldinExALy
	 tS5hERknCz+WFguGtnLIDE1THQHEPpbv8ok9LsbT396J0r97IwhMagQ1uuNNCll1Ow
	 njTUlcbdjZAVcAtwMJ138UNqSOmwj0jehk4U3dyCS18rfivs5Svx9tYuFFFvC5uRWj
	 rUm6rPEZ8uFVH5GErlaGGARndWLQDGkk1oQCXrKTeEp1+D/le4XWhios3BInFPAGvu
	 Wjg1ozmJYJSmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D54C43327
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259751369.13405.8370022132483465994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fe46ca3e5dd3cc417c0eb551806fdb4886dd7b4748ed5248cde0495ae3de351
Date: Sat, 27 Jun 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782597513
