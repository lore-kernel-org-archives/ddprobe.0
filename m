Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C971876
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724216754; cv=none; b=TT2kMHIbt5bxj6XIGfNdirfqJyBn+JGcKzI454oIYQ7CQVizTsKN4Oc2/3XA27dUE58ODcAud2zkp2orboCZ+WHp5c0SA/XTeagZSwdrdQyy9vtS3nKElT1eI6bNs6q1flN959FwdSO1fbOhh8ekugj1hbghoDLntYD6VFq+UBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724216754; c=relaxed/simple;
	bh=HzIgmRSqtCbWhITOiuFinZfrgT43CZn9jyNO1KrJ1ro=;
	h=To:Subject:From:Message-Id:Date; b=jEN4qPR+MVB5bqyMycWtx6mv0L8kXrUBkEMQvDbLFhCCpUX1FFQu+ItkPmzXCwdvn4bOyRcBxaPKchsJJ5RQ+lbpELudISnwA1SUwqPRs0+N6VGOE/hxIiO3ztjyBpgZUecNJxQX01QRzNeF9ReA6d2olAv5Dk9wlMjDWHHB7Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A20S7TD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A20S7TD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02ABC32786
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724216753;
	bh=HzIgmRSqtCbWhITOiuFinZfrgT43CZn9jyNO1KrJ1ro=;
	h=To:Subject:From:Date:From;
	b=A20S7TD9g+63h9a9v6wsftzRZ+LjCjzOONDlScA9gL++4HStVTnIh18c7mIOdMMdR
	 2/47Kc6lEIE7UGXwep+UAhmYM32vx9WQ8Y6MRtQvhSHzd7Vt9eR/KWvqKMxvHJacl4
	 po5MCdc30Vi6/DBMRSH5ZO08MqRvApYE4ynnpL0PYnRTOGH68NUX41P/djokNJx8+i
	 RgnkxouDn++AxEU/Y4uDmU0BDJ1EJBSmXdaX4VkcMVP58cJtkQJ+JYvvo9z/GUnXD2
	 +YOXp4V0ynUFLoh+uwmZBanLwbJRCkmaaeDDepRv0x2niZe+NBrHjvHOJUBvi9zhrR
	 rZHWxsvkxB1Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1FCC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172421675359.28149.14069911434568109007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba843d56aaf5e30bb479bb337533151d7ce207c13a088e7caa1a83b294ba22c2
Date: Wed, 21 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724216753
