Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A6D10F1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766986434; cv=none; b=isaKx4yBYbJrCx7BKnrTrb2oWVvOZw4VaQN0wNlDsVVq/qpyExxnZIRiq49xKasjjhxsFNbRqo3hqYqLDq4h7CbF6OSq8DI9aVGBLBGl88n6+q9tZULYF1kD9LMlgDvGwsCKbR1wlw5tYhFqFwRoQU9vp5KmOHckSIKswdTlkK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766986434; c=relaxed/simple;
	bh=SK7ZEyq8RIFukBgMbvhmmkjDdDsmsRlJfCDTs4ih9NQ=;
	h=To:Subject:From:Message-Id:Date; b=Bhe106BtVwQ2pfiuz9V6rxK29t9TZpOFxKBN+RuXKfZi7wNNDD4JVS3MoCO2RlHFEDGxMuNbfnut8jTFDsfGk4RhiRlHbLa4auSM/bd1giIHstYTCxPuQ9QXHOpoPeBSB3qOthzExbc38loK6Gv/9aJkLa5gIPD88JAePFdHV7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxZzs/dZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxZzs/dZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0065C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766986433;
	bh=SK7ZEyq8RIFukBgMbvhmmkjDdDsmsRlJfCDTs4ih9NQ=;
	h=To:Subject:From:Date:From;
	b=cxZzs/dZXgZhUb8CXQhp6oAv+akKszZouZkuKLYE9lsp2HNU9ekFvGGACkGk8c31J
	 OBGeK1V7R6yZ/KcbA0S2FSxXQrUq6KRWF+OY0Dja0n3dWr2R4PDdlYolPj6mfnKfra
	 irIjRCfFemH5jcCb9U/fdrDgSA9D7CvLOyaMlcLJDyhsjeV7826bglxNaonPLGPxRg
	 +kvNYOoxrEg5MGXpWByZ0HpHTQLJTn0luTS6lSZjyBvMIPLV1lEVKNmZETOo7/kbp8
	 tz/2GeV4Hv02O7GmVB3+CX17yCYm6AOyRg7E2NOZ9tRtioM6mJkfv3Iy2zsb2DZgxx
	 GwySnzbxEnVpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54DAD3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698643362.14019.10844181617969970114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c67ed0bbe5873cf197c5984bcb9f0e79b52675e1b41b426d59aaf74364e816c
Date: Mon, 29 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766986433
