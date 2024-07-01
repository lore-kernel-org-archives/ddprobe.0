Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DECAF9CF
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719800663; cv=none; b=uygFRqypJwoLK4F2TrcmNZwsrFrN3O58HwU3hE3nEVZVzRafdwB0FiXVOn1uycqU0rPAEl+rbRtPNR/C0cd5JoGfHaF40gWUm90YI6JeIGPKTmSgilq1JWsAP/mY+XlIJNGSp4iLthEkznPMdEYwnnYDeyurxYvd3xALs5JoTVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719800663; c=relaxed/simple;
	bh=Fxb2JUUYQlM4D4MvhzOjh8hzBmtbu9k9BGhxY9CZ6E4=;
	h=To:Subject:From:Message-Id:Date; b=h+Nzjifwdl1ArvOpXRHwsKrIYuBjYyE0CYYHP6C9kZVLalx1HsU3rjeK/OCJ/oZbCkekctDRp3MyVlofEv2afhIfnJNe75NRJIfgX3WNlT04BDzan8U3C4gTSZaW2/Dv/YkmS3ZtpCg0JL37khEjSUW3vQfCSuNuj5z4AZtxoV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkLS7x5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkLS7x5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF738C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719800662;
	bh=Fxb2JUUYQlM4D4MvhzOjh8hzBmtbu9k9BGhxY9CZ6E4=;
	h=To:Subject:From:Date:From;
	b=hkLS7x5d6xTLfHlxFQfFyren0XKJA2+Aq1pOTJl7EPalOBELothAQa0127K2e77/I
	 WJbzpe8QAx1pYTnyifDXmn2w6+K/WYAk9IFCvqmOOjvhXAi5r+alYM9OehL0tJmvUI
	 Hla7iPsW5FJL1sgNL8zTj7+hVqHSo5820/w54XOVC8RNURkvB5IzcXUGi0/aExL/nB
	 fJ+PlsZB+KBytoH90JkMhRykwK5/2tLjuupzvCc+g0bTDr1AFLjKejFbbVmnWIOMP1
	 XkYvJ70u/n6R5ixT54Wg8sjn3eXFF/qIwF/rx28bIsZK5uoDWWGu6AzHj/kzunFt6H
	 lvMq6lhIeoc/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB56DC27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980066275.30450.7021249506127025129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32deb088fd05d216571d1b6da7e2d4cb37d092aeca02c3b1848bf7909913ac89
Date: Mon, 01 Jul 2024 02:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719800662
