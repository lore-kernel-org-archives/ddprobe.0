Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DA9376F1
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732251354; cv=none; b=Q+W1Qz3deH7q515MikkpybEjdr7y46Jsv2zS5jD3m4BHMvCiEa3lhYdUccrwDPhLh30LRJvAdQyXSme0uESQRg8i8tPD0JmCyjeH/7+QM9ETzgcEKVJUphVBY+foWMj3Qq8iCpVaYIr1XR32U0NwuftbmfJwNa/OoEpGuo8vyO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732251354; c=relaxed/simple;
	bh=c5QOLoeqNU0gjn3Wj82LIjMa5KYP/gV/4mtlwj4OVUQ=;
	h=To:Subject:From:Message-Id:Date; b=HO+pc6sTPPRPPN+o+4u0AcVKZuiz7gaF4s+Wl4tU0jYyWrHB75svAYOBxgJjsT6wW8M33MWdo6P8OSc8fEVxbezgRj6xGbJ3e5pJ6qexWColBYIc17oJ9xOAFi8ta/NS6z8BVLvqL4LMPK0u8FtuGUwH1+D+M9H0KQMoQvONGPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8qyzkBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8qyzkBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE18AC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732251353;
	bh=c5QOLoeqNU0gjn3Wj82LIjMa5KYP/gV/4mtlwj4OVUQ=;
	h=To:Subject:From:Date:From;
	b=m8qyzkBcJq6I+AxHqjtoLzFt3TLXpF1boCYctj5st9zdom/VIX3djUhy7rmpg2+ST
	 GeihEXST+J4ugssdRqr/6rdb/Q02rBUx+QLGS2o4UqejkkkgyJMb+4vIm/O8RQnW4P
	 cHxDTxEICGV5yBl9PFPXUnFqNzUnRhoDFwteRsySDMgKbCrA4PpSmsqN8VDRJCudBV
	 zXAlGwqtimQO4h2V3OPzC914mLjfMWLsRAval+UbJMuiblZePnF1NRMlnq4vbG/Xck
	 OX0K2BrA/WT0NTYuXjcdRXBLiOe7QGwDbM7i2rWtdmKS5P4PK3hbPkjssbNFnroThL
	 gWrI2NKClXPww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE4DE65D25
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173225135362.14271.8701299245078094313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206c9fdabee6d1f385eea6d838be49a9255b7283f533e2ab5a8c20d4c2fb3c5b
Date: Fri, 22 Nov 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732251353
