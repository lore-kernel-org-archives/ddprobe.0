Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E46417D2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765246374; cv=none; b=ceZjUn74zVunsqOKPC6RodeWDPr+wn2hwFl5zD+c+CxEYpOUANz4KF7IU/WVb4JrfeEYz/f8hf4XB8lj4kNSyIljtPDbRmpKXHmthkzgtnS7GJ1H96QwGVmSR9+7iNG6pRBY/V4EfWg0uhMeRWsIV6gOrtR7fqmax2AVqJUvwgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765246374; c=relaxed/simple;
	bh=q7Vjdmv4CGuWR8bigJlqngThit49KREzjZPZtIrklFs=;
	h=To:Subject:From:Message-Id:Date; b=Hmy8Bq0Kbtq4Yvquq7UKCI0L8Hta+iVFaJEyA2W4rDk2shWtfvSMQvVLj0nVCRPIb7OOAdbQ26MZF54F8PwyDvp0Yd09InHvc4ldPqMWfsoxAlZ/tWPXfo6Ks+pKbpPvJdbb1z5MHx6uw/l9AJ1N8ewckfUKgydvB/NmU/Cj8LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZCdBUzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZCdBUzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8718C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765246373;
	bh=q7Vjdmv4CGuWR8bigJlqngThit49KREzjZPZtIrklFs=;
	h=To:Subject:From:Date:From;
	b=MZCdBUzQLh3TkgGOur9/AgUN4luZzxnHWS+Bi+bkcak55oKL5MatpskH7IxZPuZnj
	 ztuYvOfWXsazhgEk/aboxYPbWSoomtT+lMqF6aXpcPO8TfGuh4CWbAkfDIsaAn93XN
	 M99t/gL0i5BsLN4YyXXv7Q33qSMo5O9U+c+puZg47aPTvxSaO/hRpOSuCfGWy3YTmU
	 GTvGtjjIBL37bmC+sgdeJeO6DFTUbZHpdc8KPraQnpSDycsfFnjbtYu3SAJz5QSHhb
	 FiOLUzjQXveXCIJ+OQjmO/hlVM4lcBzzycO1qRDesfbJ+ohKsNzPlZBdH84h/0i91M
	 vaCcmwZxkER1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95190D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524637358.414.538748867530525648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3448a9fed69aaebed282ea7b6a68a88f1a239561a7e1f71f160a1af140c7ade9
Date: Tue, 09 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765246373
