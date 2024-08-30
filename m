Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0F5139597
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724996754; cv=none; b=nFwbZsRWs9cYow3y/cVuBzuF2iueZ4WHobPXOzd3wwWAVx9wPfT4EpeauwJyAws6/D1sulXmUTqFg50skBAg9GBfNcl/3RsBCOG5/qM/FbbhlkWmk+0nWwHlLFt+iKm8oWyNw5G4aJkTdxCuuMYNvHqPzS+NA/62JOJKRaltGhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724996754; c=relaxed/simple;
	bh=bQMm6JO4RN9k2U019PRjpriz+uB93bVGMFAGmy/B3wY=;
	h=To:Subject:From:Message-Id:Date; b=AI+db0EBQggIw8baarLJBaCI2a871uIXCw9lJollkpNUGlcQCj9ZOgT6Nar7CEdPycLrXT2h7Du/dY8xBMdRswH4JvL/4tYN4EIAytkpXlrX5WtkjfFwdAXgmQXQ0XnAdpjZpHE/oSAVz2SrV7HhyNMKU8BQ/TIAAzl2kkbUjKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JP8sGp5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JP8sGp5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DA2C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724996753;
	bh=bQMm6JO4RN9k2U019PRjpriz+uB93bVGMFAGmy/B3wY=;
	h=To:Subject:From:Date:From;
	b=JP8sGp5gRWvDvDMN2C0ECdXi37UWaQfEASSNU0hieX0id9yhC5yx8beIFc77IxR5D
	 nNxolyPi3WKgn5apB4E6QicY+WmcpUfieecTgoDtS6xUXPx1dLrv6xqURkIVKbbGk0
	 mO1a3nkfB/ZMOqJCii+v3JExNF8UmGMpdyKKqyK6/1dNafdsgwi8hLbEDvQr9d3nfP
	 +aFACy1SfU4XO/xMQsOc/dSiBThPDK8DrksClzZ+ZPhtmqOwoyvxGUiRWBlzhWY0ar
	 mi8Og3/NyclH50s+fEtmsvO/OY0n0cUm2uzoPSf5tHWspz5/XnE4proIByGe6XqKv4
	 +Tw33QCu3YGSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928C2CA0EE1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172499675359.30734.15947744225236608099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7503c786193395cc0fce5270727650ee759c99ae8e32397e81d74baba190836b
Date: Fri, 30 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724996753
