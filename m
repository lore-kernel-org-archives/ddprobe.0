Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A93434994
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790022034; cv=none; b=J3Zvse8tXCB4SK81mH1E+v5vFXDzVvzERGNgYjWELx8+UrAGux7HCEk0TW2oUq4dcFXIz0Fh04VXK2WG9aZwyWiECpToZs6F45+TXVvw7mQmwwp4tyONBMnMp8/7alJ70Ni+VNogD/KnAhNpEcihSX6yljWNqS+vn4lPM8cChPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790022034; c=relaxed/simple;
	bh=4no315LSF5FUv4/gfbBn9ZQTKvGXNOMbOlEdb56aOSk=;
	h=To:Subject:From:Message-Id:Date; b=cL/IFXZYiFvhImBRq/Zupe44mVEM3i8JT/z8X+KU43ssDKd2kIG22wbXqd4err/dU5FlHcwi0F7bQay+bLqn4LHL7+A8APLZOp0gEJRuJrkd00oMCACC3ATAF2bOe9pvTHB6xBqpBQ59XZqB3h/IRi8HeBTZV2uBXBS8UXQlSDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuOSLA0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuOSLA0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E116CC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790022033;
	bh=4no315LSF5FUv4/gfbBn9ZQTKvGXNOMbOlEdb56aOSk=;
	h=To:Subject:From:Date:From;
	b=GuOSLA0X9KX8D9SsgtfCr5ZChKv4i5HQTwOUimR1HtxfDrn7cCUlzJD8OJPdocDuz
	 QS46ZzZqBKFKPBHCiMjQdJhu9+/HvK1XWbAhivpzAAmPgSry1MCDYNxRAUrcIZqWYx
	 rmW/GfCTKMs0c4gdj8lZvbXVA3V4PB3kRdwf6rP0Jl6DKrnmAFVsedc5mcJbemjoYm
	 dWxEvF0pyfS1VSYoM1AvPQ+nBN6Q1M/WZUoaHVjFtsX6x+DN3/kxlCxGaVeDTl0hr0
	 z7UyHc7xO6PM92ByWPZPB0KPm9T3FSCVvIPqd8TgBOK1HL079EhyHWD/9C+7qw5LSg
	 Do8KKq7lS/kLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA767C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002203374.29431.18388923204287147043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e0c3f7a361fed5fab8ce0045a3c81cf5efc8c232897ee52e28bab019505537
Date: Mon, 21 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790022033
