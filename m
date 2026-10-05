Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4AB1A6809
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791167434; cv=none; b=nE6whsiBWphfneJUXQmDZ0nMUyzHY8GgrbfSR1zWAES3hFKe+f9ukfDxbeDF/UriJPin7Sp2JZuj3H5eTjosvVrNTGnqAa3lpovgrELXdHrufljZCl2KCQADbqHmFi8Fs1eg538CUWGH8BFsP46oLanqOYTzbg7V8brmEjEfwFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791167434; c=relaxed/simple;
	bh=kGN5JnKvRoR1g+UANAGCtr9L0diRL95WeOmlPLTfxTM=;
	h=To:Subject:From:Message-Id:Date; b=dCeMbmXWiFRNpgi0s64y7HAw1ClIEdWusH3+R16gvVFeES9j8uPGnqFKrN4XCeLD9V+IaJQpiEu47gyYjUoDBjd03CBPljnDnlfP0aV8djMynEjTxtqAHHsJjPrN3nFvwr5/WxaqQZBLp6eWSZKdrYzpW/e6lSU+ccWfxwAWaIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjBehSBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjBehSBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2244C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791167433;
	bh=kGN5JnKvRoR1g+UANAGCtr9L0diRL95WeOmlPLTfxTM=;
	h=To:Subject:From:Date:From;
	b=MjBehSBralrOeiw29w6kBLrPpwYaZkvKFUB6oXsKDXg9fMyWdiQ+VLK2b5axOeIJU
	 gTBhCjcWQzMjHDwwhLj2dr6KmC3BTOryVS/XRbW7jQNkN/SVmXV93JBsk/L6+xaq1T
	 uZ8M6Lq12Y2SHUBe57/IkdPYmAtNbIPIJaDiQ5zM0aWRNoCfKwhIX7ileiJhqb9DR0
	 01yq6v8yABSTqrNw+0pSg4hTF0hEWHXwnflp23CwEoPY9NMhV4VWRUY4mrJEW0JTOw
	 n3/PLQL1Vg1gLB6UNhLsbTP5BtZ5cvdNVqGRBUr3Hsh5PIf+XX3t1JDGq/8k6qwDHp
	 sCXiwbshAbNoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B095FCA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116743368.30787.2663170130230943822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15409fbf22f969764503623043e36da65be8ac42fd2e9b78ca7facaac111c716
Date: Mon, 05 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791167433
