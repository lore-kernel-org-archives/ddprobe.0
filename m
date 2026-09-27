Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A93175A8D
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790525434; cv=none; b=U7XfxeWSHFuQWa0w/CxAZzB3dYkAeBNggQU4IXSP3eql4jZ+QAqg5rUa+RKC+yzKjq+gFCaOe42t6GM4cX2/9ZB/ph93wpGCnr5PzzOf32zT8huXnAAN8a8LZu7Cv786baoLipMk+If6elQgogMY8O3ihxF/ujb9A+Xr+2oBVFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790525434; c=relaxed/simple;
	bh=u4IynjBscgFoO8uVohgAd0hTeRcd3CAUHeD2SC4KGVw=;
	h=To:Subject:From:Message-Id:Date; b=A9H4KM/IgWgdFjVqfmkn4+VkcMMSHZKv/bp9ZS59oeloEbeFXxXj6UqRi17kDW8OV/EjhSTJOOevejqcQnewOluAcx/vaDMhE5coz7kSZFJI4+McWruXzjdb7+1NVUWV+iPtWELEQM0bYtonKL34fkJEVdI8dN3ediLl26bXwKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odQ9xpqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odQ9xpqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96C5C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790525433;
	bh=u4IynjBscgFoO8uVohgAd0hTeRcd3CAUHeD2SC4KGVw=;
	h=To:Subject:From:Date:From;
	b=odQ9xpqQAJMBTFtqnHN7epF513FIRc2d3pC3kJdzi9DLUZaZhEHfpMcBuMs293hLD
	 LFyEsjIeSPN2xuWJTizA5VpfSCvLBJRI2OHaT3HY2S5O9OiyJUzxxCnIcHROZV4Meg
	 lYKcCg9EoH9BjaBiSqIjCerPa73kwcJyZ2HcAd41BXsL0ogDvwIf+6wB5v+4/zDXfA
	 7D6rYDLcHQv1gMm7pqzjOc4ID2moRCkNoGAG7OBUBphubfQfYe8YCbrn9Gkp58DW63
	 U3Zt10u9DhyqHLptEcCRteiA8S7JuIwZVnMoJgOFiBuXSf2l7Qml4aJ5Rdzk2yEQHM
	 K6NVGTfxFOnqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B058CC9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052543368.12349.17764577406303123980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f047c6985b7cdf91aaf07cc96cef89e4adbfeba1a68aa8c66647f038d20b665
Date: Sun, 27 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790525433
