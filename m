Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200A521B185
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769551434; cv=none; b=rW+/ZB0M3jMi5T6T4/YkXaN2c48t6BC6DCYRHOMWXpPyRAgrXt5TnI08o2Jn0VkC8I0kjyvlJKT0pyhBfnMnFc9lSMASTOIn0H4891MQSrPSHizlEci4lgZpWLSne5UNUJVg5vihFRAvYsyCXfbhBEQla4y3iNkT+K6ehUe6Ht8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769551434; c=relaxed/simple;
	bh=ksWoOL3Nwcn1+hWxDDMjREleTg74bGlx1r9wIHVKlr4=;
	h=To:Subject:From:Message-Id:Date; b=Q3D8QeoIQFds0PFavbFgIpveoGCQcPkd+xgWe45EOVipGAj7n3kPvgrQcdZIEsrjFTMklvG1bjMJlRP+fxi07vuXUsx2KWTZcmy4MJBPs1NqJLXILOLBgzH1utjbgtfPzsz/FCExh65zuE5RgwS1/spcFk1Gs2GVTiaMtNyqKFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWqUursr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWqUursr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9A2C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769551433;
	bh=ksWoOL3Nwcn1+hWxDDMjREleTg74bGlx1r9wIHVKlr4=;
	h=To:Subject:From:Date:From;
	b=WWqUursrktv+dIgg1ccemm6Z6SnC5d7BA1ASHGLHHQFQ685+uxLrK+TfwqQSJuVyt
	 b5NSQsuCPz8ZjLSIJrxbI9wppudsApSXpVTkmSzvlxMRUz2SfzB/IKKHII3Vg6IfNp
	 wiszdmJxKmAyxy+a3rrLdx1udA8a+OlqfUEr6J1iK3ENgxAkBHXgNBukfjBZXgjTX3
	 Ae13D8ct5g6dM5jLGrxXJvO47v+jyqj0z6Ns2yBMXegU3tAvASKHzMRF6MyY5YeZjL
	 ykCbg/iyDNjujlEy3hwU9ASTWGHMrYI8VnG26pvfGdBpg6NJQm0/E7VTi/CdumcxBj
	 BsxePdC+zSmJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9087ED2FEF3
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955143358.10118.4699782874483808951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d11356021ebda25856237f71c4b4ae086e9bfefa7e118c595adbef20acf583
Date: Tue, 27 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769551433
