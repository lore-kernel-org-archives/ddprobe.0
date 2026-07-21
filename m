Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520E94657C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784628514; cv=none; b=OLbdrK4nIOXJb8cr8u+Hw24hice6yyLyjVzfTRcGZ3MS4N+SkFn8jCFNW3eR4nsycN633zIHlM09//HYsdgp49as6JRxHetPEkCiY/0fHd/U+BQtZcC1HtA6ZYpDrnVlXWRR1MteTWlozDYGXLhHry5yRn90udrIQv+H8vjJD/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784628514; c=relaxed/simple;
	bh=7cOtT7gWJnKdwT5d8koyCr+c51tsBD2sGh/1L49uO60=;
	h=To:Subject:From:Message-Id:Date; b=pXXRxcRI6p15pxcRDPnK1w/0lRC6bxv96dPVIR9jj5/u8apNMJGBQJyPzn0CkfKxydTBOCTOgoc+IQ8Psyo0ALtMiev9v/y/pQIV0E/tgRzJHmgL3ffVYRu9rfZQEwfbnvp1jx0N2S6S5Oc6coX0GICb8Nah7HPZFSINEiAd4oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LK5C6xun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LK5C6xun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0177C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784628513;
	bh=7cOtT7gWJnKdwT5d8koyCr+c51tsBD2sGh/1L49uO60=;
	h=To:Subject:From:Date:From;
	b=LK5C6xunpFTqxKlvYZjBvimUq/nFExUbJuUbjv3XI9DZe5WdyuzkNItrYiqCbr8XT
	 a0Y1FNmnZ5dA0sXHbaJV4Ac+8F3DoMZElwK1z3vkxmojDaKewY9trXN4e8KgpNHR/Y
	 nVC7zlSPr0RzhQMxluvYtgol1uhV2f3FcxEBo6D28eBqSxaSw/IgGLI6ciKtcFArl/
	 ufdxcYkrDv/o2p5ske0sKYSfyzL/FPN8wlGZyF85H3ZdcLnaPmarRVbkvtg3Mxm0Xu
	 MevIazHfA2yibN4g9sFFVH4hJnjCGIPcwHotKbyfOvJpSKN625lBeIYzJ10i/wAjbx
	 hXuh1ywUaIOuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9151C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462851368.19246.11984735425583110238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b2556f6c8da36534e7bcc3108b51429116022a3c85fc072ffc5f1792104f40
Date: Tue, 21 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784628513
