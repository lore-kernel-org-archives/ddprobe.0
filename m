Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C25653389
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722634554; cv=none; b=tYRbKtyk3GPW3a4tgwWhdVTafaJsNKGxNLExn5iCp41rEDWQS/NkhZ5cPLkHd9sZfiRGFPtCGYavnvaQwtgCymLC1NOPhsJIKnI187HIl11TWq9Fvxo/4cYH70PngVTlLRV9b8r1jS9x4L8VKA3nxKqqgxihY/40v/yfstOQ6Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722634554; c=relaxed/simple;
	bh=w1I7DT78IEghUgrpk977srvdPgb0So5S12JUgIyjkmg=;
	h=To:Subject:From:Message-Id:Date; b=XXi+rLCRbTeYJJy3CTsm3Of4ZX0EqG4A/ijOeaFfiwaYInBp9p+i97MdrVewzNLk7Drv6TEFcuouiUt4XYAGdkObeKVI0hfRIDf370bI1Or+KSHzToipzaXiwsDD5MnplYBDd1plj+rq9IiVkT3ctjaMkvE9KuVd6OGB7DO1b8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCCqdAtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCCqdAtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D20C4AF0A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722634553;
	bh=w1I7DT78IEghUgrpk977srvdPgb0So5S12JUgIyjkmg=;
	h=To:Subject:From:Date:From;
	b=ZCCqdAtT2j1YevjSqRTGsv9C8kqjaET5+WChc9vry6X/ls3oVoyH1dOZmQX2QqlAm
	 CSzAZ/1yBy99NmuUnZeLyDTV3QwXfliumhZGmd/YgYcePxc4aOK83MHT+07/jqLLqa
	 q2c1+k88tWUMPb0tZI1qRe9JwYsqVNG1H7vYz/L7YY95V554QU0RlD1qetKOC3MVmi
	 DsPthu8KNNDMvZZpftj4PZYDvdd5XYK1WkhDnU24Ji+v1XVN2LJFXTPUbSdIdRqSKA
	 ZF7annvWUxHWI7JeVgRHWHQUcmH/0UV/p9c7z7WQsTSnPYatHXoSLfzmxDnA9r7JFk
	 J9XdsSaH3a6xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1072C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172263455364.25864.11998389127578121128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367d62f65c1c265e285654f048ad53b6c519a603e9ddc4669ddc7503db6232cf
Date: Fri, 02 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722634553
