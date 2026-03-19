Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168F93C1F
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773878694; cv=none; b=hxFOBpf73v8y9wS28kqnun4pawiq246u7M8fK+zES8u0el0z/0zh8efpFPBfJDgdalXu6SH1OmBlAeNeNwTPT1SY9f6p3+oP0UsJH1syTrREooZ95ZrKLlH7gIsdND6pOlc+tsXOIbIAtJCEvkUuWbH0L6nsy0Pj47CwFiBHja8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773878694; c=relaxed/simple;
	bh=KsS+uzlFCGG3IA2KQGPNbfE6zd3Ezw6jnrfOk1e2t3c=;
	h=To:Subject:From:Message-Id:Date; b=aPcYEoGfrNFSKc0BOTY43lm23qstr44GLHc2Tg0mqYQlc9pv7wEMkssutN5ResCcMFkLCanNdcW58vmq1c5PsiM4Q+gO1MWHJfUtz2TUitDJxo8ji/iKcWxM4TKpyveiiM6K1sl87ZEbkThSDKzwBvSNRL1qJftRc6+UD3XFEKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgfLv9A4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgfLv9A4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A893BC19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773878693;
	bh=KsS+uzlFCGG3IA2KQGPNbfE6zd3Ezw6jnrfOk1e2t3c=;
	h=To:Subject:From:Date:From;
	b=ZgfLv9A4Ef7rfRNzMMkzbUQANgnsPgan90a3xtB3bMri7NEyjM8Z2E7HuJyyaA2F9
	 7ugbuI4Gh1JtwOfrDeXwdJU1z0us5gLOql2teoYIcRaEP93m12gOqQRymjON4ogUFx
	 u0KpEz0gyH9LrrF4C03sS3704GmNzWIdnZnLu9wRp2iwoZoJxtaUAknymUzmKiwX1V
	 mJpqNoqTa+YNtzrvA7UhJUQUF6yenGy/MyKlqD6wD+U7+kQEZrsnvcZ5vQ9nE7MSRW
	 Gi/+hoybzlh9YTIlsriZMqOluK+nGQepzAl+tUxnPv9WW1NZb3REZv17c6gcxYpp0B
	 jhZGADUhgOddg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DE21088E5C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387869358.27331.8892686341352793216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cffd8a77e511642701925c69730e9dac29d23c49f33e838c1db3478779b7713b
Date: Thu, 19 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773878693
