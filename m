Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3DEB672
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727918754; cv=none; b=eDfc6nYl7bZnkP2NMcTkL/MRYLeq1L9z4ITwIIKeSgcQuyY4QW5s6kpkvZxRJutpLCU/AVuaTHkB21b2vSW6u8qzHG6Z6bW1ohq74H/+8it4GeApOPmMorLZGhyXtRtGem8SoU/EhqKrM5SLJu5IJVXJGptoKMhaDaYx6gqevdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727918754; c=relaxed/simple;
	bh=sR+vrVApOLm6KOox0/HB6OZhmIQq32w9sjHiY9+Z6bk=;
	h=To:Subject:From:Message-Id:Date; b=e/9tYAZWvOOE1vBOMWEQcd0PaGvs5YdHtiiLr6CM3OEjFVh2oOAsOWM0UcOfDo8OwzQkq+9ALIBNpwaoQEZ/MCh1v8ppnyo41y78t1JCeWX902KMc8QJDueFGRPjGRrvq7nPuTFvE+48bS2tTJLLiEWmwVWh+DxET0kA5U1VXTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXpi4znq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXpi4znq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A87C4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727918753;
	bh=sR+vrVApOLm6KOox0/HB6OZhmIQq32w9sjHiY9+Z6bk=;
	h=To:Subject:From:Date:From;
	b=gXpi4znqSvWaxe9cEUmV5z++N9cL8x7dl0HD2h+LnRmR7ppKITk6PGp8Ne7AZQVdV
	 uImJHQ4/soCQxxlLuTmsisEk/UK0SpId2Rc3DqHJfI8CX6gxMq3S3xOb3/uNlDozbD
	 +PJP21c2T72QOeU+fnAKmjiRuxyRWp4FxlPjlI4VjA6Ep5Q+fAKr/xn1cLsAjXm2O8
	 B2m50lA8WlMBnzXAFVQW4ZL2QI0rbZguR95wOzmvtvzQaXZ9HMA1EQlVn22smFws6a
	 VeErajY9vbJxRWNg5N+L4CfCKP7X8UdEUcpajKZekVh5s8S4l3RJ8RsPXpmskZsTWY
	 4XnqcurOviVCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D7FCF854F
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172791875360.27917.6271825415458332659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5abcc4d0d785e27bb9826c276f7763c89ba990186f4629cad11381b1fcee8314
Date: Thu, 03 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727918753
