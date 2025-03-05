Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5345B5103F
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 02:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741141134; cv=none; b=WUWjkARNMUcX6YZ04PL7pEnf3GPvSKYG+5XO9IEqAbC2dJkJ0C2iKXxuthdlCw73d0ESFRe3kMc1E6OlTKz0Dt8jDE80IJj0rjio/K7E2Yyf8+7fvIfzNP28JCAUHM+bD51xU68sOYFm2NW/s9ThBbY/2q+WacndbVbyXfPZo2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741141134; c=relaxed/simple;
	bh=n178ZGRyxrCN70qLzdmxu7/GMyVMS6X6A5xZ4vPD1J4=;
	h=To:Subject:From:Message-Id:Date; b=pbWuw9vP9QFhxFYmsJt7RVQJrtfkx6fZbRpsYf/KNy7vqWhK//2O2/P5Cwn5C0zQe2vURL8tzZ+glgevzxTnf/qPDn92jjMnmByVXdraj9Mfg1H/A8HIL8vgoxECZHIZf4VaLYvW1wzGIsxccM9s9KFF8R6d/g+Ba6m4KonwY7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaD42gS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaD42gS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44E2C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 02:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741141133;
	bh=n178ZGRyxrCN70qLzdmxu7/GMyVMS6X6A5xZ4vPD1J4=;
	h=To:Subject:From:Date:From;
	b=jaD42gS2Zxom5At8pCUPn56Xj/t8RbOF+aVwN1xhdplGH6X9VcgS6AVogk/KcplKn
	 KQiSFooUoauuzLa80WS8QdL7PSs0LUbhPt/fov9ZfnHlsBgihfesJ3KNoI4gCwwE8n
	 HrA+MCU81gTis7HbUs1hMnQtTbqoV4VSs9ngA4ZyTV1pAQaytAaTB4HbqeRnhtAy/3
	 rAA6Pd11pB7rE/A2CxaFkvzb+pW0lQzMt7Lsth5z3aydnz7X/30Zh5wzn2ZAUurZAY
	 E+5guwh/x6iTb1sKDJarlbiM8jMcRkcTCYvtR+NAF6a7KRZwruUeb8WSFUqCQmHSg4
	 yR6ICxcRrCzgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92896C282D0
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 02:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174114113358.16172.13263978392089296502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a8c596dc757f6806eaf1c0ba9e9c5a79777d27ecb5f6e3950c75da72487ff2
Date: Wed, 05 Mar 2025 02:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741141133
