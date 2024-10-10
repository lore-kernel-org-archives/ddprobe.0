Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F278C1CB502
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728574554; cv=none; b=nE427buAUiV6DmKbSy06HJjmxDrhvB6BptJKuGJOtukamYmn1j8J2F9m9gWogzWs+PmhfeRyuq5SHJK1zP3j+t3BDZFFncMfbOT3Qg1gjxHziyxCfpTIBr8VYqcpg0PFAe42kWKRiIMo/20d8PeadzPxI6e/Znq6qNQAAC4ORdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728574554; c=relaxed/simple;
	bh=zmXgA7p44frX/mjQtfbwXG8W58QI9z6rJpfzUXkmWnI=;
	h=To:Subject:From:Message-Id:Date; b=Ra87RpGdAdcwZwPhlZJddmJBQB92GwoViF0YUbe+xiduzCJk34IjnZafsYnhnATvQba2cvsAhbW5gwOWrzzb+C2MPhY/+rS017lBmTniNfVfTxBWYv7/0DTmy98EQLfGhWf0m7W20may5VkWTksWLWUXXpXTO6RXkoWHsu3FoAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L84OWFK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L84OWFK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A787CC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728574553;
	bh=zmXgA7p44frX/mjQtfbwXG8W58QI9z6rJpfzUXkmWnI=;
	h=To:Subject:From:Date:From;
	b=L84OWFK3Vm0YRqE3jy3rJLGTnzLExv7hWQZtui+/Jk+oVj4of6iE1bQXjrjaqNvCP
	 YDQVgGuUYCMkWn5gIxv3qTy3ameZoVKjEN4e6HMTZU4JXGZ5wej1mC3FPWEHYdeo8h
	 OuR5f+iSOf7+iy9zjd0OUYRgXh8g3wxvtaFSnAFH0K71CHDhv3XtSWs/EYuIxD0717
	 LeNQa/nTmeyYaUgdCPv1xSN65DEDr9NGVGbh0gXQWHsNzqwyOy4zuqcXD7tnGIinU2
	 JleUSMjraNvl/HQIupuhPvuutTbKnouxILDdaOOpMod196/+LP62+8MxQuL2OG8SBe
	 XcA8F9kIG8fHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DE6CF11FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172857455361.29316.266384466278847671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e12d881c396ed44ce7febaa1e7adfec80bc3c7601fb0e8af3bbbd06348356b7
Date: Thu, 10 Oct 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728574553
