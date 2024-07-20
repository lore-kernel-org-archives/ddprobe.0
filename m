Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C237171C1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721513754; cv=none; b=jsQDKa8+KU2xdPZESl641y6HH6JmqodFEzyzEV3LQd5AsJvsOwnERGb17mm6QYNjPJ9duClXhH4VccyN9g705hhqY2s5yEdAPDGZONep4945kCbKdqWdx0UzdH33Vnzss/YITkwnw+8MXYp5sy2d6YlSIbBdQRDi+F5RFKLdVUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721513754; c=relaxed/simple;
	bh=p88w02iDZOoIKgeyf/FxX/UiH5luiJ8/a3v6SrPJB60=;
	h=To:Subject:From:Message-Id:Date; b=Tf6ytLAKKGHrjapiNbnk/lnWreoUD5bxNAPJiLJ1MohE7j/MEfbVzHlHpUTDfhyHh57639ec69ZOgUYSYR2tz29+Hm6NWWkTqq+WdOnv5/0NAopJN8S9mo2mDkzUkl09oohSy0fn+5OdVvTk5YaRwKjNS3k4N1t3BYqyA9CKQTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUieJSaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUieJSaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E50C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721513753;
	bh=p88w02iDZOoIKgeyf/FxX/UiH5luiJ8/a3v6SrPJB60=;
	h=To:Subject:From:Date:From;
	b=BUieJSaKkL8HyVY1nMypbg1dOWrv6/jWV7UyfMcajId025PnM2rTQDH2CZIA+7fRO
	 uo65z2QDoY/5v0o86DZtby44HbxEk30gtzGa4nC5yeYmgGn/8XLSPpxEHYnO2YGqZt
	 oEpgLw1/pnfTVEic4ZACfdGqPaSWhVYBMV2zyson72cEw+TQsxVc4nVHHcuZTzSLqQ
	 UAWVVUn11bhNiHFJn4ohe0b1DlDcei8zv34o318flrbAIhKYaQumwqJQj/Ru1FXlip
	 EkUGcFj9s44SNC4xap5RcjNhFv2K0N2cxLYtJcFHoW4fnPFRotaxYF286t8sTafzKa
	 sHRnwBY0DGAsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979AAC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151375360.18188.18098478257204437425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7675e57f8de3f00868bcd1aa85261528cc26a821475766ae75a02e2a9801fe3
Date: Sat, 20 Jul 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721513753
