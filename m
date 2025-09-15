Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8622F8BC1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757929194; cv=none; b=QzCmgYAnVSgo7TR2/yl99eXKz02grk2auptaF5oox75kflU3eH8kNc4k/9wjgOx3z6lBoPw7B9bWEKaB0Sa519sSdnXSNaqDD1G2/sywzKADqa2AAIvWrGbcVsBxr7XKAb9fTxiA7ShJ/s6Wdn78n4CJYcsdWyB1gmaDukdSUDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757929194; c=relaxed/simple;
	bh=3dnYXON37l2agPFl0dFpaRcMNWrPspWkGDZiqrLV/yU=;
	h=To:Subject:From:Message-Id:Date; b=gBDspX094Gq6+fHSAt8fd0WbbL5rWzggYadFjo6eFPDucBHnvhZgu2kF0c76s3w/ITr1nJ9WwcJhlEyLtVdv6y1J5L4zpo55t6SrrULhRIAaLXMRMEAd/X1SbiA2nUlVewFHyxMcZiCu1JOzoOmSzDHWMygj2ohfIidWJqi/+Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3m0104K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3m0104K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D522C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757929193;
	bh=3dnYXON37l2agPFl0dFpaRcMNWrPspWkGDZiqrLV/yU=;
	h=To:Subject:From:Date:From;
	b=F3m0104KpjQW0y7u0aAGH6iWHR1i1Lsgf/Dj22STv/2FcCami00pPBkp+3gDcpUMF
	 Jn5vQOE9blBwN0oeyYz6vtocEfzDoqP8tNqBg7KzhKrL0KWwNPmEeamBBsM6QJzV1a
	 aowuP/AJNCi7PFPk8aP+ZPYUaO3G8vki19VDzvdDKlERZHaTXKpKuvEk8dgnmfsOZU
	 Dx3qq4ClnOXIz2rtd2l0F8IHsueCOlXKDFO4ZYo17wjJ+7hwUEA3OJpqKW+3ldIO7M
	 NE3A3Zcxrj2sskVlRjObHZmDdJsRnagj5umq8iBBpjl8zgNFe8sWhXxPOfGNlncVbi
	 G9UqZij1uL0yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F527CAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792919357.11728.13270303426543635840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b2188cd2088ed1eb0313d984c6f181dfd2516f1e2513a0a43760a1ffcaec3f
Date: Mon, 15 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757929193
