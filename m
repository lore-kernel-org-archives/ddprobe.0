Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EFF10949
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 23:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713914423; cv=none; b=IPf7zoidCDCJ3fzJVxp1xxrSqBL+aO8H6Sx/R8/yLBotTUgIQ/NFNZdRoPqii/C5YUNQ3C97wku6/DW/86ypy9rwdUj+FRwzhta1vVM9yHD/XwNSUlsnUaadFm4vnAd45JG4tSbI9LDMo4bXzpZAMWx3wF5HKauxJZnNzR4il4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713914423; c=relaxed/simple;
	bh=by42ZhEVD5KHn+f6ehVEfDapyiN9KXJ62K3zu5XmTbo=;
	h=To:Subject:From:Message-Id:Date; b=tEJ6Cii+fs3P88QMmkdO92lUczvXjM1Fd/h7daijwNVwhQyDWFuSHp29bi9w2QPgstLYBQZkJ3WF0tzd2pau3p24dpIXcUsFAeZY6binVWQYPNz4Zk+jC3vTpErB+BJOAETEqEC/dCcO5JW+b/796nPiLD8C1U7b9+eReIAShIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6ynHt/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6ynHt/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E607BC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 23:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713914422;
	bh=by42ZhEVD5KHn+f6ehVEfDapyiN9KXJ62K3zu5XmTbo=;
	h=To:Subject:From:Date:From;
	b=G6ynHt/GSsROwokme5I+O/CLYCyHCQQWsIP4/gXH4dGggLzG4FYSzJ8yeMMtrIYT/
	 kI2SJjFEriWVwmsJOPf4vWwnlKZknJItUy1tVp9hfavCKx2xLWSrQqWmZGmfv203tW
	 CmPPodTpV8287PoJ58y2lI+jwEIPVNbM32bLH/amcZ6qpLPDOfgTOW2kTd+prZ0na2
	 1wuUouv5fFmXc1HzhrZDEg5CYEF/PWE7q10WJY8Z+4QqOzDnNOlqBwCBKSE17dEu5i
	 Jn+JzUM9qy7IgUE16APVtlqHhIpubyh6/gYYnYM3xpZuthtcCxMpyR/qVpCTXpYqqN
	 99WHvaN4jEqsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F8AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 23:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171391442281.4899.10174529623303001763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f410cbbbb976978829c36012c2233c84a1eabd70ff31d181b41ee2c7f7cbb60
Date: Tue, 23 Apr 2024 23:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713914422
