Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEB937E306
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768239234; cv=none; b=K2G1tlGKad1XLuiTLjeWsmytx0P6TFquna3y3q5+9/mzQGenw8rW8OPPBAgPfLZTUmniFz/qKqHo/ppfw33ypJT9DHzUX+hxY3fBxDCVMdHXsAw2mp3IJqOxk7hiT+G4BMeCQn7mhQoa1nbN55OeoXzpwiDCRfTsFvYV/VBrbOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768239234; c=relaxed/simple;
	bh=cXAkm/BZxhZuVBK33YWpX/xcvk/FePMWP4CPQuKAnl8=;
	h=To:Subject:From:Message-Id:Date; b=ZDeCDozv+fSzpWiwzQVVhtbU0+jk/0erS5bg93hSwcEt5+YAJUzXyltqmcQb9S5WhQUR8nePHPupdKDx+zlTFYgjSvXLqz/iI1SOcPiV04pKkSXgU9f7cgLATigSVxlIA79TlPyTk5FwoobswKWnLOEjZVE4zZjUX2zYsXOMJ00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTkcfBk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTkcfBk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AA3C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768239233;
	bh=cXAkm/BZxhZuVBK33YWpX/xcvk/FePMWP4CPQuKAnl8=;
	h=To:Subject:From:Date:From;
	b=tTkcfBk6K89XEQiKPvrha1IS9+pHc3WfHDvl3L9K4TEpK9tR0VnV4hj6TzH4BmR/C
	 aqAmop5o7n4JESWJh79XxwVVH10uJ+PEYzdCLTqkpgQ58a3Dl76vhE3nrbMUg4a27N
	 HX+jxjTFECderbrVstk/7QZSkFIPk8InNUbmdwso1lYQFjpKe1FGMEiTqQcdt29G1u
	 t6ZGmfDHRsGqvpl5q539VvJpDZrbbpGaDdxzKtLhwRleMxHztGQ8aqK/6eMnFq/vCP
	 cbcPcLH2kTfC3lUQ94lBjFtpYniYNkbwtL1kvoRawd8muvkPYlOzAgMDLSHDldjrX3
	 I4Y2yqjbbDN6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9418BCF45AE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823923359.14346.11863990409924836813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f4bb25e2c028f3018129ad3b9816968ca736d023b2722c60c78296f24143e9
Date: Mon, 12 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768239233
