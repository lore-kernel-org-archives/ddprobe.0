Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B35146D4B
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714137143; cv=none; b=LTNyyXNozvOrSbixWHzdP9RIDr399HwYnE2wHzfPp4EeQ1WT0Dp3ztQfDUnBUTqtpfUCoc4TJVqzB5QX5aMlX1IPk8f9Bkc4ihT3E/hu/13tY3QgFgivl+7GLkw7q4S3V4o1Vp8hz+RLp7QKTaeLtpHtvicjjC433XeU6CGwJVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714137143; c=relaxed/simple;
	bh=ZCrVtNtB0qM7UmWVKqszJSazJGyCyttHbowG/EzE5UU=;
	h=To:Subject:From:Message-Id:Date; b=HTYiNB8WJWp/1Ic+/I+fNHnXq8cVqP+M+I9eLB6/71pK0fSlLfF0MHZedHp/83sTriJ+QtfuO2UXZ3MbDeRu9iC6nB2rcTj3XfpQm4vnCvI1kWEEbu670zMUzolT9eBC3HOTxOQ/0kxwNFGN8IRX51taOw78NfemFOr5tzOXaKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpmYPdMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpmYPdMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E495BC116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714137142;
	bh=ZCrVtNtB0qM7UmWVKqszJSazJGyCyttHbowG/EzE5UU=;
	h=To:Subject:From:Date:From;
	b=HpmYPdMbnjEnfY8kPlg6Qo67wB706eMY8lj/k9DYaPRAo9rJ9gPJUTOkVBEXlI9ig
	 5hBxYEMopw7xypySYnB2G9P1bqnVwG6l+LSpqCSmdNEGaU3GKAx3Ize32EckgfZ3MQ
	 /hVBokCmeUO8T60r/8J55DDfGTQKu810HXkahMyckDZ+w23oN4nSgQ0FC1uhdru58A
	 +g3CcwdTm7rmy+9kZhJxD2FMew/JIKwy+ofyCAffwN/z5lTxSmWVT7Am6acRjdWm4M
	 hw2PNe2BKfSYb05t6UvgLVTF9AUC5A03IXFF3sz9pgGJREKrbcLCGMSvqCLMTV8tdJ
	 fuXLxBcO/1mqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0D8BC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171413714284.16763.15887414569325788620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc7edeabde3fdbf0af74adfae7f7d48e96ec7b774244b13417ed25025b82171
Date: Fri, 26 Apr 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714137142
