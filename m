Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01AB021B192
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770254034; cv=none; b=uQ7/6ssEpnaue2GVZelhRQWy7QCPEO+KNapKAN1K0iJ87VwQ7DoFQyJikCYnVNck1ymqgUqcTipxMb5ymbD9JeqeYomMCViYcnwtfQ0BsWdRS9M1LqSEzrqyblNmj8ayENZFQ/SXQpt1ECFIdr6+w9/WEhdNdWvFZr+4kWZAFu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770254034; c=relaxed/simple;
	bh=J+z+jGrguSsodjngRuw2ykycyyTrANm3tr8ojKKnlmk=;
	h=To:Subject:From:Message-Id:Date; b=MkRKDhzOFHYRvSBCalkIJCyVRcUTxqXHoxnWO9wF5tUf38Z9bgkW+2bGL7NP7VdZE/GU6vp3Ot0BI2jS8W9UAUOt1PWnOArI+1nHOBFv8eXkqMYEFZlvnieSN1SdJFGYJAhQ4nUGHiZocRzjbsBwvZLzfA/2/piveEis3LFBLEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWwvJ3B7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWwvJ3B7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC05FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770254033;
	bh=J+z+jGrguSsodjngRuw2ykycyyTrANm3tr8ojKKnlmk=;
	h=To:Subject:From:Date:From;
	b=XWwvJ3B7hLDQ0LnwN5TezJd3XFZf0zw+M4CLowimM7X5oICvNCNDSu56ChsjZf1cu
	 7GNWVXTbSvtX9T6CtHW/+REzj6wPOaAbZoWgqnoVN4+sgFMNGjT6YwDG8OQ8+MKaxm
	 bsMeqJZpuoppSHs3ouvFnDYlPhASdzE7mrVKhK7e6wAO0+0G151xzYrud6dQ/Yrqai
	 UT+8ksBZVkiWq9HIYxyPRPKUsEw42IP4G5PLC2M335bkZ4CysWFKH11U62zUe2A3B7
	 78DvnCv5VWRLsK8FRi4Tr+LdumyrCGTAHWbkJZjFtCtSiR9hGg/g9d7w9zaG1O0bN2
	 aoPnpjNMFsydQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9816AEA794C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025403360.23807.3901956431863598788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df299565e9b699c19976f36344e98bc8f7936945771a4a376064841b2eed028f
Date: Thu, 05 Feb 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770254033
