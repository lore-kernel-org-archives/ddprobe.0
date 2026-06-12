Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409123D8113
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781249194; cv=none; b=a6SPfimL9mPHssw5Bmx1XLmdsNeF1x+siiIqxW095jOFK86c9BdwCSFyAj8zLU58LW59P2IGcm1vGTaRpLAHT7SHV82vncyjx98bM/R0rlfOjUkXU5M3rW/Xp6esSn+iahOI9iq4DQ8DZpZ9gcPItIYVO3x2X4O2wQrxg9Cd85Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781249194; c=relaxed/simple;
	bh=vxquygDY8R6DciML/+AHBEQJot5iOZ+yB8oh+Q4/8zE=;
	h=To:Subject:From:Message-Id:Date; b=ZihAjBdWcYOYQOPuUaVdSxkug03ffm8rdW5kTigJyi7Xi0PH7V/QN++lQr4fUeTM4tv6N35CkVoruPx5GWbwGgCH3vxbKRDDmoXtf6bEw463a5rnFMf5gsz21Nmmi1ZB5f6HdhzmfawRTYKMbS+4Yqt2z/wlQebcodbahU4SqpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4Yfhknh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4Yfhknh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5749C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781249193;
	bh=vxquygDY8R6DciML/+AHBEQJot5iOZ+yB8oh+Q4/8zE=;
	h=To:Subject:From:Date:From;
	b=U4YfhknhMxXhHVW+Mv5fS03CvTJuYsL7jfizW124QyIxZU61DzJp6OZXgOkZ2lTQ/
	 BFx/9Hn1VCfIQGR3uMzS5w6VSC2j+NVmsEibEkuP8iu+yyLrM3y8bppGnoAtxsBXaa
	 M1DZaCXqmLynjeiIHTUdMG20DqM7vTtqMFQ35hGWfwIXym2Qm5KsO7oc03YFCIxOg6
	 DVe+DLlzePMKlBdA95fgvUr9mgStcibxhiJzonNDT4tbdz7FN9GuSEmkqN+Z371ISV
	 CUjFtt6Wr+3HGWsyKopa5aG2C9maPic6+LBCyt7pyC+CpJ+Ic1WP0g4j31AJ63nTgw
	 0u+G/m2mX4p+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA693CD4F2C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124919368.26674.10787664229912050452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd26fc09810527ab2b0935514268f45c829f5f54c8cd9b7cf25619f02522d46
Date: Fri, 12 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781249193
