Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7B01548C
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758509994; cv=none; b=Wx9cFbS8S9VYEOtYahW8djfJ9uGxu0A4LtdoDLYB19wrcJ465EWR/B9FOBOlPSFtBc+/7iYMAet/q2Ti29TFfYDIgBcWu7Pca9sLickBM8tIeeuukC8Jsdnq3bH5N0vvHW+eQWdK3g+dguYftAZLzWcCRsqj09T5v7o5/zUAU34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758509994; c=relaxed/simple;
	bh=S0oo5sb0KyscLYRYC0yMeYX7KJF99J+3FXzoJmvGgDY=;
	h=To:Subject:From:Message-Id:Date; b=KViByMQkNFl7PN12vYe7nuzhGuGEZi1dLgvOLiqAkdf2lfWZPFXIqcUIuet3hBygKIccLhaDcFFIsLZHh5VqdynGqdXKwZvJe+4Xk2E+SRmIpdmDYYned7rN0F1KFC8vAobJHaeYvjgF1RfIjgLt0K4vsyFdR2zT4vdD2HCKVtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sh2U3TeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sh2U3TeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4AFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758509993;
	bh=S0oo5sb0KyscLYRYC0yMeYX7KJF99J+3FXzoJmvGgDY=;
	h=To:Subject:From:Date:From;
	b=sh2U3TeG0eA/5GiLyCzp3yLzMjwZm5NrMHxGERdLEU/P+HKLkOwuNQUxqtb3L1Bic
	 EZOLVNnSJ3zV2fiAuckhVfuCoX/RpWicfe+dc3BSxTym04BpOwg25r3LMZgBAY8ljR
	 gpY1mvN4UXvs1cbS/3Mf3M/liWMfEQjhPe4pn9hlJY08m4xgvqK+Jd/saaBNHYu0aR
	 5iW7E5Wmn6FO6s136v+5/hIJm/7eQZyDbiw6LGDhfJiBardtS9B4kmJJmqwEWu49nc
	 nTSHlupf7cwpV4r7DkBqxBVJUyW+ai/BI53BIxsK1lyxDnDtjfrPiFQaTwyDCb91iY
	 LquJdfDCbJahQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C12CAC59A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850999358.4562.15605140270341406847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4da348a9c3b6a0db5c26b6a8478ad28733b6d552738c0ff0001891b8cf149fb
Date: Mon, 22 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758509993
