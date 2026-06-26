Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808AB3CD8DE
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782453454; cv=none; b=qOSl8dKa7DkesW1DwcUMSF+wexj8e0bS341bI2ZfeTWl+sLY2v7653DqUjWthIy3an7Sort5cFJSkcbS3KRYTE1eABdQI0N/6uHlD2eW2DIr+kmzdQ/bUlfbAfoEUh8KKyDaaioUzaGGILrFjYM2zbqJSCgRfzhXxMGwefQgq6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782453454; c=relaxed/simple;
	bh=DHlJd79jnmBWz4BnYTZ2780TRLuq0nz1QYKCfM2bJ8c=;
	h=To:Subject:From:Message-Id:Date; b=r92/9ixueq73c29q3tNnAIvXObtKtd4DrlTuZ0jsZA8b/NKVuVUwGb6MIXD9oDfQ8H2K5J7xrnPq8gr1EE6BJ91R0/8BGzahOaZPvJ02pfx0jf5lJSC4xmWRMWQwNhsaHk0gFo+eRYTunzpTDPDVzxfMY8h0blbz/MPheBl4nNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrsCgvZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrsCgvZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC58C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782453453;
	bh=DHlJd79jnmBWz4BnYTZ2780TRLuq0nz1QYKCfM2bJ8c=;
	h=To:Subject:From:Date:From;
	b=jrsCgvZqZKPVlzQTj7jw81Eu1nZWY1fFZ6tjTL8ALKsTVhJewbrcgX/kSjsiwd4fr
	 dxvERARkmoClYNmCahwtnKGhQBGqSQnUTrA6fhEYKhRLUTha/WJxK4iK1o+2UNfhig
	 D61qOF4ECeoLYwWPY/efTSyVR7nGCOUcp2qj7ECSKhw7ZfjK/grOky9+4jHbRMgYKx
	 bo6IC4rteWec1dAwlP/sqZ5y6L1H75EhrAqliHo8r2rhkdVyxCCgXFM2LBGbCm15Cw
	 ZCm5xIkOkpkirxr/xnPQkcw/HtOR9a5AAIGSGHd0z43meFYCj9dEX/qXl+yPeFfEj2
	 D5KCFOa14SJVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04D2CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245345371.13373.17859072480375884800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a78a2f5bb6b607b0962b06e6edad42a3eb183ba7a304a2bb338609445ed2e0d
Date: Fri, 26 Jun 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782453453
