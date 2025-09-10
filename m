Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7E618FC97
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757498394; cv=none; b=cFpeDXcbKICur/v27BWbuHvhabmcObuPfgRZNvT3bFiq7s8jlS87m+6I79MqelIm8PWDR3fWe1KPxdufoV7ZYqjaMLxj3ztG0LcH2rqy2wDkdBTKew7JkbtNPcNC/a9vVDMNfDR0WIDdFhZnVxKFzXIZKdXJKKjF0UpjaTAQ2MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757498394; c=relaxed/simple;
	bh=b33TBTq7UffPdIjgb+0vDGxbQba31HI1V20EmaiWK0I=;
	h=To:Subject:From:Message-Id:Date; b=Uu6yJ9e8r5BUXqKfa6NRsXWA/je4RTuUgaf7xQT43s9umk5vYeR/nwJuqsgUAYv1PGqc0DuzIwKBu7XIxZCzb/bBLfuRaIZ7d4VbgvzQLUkrnKNyBHj8LWfT5hTxbORGSAqdyQOO/2mldS7ty48CDFh4bTgla0xDSGx+/doxH2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0eqaOSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0eqaOSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18AAC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757498393;
	bh=b33TBTq7UffPdIjgb+0vDGxbQba31HI1V20EmaiWK0I=;
	h=To:Subject:From:Date:From;
	b=j0eqaOSk77W4PE6sskDV/P0f1VBtB65bRNWP1YzAKvBCVC8Q0xaY7pTlF0F0ctuIx
	 2XQPyqaj4hAjLIAj+8h5GSp5D0MAmxLc1cGS1DHBhiTd0pOP5PuTDRfsHIecVmM9rz
	 twjQ5WAfCYHDL6bTK6XKeBdYh6XVYbo21itUtQ4/IrVx5TYq7BTqbSqSqZYD4W5OZj
	 TN8DJZlD6CZ4/rvOtPBSn4C2DkhjDwIckqiu5MSowH6ZcQPEa6/rWMxGXlGXR5ou09
	 ltXgVXva3/Yul4hYaR/Awqv8IfC7l8NCMu0wAMbJIfiS1AJ0aqjQI2cEHduspWysa7
	 /Y1iWV9ITjhmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925B4CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749839358.24832.6815899572536036792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cddd770b6c48dc6f9454fc32a351ef9ec6aa53a6632bb79db7b58b774ffbdf89
Date: Wed, 10 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757498393
