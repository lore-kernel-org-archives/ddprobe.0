Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBE54968F4
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778859034; cv=none; b=gwbn/fbrswCw5ErL/qJBCP0t/M+1am0RSa1ts04t/wa4Y8RyuQAFRc6wnNcStnoUinNeJeQlif4k5GdeoAPB6wO+AOl7IoC1jtUhkddI0brVwxRT1Qj17FM6ctuHvIGyRK4RhnGb/zdOZX0MLhOXw/pa6r8lMozGszSwIo9Af4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778859034; c=relaxed/simple;
	bh=zld7gBS1tqI9DxC41yQbIMz/GGiLVQSZWtxod4QMd7Q=;
	h=To:Subject:From:Message-Id:Date; b=QewhnWmUNj4nvZdaHhL95ZDPBinqMmq69Q538soo/vggLFzvBdTLq7/okPVaEpbttvL3+bOsqMqxVlRlpjnaRuy6kFiJyrtYPsC2PJ51+KphaPbUkEI5k/XVvHsMN830r0H0oG4jG0afNYIidL6p3TqXHtbKEfzmaVd94Pm98s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKANOpRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKANOpRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B906DC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778859033;
	bh=zld7gBS1tqI9DxC41yQbIMz/GGiLVQSZWtxod4QMd7Q=;
	h=To:Subject:From:Date:From;
	b=IKANOpRCSaXbrVwQKQfjDia4tjtVN+nA56nnIRB2SSZtcG7sBIhodRSIfquWoB/02
	 gCMW1XiqvP2PTg5bKGmEWO33R4GSEwQ0KKejzbz6oJjIKRu1AoDlauj/dBdIzkWBra
	 gj2jsUa8SY/e1uBwp6JMg8LA1s0cwIwHDJG58I3Ih77lYBb01qWBcSYl20ijfnWimI
	 TS452KDqCKzEFyDQZf8ArkGfbym1uNSMDjgZPmjXrjiGqwvctrDBUQjujgHwjVzjI1
	 4LHqRlR+tDpvx+EyM3PDGUE5Vbc+GMlfmFLJIC145WJtuw/SNxrB6ESlQrlmZxuw67
	 BDaLCtmsSG59g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA64FCD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885903368.29166.4187399735044721129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf95038c5e2acf31e7a8cc0326ee13884143a96f18bfce79d4c2c65c7079e9b
Date: Fri, 15 May 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778859033
