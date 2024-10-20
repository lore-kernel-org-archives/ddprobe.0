Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264376FB0
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729398354; cv=none; b=ikhr69anVrI468LTQY1KmJs5LpVJUoObxA4WZAiJu8RM6pBMV70LGAsN+ljkXTZn+oNoXuIGxr+VcJaa1cZ6wCBu0Kh/ynUoU3fCsUeestFrGz4uvUR8hW9WL8t5CLxSALHnSDAEVZdzKhi9ZAFwKXcL15fELxmpMYuQk3BFUoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729398354; c=relaxed/simple;
	bh=5faVCLkTt20gZZFLZwIPi8MSkrY7AHkq8zp0A/c8+W0=;
	h=To:Subject:From:Message-Id:Date; b=b2pp3SeUB2W1dv18uJQAOqhOS4GcL7S+bfxcYYiNpsX4/4YmY7WgiQuvc53HGy0ZqvXyMo2DzyDk3E1LZUctUVB02mh3B9j16Lz4AFemOp/gbhqDa+BaJAhpSARun1wPfUt280erM+dl+TD8z4wBeSiNVgnlWoSmqe4C23muLEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naJKPmRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naJKPmRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC73C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729398353;
	bh=5faVCLkTt20gZZFLZwIPi8MSkrY7AHkq8zp0A/c8+W0=;
	h=To:Subject:From:Date:From;
	b=naJKPmRyKaeuPnaWpmm81THfY+xEcK664+Dxg8nttSzNwGznx6IaxZrYWiI0DlPm1
	 xZzvuCrToNEWHqhUaKBfvt3CCC2YRtv8HdwDuwPSLlshULQIiRdGSpPXNVYPgC5v88
	 Vl9xjciN6J7bHuxosSxBs6cphuU+j+9dhlIUbAv3KuBY2GARV/skTBpJBT9E9hoocc
	 W6IGvRuw4LrryGH+E3fpa/c4BgOEwn9wVoIB+2Yub9UubJ61Xut15V30cYzyLLb+Ay
	 uVcuVcHmlhOY+ckt8o48vU2p7y1FiU25d1QJy4eo/kYTlZ4UQ+XM/Jf7a6MfJhEldy
	 LrOCI7FIixA7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F09D3C934
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172939835364.32575.2988508999385797617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7afed4848044cfb3ea99f8e31fa2ce7cbdef5ff1984f25f021785a0084782d90
Date: Sun, 20 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729398353
