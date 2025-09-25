Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D8823D7D8
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758827394; cv=none; b=F9BefMpsFl1w3sFATkcotJgNycs2Ujpu9NNjlgHdMWpNZv2MbZw5a1wrQnbEId40DT/scsG9Kh9abo/fvmcv/vBVFFBFatD4vcs8NywOvAip9EowoeEQ7vVVRBK5NWPFQk42P6pKpd6xgfWqWGEJ5wz68x+gIx/YpAoTSe/guAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758827394; c=relaxed/simple;
	bh=aPYRJZmRJ3LSpZnBN8YCvIYVwu4EA4SGDGfRhSkbZFM=;
	h=To:Subject:From:Message-Id:Date; b=Y6wQKvvrrZNCr7LYSR/CTq4o3aKyoOnamTEL/nXna8fkAQEsMS1bLUPhjklbb5toUJ4DGPiaCBY2Yv+1NtdfKxOZAKgOqQUyaMmwQUI9/I4tZRVifkAILtwXZgkBTfH0JMa6mJMrLROaokWBktsooJHYMw2/kK540kn5+NDGDE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXMIeSa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXMIeSa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45C0C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758827393;
	bh=aPYRJZmRJ3LSpZnBN8YCvIYVwu4EA4SGDGfRhSkbZFM=;
	h=To:Subject:From:Date:From;
	b=iXMIeSa5fe1DPixhcDaZJ+VlqCsS/udRs8jWEtqzukAJqzhdHAAwspQHd2M0NU48S
	 H2S+BA2zO/OHtE6igJdRa/fM/ispI4/zlfiXNzcQHgqrNWs20FsNkuawuT2j39XXK6
	 m6dfdZ9Hh70itWhKAFEDQ1pxXhqyvbamweClTH9Q38Si758sJIxw7/tUM/fMbsuwlS
	 U9C51NblmAhRbBqyRYJx3E32KciyRUwpBRYhR3H7/WOLKXFRXOCcGjBH7Guqt5hDS1
	 ptXsorOSHa3K9qSwvM0zHqESQsVTKF1OP5USJu6J+hhifH7gT8hG7kS5Tj28BP/PhD
	 86URdqUxC8FdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9575ECAC5BA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882739358.21732.15084517447098058338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9837a7254a9f5f546be111b4437520179d946d09f1375ac23f287be77e2e0f8e
Date: Thu, 25 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758827393
