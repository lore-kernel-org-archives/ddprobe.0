Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197B853389
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727366154; cv=none; b=FmoqMlTtHJMEPbteiZ94534Z5ojabAzLjXISCODxcQ8Y9CKGyoYUs6gBOTAddD3yKx2PBSB9K1H0dbmAJY66RJmCcaloaoMxm4Jn3/SxPaNNeglDRFhV5Zku/fvtNU8hNINUqZPYezmdgnxgHar3IxxMd42ayPGhOGUsaNq8e+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727366154; c=relaxed/simple;
	bh=ULvK6EIq8ACUzDox0oZPqbVUzNYCJKOrIIjPIoGArug=;
	h=To:Subject:From:Message-Id:Date; b=Wvw3CM+AckTRGes+3j4l8pSZ48LJ4yYFJtupyYYV1ddd9dX++fXm0TFUIO//XnhLe1EXO71OErTg5FuYsi9GINA/ejHARcGNnj/sxPPh7qaFKNU3fEBb+k2wXnogjAJ0jiJKa4yBlFP1GQ4UjcsLYNw7i8S5nMeyTQQBL/P64WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9epQbJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9epQbJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC22AC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727366153;
	bh=ULvK6EIq8ACUzDox0oZPqbVUzNYCJKOrIIjPIoGArug=;
	h=To:Subject:From:Date:From;
	b=s9epQbJX8nvx+SW96+VCAlBKxBybLeVkcpsi/c3xrZHzOQEiilXnKPVTGbSQSlQl0
	 RZ3p9H7kXwRC4cDSmvCuEMkxH0rhm8TIF7ZOHXKxf5eOVqkQjTCSxsr9btDZKCrwd4
	 7Hs6zB1L8l0sPVqO3Jg6KOr5K78vk7B+X/vOpsPXbL5wXFOy0gxL+UO7ScVQFxhrTx
	 cy2OKh3WgOYfq6qbGcGrFKx+DN70gy6miKB5/IASeyJG3a4oRJrsmzvPNmqRZDoKMC
	 wsBh3pd/7CkbbAgjGaMoJXY261fiqxJQ5fqafAW948AmgIpGMZ3j+XnEvU8NrGa/Zr
	 sfWAEgoIYg75Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C15FCDE01B
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172736615361.26736.8351829177606338781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb51d2ccec3bd2699f1fa7419ed98e5ebb0a3acde61e21e085de5766d9a4cec
Date: Thu, 26 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727366153
