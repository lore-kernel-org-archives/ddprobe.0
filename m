Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2826917A2E1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756195194; cv=none; b=bUiS7JBGz8O8tDLEgvxpoe7H+GQM5BtN+aY11Y4Qnnrv4NLH8wxrkwP4zwLh5rz7C5sjt0nLI8/nw+AVq16D06aR+61cJrWMyV2O94c5Odk/3mUJK/EHa12EXi5E33sEaYe8uE2z1RvdrK+jJt9gOE5sNteHJ/WwivGhnMwSZ+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756195194; c=relaxed/simple;
	bh=oakrBcnjI21g74CPe9/NcCbp51OswqQkocF7YPDUO+M=;
	h=To:Subject:From:Message-Id:Date; b=aQSpKlpGQAM8niGXCRlmcUW6uwr5aC0rN8JWZjhKwcRKLjaBG2KK8vKbqWBdrNg3sHHJFYivuSeaROrHruES2Tcig6yxKo1uaMwWOGRA5A9tq0eFQyriUMJARt/0ytLRNy17rpgZrLF9p4ubjLC+MK46UhFLpBC+Q2qz6H4Xu4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIiZRIyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIiZRIyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4034C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756195193;
	bh=oakrBcnjI21g74CPe9/NcCbp51OswqQkocF7YPDUO+M=;
	h=To:Subject:From:Date:From;
	b=SIiZRIyv0+R3OrubJT7UGlK8/c9788OGLKOIKcoy1XBjYoehcVdQ3xxpnq7zNyIv/
	 vSldEXo5GZSGOKsXyNRSOFrdVwKTy4UIXU5eykTx4Wd0G+Sr0KpmRfSIJRhe4WL9YA
	 f0vNFfgajs5L8Tk4V8hCilhfShpHS1CFM8CtqyHofbF1xlB3QkkbdlU97BAInixG5M
	 oeaUpYcbKQu0jL19goT8wob19c1BPlH13eJUMKLhIFYcQuFfNSaJcoB69qXUBMAXRb
	 BDz22/ypn3K/IDYPuyQDcBCQrVyt0j+0Ax5qPEGbRwz7fTUOT3GZ8FYi8Uf5K2sSsQ
	 oGpRba9tE06SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EBECA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619519357.22315.734941642214827760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e2a1fcf6b52373cf641055c3a364b956ad2fe696cb85736f4cc34594af9018
Date: Tue, 26 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756195193
