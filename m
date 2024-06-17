Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496B829CF7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718636303; cv=none; b=BKUYrTsGmavb8MynMNeR3kvWyAXOOI+NHH+BzJB9r+lPHwzXYBuBbxGRWgtXgmZzEtcJUCUZSPhmsVyzef0OcLWwUxT5YXiYkhyTW6UmFdak5L9QfPFjnYB21x/wgFZWygTHnzcRiuBhEE/5s2eIIRV0xA9IhLBhSF4P+9vkeQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718636303; c=relaxed/simple;
	bh=CvbKmjJQ7scnbZE6W7b1L8bmDCdquGY9PMB/qVh3zWI=;
	h=To:Subject:From:Message-Id:Date; b=N7R7Gs9ZFfjRiTgDMobZ7OsCzEwV0MojjcVKO+OsBytFdmxbRJyS0zl0WZNmQZqzuFs+Afo82pMaJQwcP3SzLF72jD58zGrQTLU0dZ/pzaAHwNkVTffyIWnSnqM1cc6mrllJa+PcICFE38mqQ8JBkzWjzeeseMqCLaYbirBpDBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaCAkxcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaCAkxcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77C0C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718636302;
	bh=CvbKmjJQ7scnbZE6W7b1L8bmDCdquGY9PMB/qVh3zWI=;
	h=To:Subject:From:Date:From;
	b=GaCAkxcqnAK06a62F5TfoIp9Sf/HGy8dXW2ujnkWxbdmiT5avGgGeu9x7pLwtnTpW
	 ww08lVQ8uwzGndMGqd/zeR6Y0qCv9N67LZh84jUWtBurwauTdcjK7r+oTNV/Z7tFRe
	 56lKu0jX2Dvc04+nrEmIn+b6hdzcYxNST6MCGj8CTZuS5jpjk6V7pixNqt75qeVGYJ
	 97dJXyLtDc7bvrqHc595r1VHisAn5D2O2j56dYVegpbn8e2jtpErKnXdSbjuJ6HJGq
	 lBTey+awePIfLNInvnslJGDqnsr8O1FJs7AAr43/3+ey+YyJT4ZWETGqLZUvIbdmYC
	 dGVCnYAKfE6UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B96C2BA15
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863630279.29967.10333886840561815620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 801ef7b2cfea90207d749eab346f0c9ddb28d204d805de1d1d558a712105cb02
Date: Mon, 17 Jun 2024 14:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718636302
