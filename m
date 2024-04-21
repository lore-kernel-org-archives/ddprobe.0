Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DE34437
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 05:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713677423; cv=none; b=Qu2XGDKJPrkdOmyaKEe8Vm/06WPKYUqKX+PT0rQ4sZpph/vTCa7g58V/EIWIohqXNzQlyhpYBj7xyP/u2Z72CCOrYrXvoZGUjoflTc1iKY6VHZmQan+MK0FGa3sRj0kuIVxScyRdUSv0GqAUQnAiSHEWMFMV4itAixWK78W1KY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713677423; c=relaxed/simple;
	bh=9VV60rXAsognTxIN7Ota1XD1cnFfi6pBHRA2bQ3g90Q=;
	h=To:Subject:From:Message-Id:Date; b=nywES8ncseL9ox9QQhUwFvKZp4in3sbn5pDQtO+l6rzh/dmi6nD09t+gUTDp1P0Z4YATu1CkASl+w6P5DnmArCEQitfOYpZaNha7PYM3od8FuW7jq7UvbczQ13FjV370ad2JpUWW7WHbenCSPGLO8krXUzx1XU47QGhYYGBe8sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iALuJboa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iALuJboa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0070C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 05:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713677422;
	bh=9VV60rXAsognTxIN7Ota1XD1cnFfi6pBHRA2bQ3g90Q=;
	h=To:Subject:From:Date:From;
	b=iALuJboawnAE7aW6guiKe/OuITjGhUVyfqlRQsKZYU5TM7VdHjaSc1oo4HPMx4BYG
	 JfucTphpieRgUNgW9nXScNRgs3kxmDPb215JvZhf7CnQStT3lgz9eZxhpXtMCUpLkg
	 eSRzPI7QTSQZGDcF5Ui22/3UI+Die9B4N0t5gsl5OEmnysdbP+tm4wrLJy8Hqsa6Hx
	 JTDLuPEgHp/+rHxQqrVIn40Q68usnkOkqzldnaBOubao+mG38bDgsp6PLyVvKMn0Ir
	 mGfCu9yGg2Hpq7QwDYZWhMQz4yFBqfhxsfKpXIJyYqEToe834BRqmSUxGDKXvIaA8b
	 mdtXptCohNG7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCFAC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 05:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171367742276.28734.6202764923572847238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec7cfe5e9e23d2959029d84144c5f74dc094a3fcbf245f27bb077cc8eb62a13
Date: Sun, 21 Apr 2024 05:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713677422
