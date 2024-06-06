Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A6E1DDF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 08:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717663643; cv=none; b=Bs6UUt/yh8PtdrWGMSuRbFwDpPc1MHQmglxbPaCKGK3uJ+70cnmpAm/8kOS3ny3W9gaRoRWw+FpF5h6ADQ6cc+5Cdft6D6iuriNTodPN07qf3Uy+NJNh4wk/wCjV4D9IObt1IBagiL7pIWZnUMU3os3j9G+b4Cj9cax2YNl8x4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717663643; c=relaxed/simple;
	bh=3poRl55bi7hzxTAW8J5irpmQe214nDtIflzcJPS5uVg=;
	h=To:Subject:From:Message-Id:Date; b=acaU9Et+oTed8QOpSb4hisxq7jA7ftppfLGewHvIJkc2uAD86DAs6ButgTDxqxpQJYRbk8L9q4sN4qXOtlFeKCc/BDL+jIwvS9RdgZ0e3hROTSSWtWZgMRnCr3sJytTfFWCx4ecldQ0Mxlpz5iIMLPD6dt+ggzcxy7z3qWfkR0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbpGvQV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbpGvQV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E0AC4AF0C
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 08:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717663642;
	bh=3poRl55bi7hzxTAW8J5irpmQe214nDtIflzcJPS5uVg=;
	h=To:Subject:From:Date:From;
	b=SbpGvQV2kMMnhhlCHioIah2jktgiA9IFH+SP3P4zcIbCwKU5nrtGrQh9FCxWOg2tE
	 ULu59QbU9SjE4BvjmvXQU+BMrwh6WIlv0piffOBHiNhcrszIq/qeXlNplQgEAJG3Wd
	 GD5rTbzFCwVkxR02C2ECFPD2AQvkKBuGbpT6QRcRVOSVifZJRvgweC2voE274j743P
	 YflIrnPXdbcMd49WUNm2q3BFvHvsaXJuxXwh9MAiXXrcOLMHnUYA/TZGrraYa9c5Tk
	 msfOQEA1CGKoTuAtkWzrtqIklnYKwIWU9lH+qnYsPzcpkKHm8W54iwMrRgW3Jd4h9b
	 Kmyl2/8wEyf4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83D6C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 08:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171766364281.27064.2146694772823228940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8150745ec1b65f7859933bd699f2df1a20d05089e179e1bc43931531670c36d
Date: Thu, 06 Jun 2024 08:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717663642
