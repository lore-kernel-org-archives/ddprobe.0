Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED0B219EB
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777162054; cv=none; b=RwYuQcYCp0gkPLWnAbdy9HFE17z8NLUEF3nxtRkDc5+YG5G/uUHpif9So2JD2UBKx2b+VVs3coicellv8La6nfVJ49EEqHgdnVkUVQNBlWS6Q1B3tb9slPA/uUP7pNGcahrYlxo8W0VGo8tYLmC7hZnXANU6wyWroAl00ehTXpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777162054; c=relaxed/simple;
	bh=iqTf8i0g0nEtZjD/vblbYwvYqUARE1A7UWxRHFMtxV8=;
	h=To:Subject:From:Message-Id:Date; b=MGCIccYJdtm2X12yq+pqVXigTxpCGptt+EX/jB6Ks5sYcMfeflHsZ0ArZZ5TQdUpJsDIWG8O5QyE+F+wElv2gns3ZZqomuD0UEZE3rRm4LnK+SnbPgOljYiX1J0o+Q0W53eHJHVVShFOBvME0wp7zwQ8bpnie1J/7GWjBXA1nFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q86c4lay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q86c4lay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED06C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777162053;
	bh=iqTf8i0g0nEtZjD/vblbYwvYqUARE1A7UWxRHFMtxV8=;
	h=To:Subject:From:Date:From;
	b=q86c4layO1AOcfSAjkXAi/T1C3Y0x2h+UW5ogFusvBDq+L5y9UUQTqnGiU2Hn/D4/
	 RRF/cHwA3ptxG2YWgflCQfSNHHGqtArH1rY/5oK/yUNEgmjPda8vDEYOLbb90v37Zl
	 QkpQMlu/4XLQZUBHiKkwsYxXP/7OJSxR1D1QS3JYhQOljZXoehBX3/wrqZFLcSRdUR
	 xccXdPT9JomESU8b3MaQtmILdpYZ1NNdrVncWIyp+fjXL4Mu3E44Dz9Rt6s87tksKe
	 8zfbEiLdncUOfmbvLo7BBtAEE8KuK2TQu+h/bslXuD7L8irpSdJcpcDTiDb8M73eTV
	 4S4Lnt+0pELBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6B2FF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716205368.1262.2333527563965011483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c27036add374b3208699a7fd979a82886c81191f6c6ebc81ce53f7b5e0b0b98
Date: Sun, 26 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777162053
