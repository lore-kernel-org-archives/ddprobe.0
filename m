Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EE81EA8F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721336154; cv=none; b=PnHd4k+qK/acgubUH8oIaX3is3leFd9N10cd6tC/lTzkgQIwX1Y7hp5b/zZJnGjeaaNtY50NR7vET5sP1eGfT0Rsjf4lDnKxftZrx8zRJfO92e8DuKWLMqb8BmiyEu/9RivdVyDC/aOmlwnrJeNhnLG2vzrHm7Gl6UZZymGkrC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721336154; c=relaxed/simple;
	bh=s/2eTh62DpE3wvv8nZyd/F48kjYYbSgdEEzdT/cUHoo=;
	h=To:Subject:From:Message-Id:Date; b=q6lKCStau5X+Hu2JMujkdNHM27eENR0yLmJm8BH7vBcD64gD1bQpdsUI1CqVwGbd0btVXMrYjkaxlQSm+0VyGUANTj94ZRG9uJieSjh7tr5Gz9ZvdtrC+S5EIO43emxol/SiqXK5Er/bTA8SpIm92JTViOp46onDNzXMg1exRVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfhjTXfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfhjTXfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A954CC4AF09
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721336153;
	bh=s/2eTh62DpE3wvv8nZyd/F48kjYYbSgdEEzdT/cUHoo=;
	h=To:Subject:From:Date:From;
	b=cfhjTXfQiGPvg5PkQ5XH3oV+eUauCU78ogoa8Cn/EIgrjFuUVbu++JUc/lHtCZxsr
	 NhtQ+cOfx59rtDpwfDL2h+hi8/wid0rfhu+e3J/l4HBAB7UDpxLo7gp7Dh4DfZB05/
	 0hTpIVfixJcVqx3citI61xBsh3MClA9GSDIwfUUoXPiHc62Xii2D7GR5VYNYqeklTI
	 TWSFqb0CIpMF02EXAtZH2scSVqSA+ZW7IkNTQCpQlwcOts3FFCJ31diMvdyPXQBDxL
	 R2NqSF+0qD+oNZM/JtQSavqsPiDCZ1QHLSibpHratPC0IziB4ZYNUOq4ExtaNILocg
	 OrrVCF3JGg9nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96058C3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172133615360.31452.14925917871754958485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b26893817eb4716b5bbeebe38402cf71a1ba2812bc6fa9cf0b6a26db0d6c71
Date: Thu, 18 Jul 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721336153
