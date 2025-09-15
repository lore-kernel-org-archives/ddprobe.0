Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1022C2E2F0E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757922594; cv=none; b=q7Xmft8e7fpjXfRlfD2yiKIAfycOg3Pr2bEJSp6fGbcCM/tdzbkM8GVgr8ZvG5BywDBLPjeJlSssCmosL5ytaPYtNn/C5+QgAb27FdOZBsAyWH+MnQAEgLNuuLWEDtap30xuvf4qoLKuik+0oaxzntdRgv2mf1mdjrTIY9rQYa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757922594; c=relaxed/simple;
	bh=O72jNUoewz5IatRZFIOrAqmV0ztkNjuZlB9U4v6LdSE=;
	h=To:Subject:From:Message-Id:Date; b=DtOKJtJVUJOIsYXoGBYL5eg6CslgEk68tJiyMZ82ggMIWYtqrI9Dslb0kLzTmQs0dLjQhxFqO6x9uO9jtlEVDRKUawnLoOThv4+aiBHiaRLWUcCIiMrUJlZqBGJb/v5BkLzsN1HqD/mPSK1JR1SU618KM/8zY/cTew9cBQwXHU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjrw00L5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjrw00L5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C9DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757922593;
	bh=O72jNUoewz5IatRZFIOrAqmV0ztkNjuZlB9U4v6LdSE=;
	h=To:Subject:From:Date:From;
	b=gjrw00L5KmqNxl7wNecQcB1AVuL3/OK8EWsAXDKEF/D15zwwoS6z3AzJFU5yy6e1r
	 JVQAn55n17k4CEl+mrKxy662ujt2aHKCWJT/p5dHA01MdYSG7eXh8eVsDkc80B9KzL
	 hgHAG/xJZ59HpAx9k+c+wuYc6imoODF4eL9sgzWlRA7sce0dJ+M6oiLj/CULP2YqGM
	 VD9FCCe4Msz7xCstzGrjZBr0M1b9Jm6G0+Mzmpkg20L7lsrHYmy0QgJJ5gAi1ih4Cw
	 i971K6zGi5Dv9XHRPR7nn/KU03Yfcmq5+i9X2PIlrhy2vGIisKTPxQ0mPc2uRT38yK
	 TnuVMTeXGJftw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E8CAC58F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792259358.21576.9382602434286858827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529bca51464fcf29f9f6676432130f9cce37908bc56f59bd2c7237d9480c86c8
Date: Mon, 15 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757922593
