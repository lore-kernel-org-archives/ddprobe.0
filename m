Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BACE47ECE7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779201634; cv=none; b=PDZ5Mv/oC9G6dUrE95txcAPUSgbdCyuD4vFZSNmoyFOB7gu9wv1w0Q7ihYvT/WyLuTivPSPb1aHkggPifhofxgVZ8TLpa0eZBUqP5zspxgICNqnXThhjDmLJb9fOj+bstUGPwC6hmoNEUSGon0ELCla1nHB8qMIJkGfBj80Rf7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779201634; c=relaxed/simple;
	bh=3KwlyQDh2cVHvc6N0qACDyXdh9aFFZkCYB9t1L3Asok=;
	h=To:Subject:From:Message-Id:Date; b=qNugMDFz7Ezq9kBdM2lRjBv+jklbO4hWDSx16CX8azlJ52qJNJIZzU4hHfv2/LFzuzke1iD6bgfcCAm/XuAJjN3jBOXUWVeOon4fOMMeCT4Hr8gwWGVwc9PoBKRKwXuGLxcCDd6FIEHlwGLgnBvK0oEL/x4ulSknCKC/gHTerW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ugku4zOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ugku4zOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8289C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779201633;
	bh=3KwlyQDh2cVHvc6N0qACDyXdh9aFFZkCYB9t1L3Asok=;
	h=To:Subject:From:Date:From;
	b=Ugku4zOGXBQWcQxER9IWWDVsuH2ff/d18xzVSGEijZ5WvaDnAsdmt/dgmbAg35hG1
	 8TYjWEDxsGegHn65avkOMM3/GRTnS1kCiaxxUquv9hAJ3q56aO68u3RfJ5GucaxhMO
	 UzyslzrQZgaH4YeQNK4ORmUBU8mDZdJyaGeAI+ID5JxBkR8UT9iv0l0Jh6vnBefYVm
	 fWUEWlw2xpRaM7H6JWRlMle+v6QS5Gvq8oNegUYYIyBTc0Ph7CXhzDdor6cLtjaO2S
	 mUWIl5XWzNXB8/Q5eo8BFxqGHrdgoa1vcQ5QtICzkXKymYa65Tgci83f83UWj9qTub
	 YhR9CeljIz4rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5281CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920163373.2638.13898465694994491651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdeb3082c5a89d47fa52d2552ec515a87e12506925334066858b71ceeb39e4f0
Date: Tue, 19 May 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779201633
