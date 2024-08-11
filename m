Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6EC1547EA
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723409754; cv=none; b=CUI25+xM3/yAB11MubpkrpkN4eLZedaMUOOHRxSsfcKPE4hfD99hBt3SSGt6XjtPkfbRtBcQqRaA7wQmmd25nXgNX8xb5gUk5TKpiFSOknEQXnDjBjO3C7frRkCm6/t5G06jQdAT1t1ozg+Gugf7QlBooIT3qlHb1b/RvzlaDLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723409754; c=relaxed/simple;
	bh=xLHC+pHtwIgp4SU7Sqh1K0Ewef6t9j6MNaYRDJXTaDM=;
	h=To:Subject:From:Message-Id:Date; b=Qdr/VOBLB6zFH368KcqE3nFnXBxSDwU2fqklKed/Zm2j5ra3sJiDV9KPgVRaRQhwAhb6+KB1tikhSVpa67mBPpcCbjU33RQ3LgH4yfgIJRaUfIGmUTz38wfdpWAHWENtxYF80lZPDX01i9Y6/udeyAZ853urSPjQ/XHqDdBOtkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcFWhS+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcFWhS+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AFCC32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723409753;
	bh=xLHC+pHtwIgp4SU7Sqh1K0Ewef6t9j6MNaYRDJXTaDM=;
	h=To:Subject:From:Date:From;
	b=FcFWhS+QpYc4GUNlCHDoiZR4FVcDqm876+/3nXzQtoCrQpXomWkXSyrQ02UEllUU1
	 wjPP9MIfxkFk4smFxdy9R52u6jksu/+FLHa9EJWK5AaO+w26al26ajEmFbIA1OdHWi
	 Y30uhchgLbnxTeSJm8rfbq7PbtGhXhdvNx144HO7bKNdCRUu+5WKGxYaMxw4rMhtSW
	 Z/Y4rwPa8OcEPv12SgULW+UjIKsDTut0IgXlPAFJvcYLEYuy0DjZt88gJoPDUH/Lsz
	 vu83Fjgq/tv/RN0Lt88n/PnKFEymmqLMUU2U0PfBM4ItzJ4tY99cK69pL7sfr95mEc
	 jEboDcJFO0nIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09D7C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172340975362.31658.16949340419846417582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62cee8cd9d3b7b65c1813809b24e41ded2241a981cffcf0b18d5c22b7f9b414a
Date: Sun, 11 Aug 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723409753
