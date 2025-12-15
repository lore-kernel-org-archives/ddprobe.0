Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA4B1FA178
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765758774; cv=none; b=fllm1yymN3jMX1IKm0Ui+zEO/KaFwUFCZ/XZZ8ancgNhhTXfgXn1ZV7utJ503Loz1A9fpypEdBNdOHfGQhnXmNkYfWnuHcskOGdoOzUcofFzUP86TJLpukSs+Y2tHt6iTkCrq32LHiAiaztvms4/y9zKw/iH5zbU4EIjFH81XYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765758774; c=relaxed/simple;
	bh=18sWYheoDY4wsU7r//M2+Af+LvqsAOM0UCA7poId8lM=;
	h=To:Subject:From:Message-Id:Date; b=ow/uq7Ai2qKKjwCI13Hy4c8WekhCsL81rTSoAvJyZ0vF/Ra47dRqRFv+YrIuwBAlgbGPPlfbpjM9f6RLjPVtg5caZSfBHIBcG6ml1ikI1oTlTcKoa6gpDLcGYg0MGlNeVaQpqn08aJCT8PlRwUrW8UDrZAiHelZ9MIcDzpxRED8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkrFXXku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkrFXXku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01BDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765758773;
	bh=18sWYheoDY4wsU7r//M2+Af+LvqsAOM0UCA7poId8lM=;
	h=To:Subject:From:Date:From;
	b=dkrFXXku0mNr5XEYErOEw2AQun9C+olNlN1s1/tLN4Qs1Iy5iGwmpqnNpcJtQPgrC
	 aPwxp5T2YOH8WhvaFraR9TQnHPc8TG7CMVAJ/PMNp2HV82PdbC3uM8QFxHVWqJrnt/
	 oRgj8N/MfQN6SS0JAncaqufmcY87B5RB2rFTVpXyWiaAyc8wBisHTBW9kxz0iWTTwk
	 R6leJ0ug5z1MENACE49zBOOy8Tx4+Kx/fxp9wTPQ+p95G3rSl1hOekC1oPIyl2Z4sk
	 AxoIgcVMyQBkRMFYjGqF88PJAF8S5r/4652ERMBM9VMYSdSJ3h6ePwe64GLXnPfs0u
	 QDEfcKJ3cuQ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E87D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575877358.32155.11194978144812106050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9315b5552d77aa7e653154ee2ac7cc110ed2499e2e84bb4c05725268ab4d8f25
Date: Mon, 15 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765758773
