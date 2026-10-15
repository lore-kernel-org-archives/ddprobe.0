Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D19388869
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792079434; cv=none; b=dqcXhwuy7Hu2/NNqq/CMPFWh7ncXJVRmUUFAqeb/87kFuyHGwWx8a2sV+nJrt6P55Es3gS190KkMKgF7zkVbZxY6CcCAvCOSqR2w5nT7GuNYu7/dquPVM1lQNyTY3gXjxjZh9MP+TCDJuRe0/KQv5lxKQqTJy4g/twtekmrjyyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792079434; c=relaxed/simple;
	bh=m9LP20G46BKYXoKpg/44h3xKGzi8sUNm2k/JG+LeUzQ=;
	h=To:Subject:From:Message-Id:Date; b=TvEpnFZsfFomIuZKyYxrhuSfgfY+JK0QtpoBK5DprYHPipap8iwUQc342GaPqWl/RGG1wdqwhFihxDPFBOpvJ/yZIJpEleL3ph3rFNaUabvpLcMB7ASHqFEZxF8scTDgn7YlMRLEgAhT95RnoR0JxlSilBiUnC2LQJoh5TI+oN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1qOLVOU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1qOLVOU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E0AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792079433;
	bh=m9LP20G46BKYXoKpg/44h3xKGzi8sUNm2k/JG+LeUzQ=;
	h=To:Subject:From:Date:From;
	b=D1qOLVOU46uzBMKA9ijLnhLuEUd+cO13TrwKUq2VDivpnQ4FuiZpb0K5UwqIVFM9i
	 Qk28QznaUDSlO7ANDMb/+KHMKuo2wzFnsgZxlWzgBIODcPW52QTODxVVsvTE0Seiah
	 FNETdq1w5wv/qaPBsIPEJlh6EuI3fiTbaUNMFoFBpL4lbPoRNBHVxqmfxuh7TzRJ0Z
	 4pkeLBKd+1UMffXCybf1bwjCKnyX5vY35r+vN5+m2GxzNyvnfulps5c98PJ8D1nEcw
	 SWEUB3YrPFkDCu2spFwgd4nKv8ynVngpnSb2x4ciTfm5KsEeQdVzvAwIXJgAZVokaw
	 qtXbVTxTato6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F68CC6B39
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207943368.20821.16345526850113528286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b756c99d21d737f0b4cd6df3fe3e862f4b9200689dc9893f251f29c22a8bdaa
Date: Thu, 15 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792079433
