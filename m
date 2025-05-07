Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1621DDC23
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746643794; cv=none; b=l9Q24E59u1Gen2wqfCRHs2/q5GgIR7QfNz3dFxal7iEd5QZtGpZroiLvWi3EpjlcIruWm1q3r3u/rwWvkGii1YPt+iU9ofhDhmX3PK+vO9Ow87EQ3WefGlLKA+pYj0uTRmUBz0U3+jHf6r9frn0bbGXyRQ8R/2UYA+LpoB0ljpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746643794; c=relaxed/simple;
	bh=/QRAZ2fb9IOB/GtscUxYueRUdn1QC3sdo7QZbzHXiaE=;
	h=To:Subject:From:Message-Id:Date; b=rEzbH2D0R5KRYrkTt8BvhXE5JATJRuX25bDd5kYlfNvPsQtXsBguuv4iWV+c1k+GjYEfyndFmBNgP30tuOMN6KYw1e5kl/bukRluL36szrTMgumIPJ/Ou1stdW3uIRN6XyPe7070FCP+E/FJb479YBiy10zjcRhyT6oRvT5fANA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9bcvzl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9bcvzl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C734C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746643793;
	bh=/QRAZ2fb9IOB/GtscUxYueRUdn1QC3sdo7QZbzHXiaE=;
	h=To:Subject:From:Date:From;
	b=i9bcvzl07VcFi/aBlFR2GNq6gMh06X+a4v95/Y8wu1uQ6meR6nIWnc1bhCeIxS9Ah
	 oIObUAKCd3dnUc2DQpnVARVcS3/3eBJw7B/DsoPKrA0jokHa9LFxYOKO60XcdqvxTr
	 UVfosety+44cywGemkAOwLlylx6Mjjuf/LYyBCcss1xx1lkrBJPiUSiOFpqphRNbvX
	 Qgo++lFfA6UD5OxVfAIeSItvYUScWiQYfNrR3F2QnEOjtYiwF93c9nm0wXxsryuKAU
	 F2AGCLPHYBJseWb8sFXH4tHbbOdK2wgeuZyxRD9qV9Z10e5tFqJybgc9N4i0/jAsTu
	 QfPE+RqqrMRkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E729C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664379357.26474.13964936190543791261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476094cac9fb63f9c7956b96175021c7db93459ac57e136e6468401c76600793
Date: Wed, 07 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746643793
