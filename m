Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAD82139B5
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752778194; cv=none; b=M1vLwe5Lu7fnVurD4yrcU4WjlRb7vFDVg3z0WmrbOzXXwtbeBBHkYEkDSZadg8k0OPLeRi5/fYt1VqQvp1YEuhgu96XCzxSC05CYLOn1EmRVletz5Y/rdklOKPVHeRLE6xTQpHjjp9OKgkaSps6dRDnMV0w1S1mFMn4F7sIhP1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752778194; c=relaxed/simple;
	bh=8dnV9sJk3mA3ZQcb/jXaqvMhUp5Bh2zrRpEIHhI1N4o=;
	h=To:Subject:From:Message-Id:Date; b=EDVTMTDDrn26pb10ATZuGgZg59ru/DnUiI7pSSHw0JTx+ffYLHasl2Z/mWhwafjA+Inx2dT5aAVfYlmmd1p78gF7gkn02UtmHCbuu7esUI/3lbWyDezKXAzz7M56j8UQyuIG2gT/ZTBKB56AajBUzkstQIGRweVQgyLVoBocHoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3MBpD+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3MBpD+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EFEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752778193;
	bh=8dnV9sJk3mA3ZQcb/jXaqvMhUp5Bh2zrRpEIHhI1N4o=;
	h=To:Subject:From:Date:From;
	b=H3MBpD+Qd0fYu5L3FCJadsfUFgIAVlwDKeyKmfKovK3v/opk+F3y9IojxHbNfj66w
	 gzTe1Wms6LQsJz4p7lGiqNLDMilKTV11zE6uz3eeq4rW2szNQAc1nO2RnEqonA0ncL
	 f8GZuiZ6ot6ElnXlXgoiT27t7VT5b2IrMbhDFTmcJCmr32Q89pInoQI9pN8jLOd4As
	 VY6eUkWzKkNBMMLYdAHZsyxFD70YXpu7eaBraArvAeM5KsqlMHXZIdvZn7xvpl4jWZ
	 p5+oVpkFeBHUfvseteb5y3wpofHYRUMvGRra016zyH7sd2fIVMsgYEmVovu+b6Xh+y
	 2FyFofULQljpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90114C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277819358.17793.14026794998281072417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2dacdf8a688086b6e92ea213d88eca98eb69683159740902ac980fc0d6f5a9
Date: Thu, 17 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752778193
