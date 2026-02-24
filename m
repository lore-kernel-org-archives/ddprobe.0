Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E5721638D
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771976694; cv=none; b=NfutgwnV88WS3EXUQRIyfjt3TkVA/w0T9fSz+QtE5j9H6cU/kiZLyYXEGgnmyk1U3Osbo6aNRyLUjVZyrijQdugH4yLUiK8v4wWluwjJsYDdGc/OxGJdamrfbDWy8NhgoRi4LWlsoUQTGPyL4TjTvPkWiUx/eeoAaL8tVb1Km1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771976694; c=relaxed/simple;
	bh=49u1TJyihNcIFoitxbp9NirY3L4AV/5YzFmZIlg5+4c=;
	h=To:Subject:From:Message-Id:Date; b=q9Yz50Fa5Srs5DSPIORXBSz5EFoCi/r8wxJfBKOBtNFTAFbXCYtQxRu5FiUeXOK2AJNsqZgpjdI/CzZTRYi+gxXBKyV9C87fW8+mppIlZ2rWtpJGJ8G9lCR5I5UrqDzKjJ7CrGDIdKZsnF6lA9RqFEpPrfhypn2kDt2aOu+9FlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzMuBLt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzMuBLt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5869C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771976693;
	bh=49u1TJyihNcIFoitxbp9NirY3L4AV/5YzFmZIlg5+4c=;
	h=To:Subject:From:Date:From;
	b=EzMuBLt5/Cy+0vkg7G2kt+mJ1r2sOifoNWHJkKwOQ520uEmewzogCLGKJGtIscKpS
	 EQPoKCl3sKvOHrp+UUte0xHvn8e2E5aY6uke1JJrCEaETbqeVGQQptcF5myfUoT6OC
	 yxircgFYwqvmSOHIPXBSOSeGzzKfOMgGLDVM4XghlwqLPPeIPfGXs/VBBF8/Fo/brn
	 NPv5nEK5oBIdVb/6BzlutsrP0XbYwD5veY5exkyxqy3kS6jKxlRelYL5Bw+eJ1L+to
	 JjN7fd0yrNbm4HgWYJ/4kvUydTJkq+czljiRjPiOyW1Y3ZYDjiG+sfiYlqAkH2f+N4
	 P+lBJcyQrp+bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9648DF55433
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197669358.4013.11613621569079163389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f08f454543938612ef0efbb8f3a28f1092f7cede1cefaef4f25864378a39771
Date: Tue, 24 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771976693
