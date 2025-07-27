Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B001E32A3
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753630194; cv=none; b=dB2CQVqEjweQwuxcwNGIz79fUQ8SRapsUQ9FCFUyyhfrzH2/LFZHYNxfV7BBMqAoil6o4ABeBJLE6IkgOz25oM94r4KvkrdrGxuYk3gCjCN/Upa+m+G+dP1Uwhk/YnmCjhyqkc31HMeJWD4ULezY/wBVGolxO+6Tpzk8Qk1WDiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753630194; c=relaxed/simple;
	bh=bJ8CtqBG7+/y8i8yQph9m6xjSd2ZF+vv63ob70dF298=;
	h=To:Subject:From:Message-Id:Date; b=mb4Hjy0TrYySb+ZF1JgdDsdIfm6HeiVRtDFZ3skn4ULYwK5D5ZW4yFXsQ506mOUP7s4JUhlgBitb29q0lnNG/4SPwN/aFXIQOwA938DqOlFM25cmxm1Uy/sufgEze4/AYMEAC+cDaFce4vx/SRVGUIMAGdLtHVkNafVrFzBID0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4FKhcN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4FKhcN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B9DC4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753630193;
	bh=bJ8CtqBG7+/y8i8yQph9m6xjSd2ZF+vv63ob70dF298=;
	h=To:Subject:From:Date:From;
	b=C4FKhcN68p6H+o81fczZbYBKVU39ojPPCT8ORmBl+OUFPplsoe/Z2jH7PE8439J6d
	 uFBrx4Aev+aXjKcQGzSfw/YBSB3hDF1Hx6MkjSvSL67ZYQs3m0dH0eQcagQ+VgfztF
	 +l40WFnzUKspyL2Av0cl2OAFsdJJc5Xgnzy5xMb5jd/Wt571NoyFkJJwArewgKNrC1
	 0EpEfO1gkFn+PviBzwotskiDHpeLMuR8duuHwGDrp9PdRFLwSR7RHjtJonr4vhdOIy
	 ckQ6Yj4faMqNbBxCBNsaLBsFi/HwQbZbsG9EmKbM46z8LcEw3iGjlI2wpOntWIq4tt
	 ZxsIU3O9TLCzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DAC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363019357.13085.18338665166108257797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588780ae41e1dc5a81898d0cb5c28f8c367156938a11bb32a03deff94d52e5dd
Date: Sun, 27 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753630193
