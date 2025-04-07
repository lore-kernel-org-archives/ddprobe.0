Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4188C2505AA
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744030795; cv=none; b=YmMu++EFCRitC7kT9YXnRpyAuugOZrcxxatASh8MD1+Qi1syQCb4z2wJUo+vmZJSW+jfqCml6tB4p8H/TePSI2Jyid35SN4a4DqZAML+86Z9qj159Rxbq5maPYeLPkLRj5TA227VlmfgXUgyRST7Bo1Q4Msai5IgBqNRo6TnAbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744030795; c=relaxed/simple;
	bh=D/drz4xar3Vd16nUo7bNFhicP2+AkvgNlYOUlq/07M8=;
	h=To:Subject:From:Message-Id:Date; b=qnb5u6CTHd9Aq6ujsmaosbrblNwyxIQ2sVjF4J0/oPtm/ffnaA1xjEruTfEs4c88ce2HDeaObjpCpJIoeMN+ujnOcfUvRo3X/NzIB+vuKz9xt0vllDnZ+1AhT+yPPbIGmrduFaCxiRFM9hijYD9vwzxSNsJgyjBrQR9umPMW6SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4xCmNBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4xCmNBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8271C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744030793;
	bh=D/drz4xar3Vd16nUo7bNFhicP2+AkvgNlYOUlq/07M8=;
	h=To:Subject:From:Date:From;
	b=U4xCmNBKabONLbPYEpxZHyKCOEteIYRWYnEhyxuFJVhGRn4LTN9XFDgNvOGgCnm8L
	 cFEBH5QnTW8Rh+7mLGAlfxSoLNqcpgbdlZiQi1TKns8ju3vMaa1oFk8FlKoik1M7Ly
	 U0RBhoLOk+Z8dCCBMhWqC9utQV9Idao3csVPX/HRxXg3y/z8+eYlwK11BEYLPwXS5k
	 7jZtNgfH8SRLilxqNHH3ArUGTHJOmt/UnBbsAncMTao3AqEZi7H3s3Myk2z7qN3RpG
	 dy6O8iFrBbTY5zbctWXa7LHzzsbxknGXn21YM4FG1gQXCYkl+q0UopcR8NysS1xt6S
	 gvID0Xonj6evA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAB2C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403079360.30585.7208132040096006537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2840b6812b318d7011f28b66798c300ac91b5609eceaf42e4934442a5de7488c
Date: Mon, 07 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744030793
