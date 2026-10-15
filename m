Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5955751C06B
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792066234; cv=none; b=N/L8dfU7CIMgiIA0AB8VaBZq/ZHRtKrm/LYxfFOhxA6siXj7czWbTxt5l2HDpGnyc36ls1sCdKqRPXGYkz/wrtQH7ihzjXfD+HgekIC89vKpX/Xjie+6FxvzUlNkOTdkGIz7CO3no2lMW4dxdeorpKoYaItd2wI/D1nEypzqD9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792066234; c=relaxed/simple;
	bh=WuaBH8vLfjFR2TqOVT+09+w9F4eDJFJ6ioBooVhT8X0=;
	h=To:Subject:From:Message-Id:Date; b=nnH75B9qjDHUk0Jb7wyRYkPLqrk2DILQFzrbmEWLd+QEQofF/SW4YhEQT16cds1tZTKTQLr9NFvk/mg29MoOpeIg2meVYS+6wskvGME9WsYE1FoK64mVGn5r0cVk2mcMyxAEmwanX7GWF2lepwjSpVBS8ju7eiDrbKJnNkv9Rf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hp77fnL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hp77fnL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB46C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792066233;
	bh=WuaBH8vLfjFR2TqOVT+09+w9F4eDJFJ6ioBooVhT8X0=;
	h=To:Subject:From:Date:From;
	b=Hp77fnL4q2qKGMdo5qm1q6v0HEAgTpXXP3oBQa+5csBYrUNvCSYJ36XaFHQ4So/VI
	 K0L0hC4/9MPPpqtnWzYK1wAXISZdjZN24PHPIY9EyhioinQEGjYAyp2yMBp77Gx9Pg
	 1f3mke1tdFS0dDe+QJx4VCfFF9WL7NCmZQLFCGOfFfQufn33fV5fRU66Z/uObAOBIA
	 8nmYZJZDx9Nw8WrdPCZ7l83F9mE4Y0YSpKlWLP8MCr9DdWG6N7ekTn3VGVHt8IQAhA
	 V2zWCD9afE9ZuEOSSVZ7Z8XwXEgP1W486n6guixIRtkncUdMJ7JrPZpDM+Uc738YuW
	 4yUUF11XM+gSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96C5CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206623368.25320.7262378124098397495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dcbc79b1c0a1c8582e7858a4f5423b365c9e1f762620317645832af0c0d8e4d
Date: Thu, 15 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792066233
