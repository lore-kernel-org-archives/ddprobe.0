Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EE43FE5F
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755479394; cv=none; b=GWjOMOVIYq8mD3zGmAinvxt1ldCeePTrhrtgu5sJ5P4Z4LR0gLuSrJb4Yu6PLJFjZKsNDp+oAoDCg8UVRaM4EyJfvb1WO+PBkmXX9l0Y44xkqllISvwBGGxuslyzV1CH8IWvG0f+gAsNgxPRhIiLQ8L04c9JzA8Q7aKrfDajMyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755479394; c=relaxed/simple;
	bh=4kfSNXV6qECWJHcZ0Lcvyy3b+pXHpjySPgLGSnIuBP8=;
	h=To:Subject:From:Message-Id:Date; b=d76TVuh8wSCnCdBy+W9Sit07Qv0jfeCvsWPR6V8hLa6AcQpvUGRS2Q8sw9hoWGXBWo7lCvQMcwaA3cKPeT2mk6b4cEtLnCuTxf4KIyarYS4UbwiCthmMohcJafoW5ayGk7KoBCu4g0oN9tQmMnN0AwdvTRl07Oovq79Jjqmr6GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sh4busP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sh4busP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755479393;
	bh=4kfSNXV6qECWJHcZ0Lcvyy3b+pXHpjySPgLGSnIuBP8=;
	h=To:Subject:From:Date:From;
	b=Sh4busP2QpH6vSnn7duScI9xLW6VWdWBlk4vkXHc/NOEbHfVkouLw0EVsGl2PkXTN
	 8iII5Vopnc1f/8t09TA7tkIKQXhtmdU6RkWdPSRjc7BAmbHsGl7eIKGI/HBRCZenIA
	 0XRZCZjFAiiuvvsxChvp7+rtPNSnfh+GUd4h5JIAzxRAZnlH8xIgXRiFOr4YS5jb2Z
	 1mjQF4229FNoNIY41crcI0vISDQV0ODryPwlFWEn71SuG0bpPsSq9JA78cmpWxNH67
	 onUiDuX3qgBlLnetyOopKRXHLV6uI+J6B2+mTCG4kYDw3MWCxvjQcTtrzmSPYi0ve0
	 xxdWNDTf9WIIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911E6CA0EDC
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547939357.26924.6227128377479172331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943dd28ccf566c1813ce3fccfce7c5f1761727f79322f5de69457b71eb06f81a
Date: Mon, 18 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755479393
