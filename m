Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46767208D0
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760768394; cv=none; b=iXT1KjJE4DuehvMtGQE8MPKJWHt2XoWyDflPJfPeRAd5HvBSnDRNWPmDij9pyT/xN/TMAT95xnxunDTiVGbCBB557dB8K1VbdL+oZd+rKaQwk+4fS2XEEdqwcmQso10EWSzcIlLKulH2m3ehUaTc/3bsj0MBMtstflHbbjcb+Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760768394; c=relaxed/simple;
	bh=e0RAOKJQP2uzrCImyPVlpetjS2co6ljLzv1Ul3s7Uvc=;
	h=To:Subject:From:Message-Id:Date; b=D6XWXd6oXAISNxVfhxHKjdL2W9wLavPAuBEoZQAA4Q4zkJqXNc879F0+vX8QLuo/lrp2fbrdwQ9ZyJx3oCnQVVqudsyyIbwW1esGa8PPHlosJKh2BM8IBBunHPuGg9AzBpETYohKZ5CEMS25jjEpgM5P5aMLEZknfuUSrgxc0jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPTreEY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPTreEY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58CBC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760768393;
	bh=e0RAOKJQP2uzrCImyPVlpetjS2co6ljLzv1Ul3s7Uvc=;
	h=To:Subject:From:Date:From;
	b=FPTreEY+2auxQqvGVEvuTzZ0yEukhMsjO9gBUYtE8rsQ/xKMt4aHK0b3FmtO546ha
	 wv1qtxrv1uMM8bcw7XUbA3zoa0JxaI93dENN4VOPAAzlLSDAbDURm4l/6f8FSemB/b
	 uSiOj5vggaHc33puY7DSMeknmt28QxSiDEsyk2eorr2Ys42PNBdRZaY5TJKnESzz4c
	 oFZjQwQLn5HNciz1t+HWHqY2UX41YOQW+MAM0swchTQQRL835dcC8ic9HVMR1rfTwV
	 lMV0HJ3p8pNbgRSKNttbMy6In5n9UWADY2srw0S74HYHZw1cgpbwLStWToR760VCut
	 aUMcnavZCriKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A316FCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076839358.10070.5327925426807851206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db25802bcd5522b4ff542ff8b586b3eb5470b99847a0ee4c335a7aa41c17d3f
Date: Sat, 18 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760768393
