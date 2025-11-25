Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B371E1E1E
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764096774; cv=none; b=fzlCjlsOhXrZaT/hLj/TJgBg1xDOAaeenx4yQx2JQkNS93TdNDePGEWYa/4xVUeo9deS3ioxJn0oQvIeE4+Z8eLP6QFcZNmlR3yec1l7YRi7dyOa6MyJzs/EmAF/qckYc43oNKBrG7mhnzzS4uxxBZfLxtO5h+Y1Lvszwa4+nao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764096774; c=relaxed/simple;
	bh=NDG+Gt2z+V19qbwWWvRWuabVgUDs9RfPUN9eEQA05Bw=;
	h=To:Subject:From:Message-Id:Date; b=M9yajf2z5YO5moAykB1mzOPcQ12cv6SrBgVzA/6uPzdmKKKeOIQ1TnrQmqgUx5TBElMLmf2TZwdW1OC1nnBUxDIxbMA8M7WS/+2UsmY0np8hDPSYzU2zyURrHvb/amPJnIZlmrymdrA78aQrLycjEYA+Va9e446yrqHBUooXtek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZTHRHgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZTHRHgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23DDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764096773;
	bh=NDG+Gt2z+V19qbwWWvRWuabVgUDs9RfPUN9eEQA05Bw=;
	h=To:Subject:From:Date:From;
	b=lZTHRHgkv2k0+0eDTwODfltm+Z3jVrSCOgxeH+Tv+ePEDBz8DvaCCKVHWpor7VDee
	 GkvMMTiQcj9Hb2F2Hnw6hxdddWZAEo/qbtZmh4Wv5OiqeuSkK3+UpXzhxlicaXwma4
	 ag7EbEWO+hJM7utN7wteLgKX/uCT9+3jIakmmHFAeAVNuVWqXQoGFAUiM2kYeR815q
	 TCSOatZFRtQ9QLNA8j77G53cvEf1F37rI20S2XH2UB72job26n742/1dC6B7fw9MTZ
	 p9kEb9bH8rDVrOJClzcGy5bzWfcSh/MaKxWaygHg0nbst1AqZD9NP53nukOj6NsBK7
	 CWYfpPFU1fxvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91118D0EE14
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409677358.16265.13740155795185401183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e346377fea808b865bea4ce44b17406eee3c52c7ca947620bd91cd16526dc16
Date: Tue, 25 Nov 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764096773
