Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273B81EC00D
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725398154; cv=none; b=PpMtmqyKX871UgmyUGg/j5bdB46CjjG3TLmR9KRWL+OpCF2iM+PZsVx8D/xshLte8toLmKJQ9IAKl+BalZ4qRvV0esys9Q7AaRpmhH2/gXPK+zS96so6DzaorE8wyQIN4Smt80gVJdSI8FiKwWrl7d2mqap/X2rcNSYKkWzx7Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725398154; c=relaxed/simple;
	bh=iHcxdDxAzLQo5yOBPmlMttggb4ABgt5qgNfe/nmATaw=;
	h=To:Subject:From:Message-Id:Date; b=sWsIR8+PMKpDEuc8FXy+VD7A0cjAgwlFcbw8oWNhN18yywF9A95h4z/iX4cvR93pM0MuGbTIT4SvX2GPfNfc6mOnH5WHtOMsJzSRNNUsGHTtAWZctspE91woA0rEKPJcRxXYijjH34tOSAmKs1mDUjJ991U60WrQFzPFnR/jQ94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTiiZ5ah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTiiZ5ah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0114C4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725398153;
	bh=iHcxdDxAzLQo5yOBPmlMttggb4ABgt5qgNfe/nmATaw=;
	h=To:Subject:From:Date:From;
	b=ZTiiZ5ahUmg/v4mPJ6jF/QrC6f1oy2/MOuIi3t9gP4Fthufex9cUXjuqb16oZui7C
	 qyjqyqwUij/IjJZMTKJ9QbM3heP/PuWVxSw4R/+fTMqHyZ//uWMZvOiaKlKuoS3Z2B
	 rpTztPiBC4qmbjdJ1gjTSEyJReqH9HSxe905StoWbEnehCNS3pmzmLZFzgXFEseuZV
	 TE7peWVw4+ZaId6qUhAhAVhQ9DZZV6T46bAt+clhMDAHozudG9ma8QFs19Gg0dcRzh
	 xm5ht9niDn2wcJrLzXbthPNnlW7AEkuySv8AxH8Vcv+OhXD3KtJpQdi4Ol5K6Ak3b9
	 /sl1+cgTemb9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92058CD343F
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172539815359.12328.2655094192796880087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8850deb92ec5b0594aab9585e0c2bc4cd1b41d0b10db51572be3d3450dbf95
Date: Tue, 03 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725398153
