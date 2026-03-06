Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E50C334688
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772776494; cv=none; b=n0YnSTotGHf840D9PWb1xGVFtrnhbKp/E2g91pdeVgyu8VTLu5n3Y7O6UAaCFIF7y7qc5Z/PBH2LbRDA7LdDIfuxRdbAyjTkmK+qDKTnHM3LWFQupfrpGr9YRLZFwk2/fuKoYdHpyYvrW/N5eM944lGWyxH5j27kuQZXfMen8dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772776494; c=relaxed/simple;
	bh=ze4DbGPajbDwRcG78p9jJLnm+erY1+AK9BJzJE0czpA=;
	h=To:Subject:From:Message-Id:Date; b=G18h9nTuZtEuQO8v0U/zmBHYv9Ysut28PS15uqQfc/bsVgZ7cz9+cqo/KYBtreQVw2CfYUAGuAdnLNmjpHvvtTB7YSCvWV2c7sVRc+dQuewUVGvmfdo4OhAJi6YgXgFqihjRgm7L18+Dapxn8LyXQI88Ppzafeki2rUoOzeIpIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8dK/vot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8dK/vot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FDCC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772776493;
	bh=ze4DbGPajbDwRcG78p9jJLnm+erY1+AK9BJzJE0czpA=;
	h=To:Subject:From:Date:From;
	b=E8dK/vot1wd7to9i9htTKhs7kw390H5D3macNkwJGGMGvHxcZ34+axsZpKnlNlMGd
	 WdBpStxSnpFVQecENwhOiazByCc768P0bceRPdw3KHczKXsAPm3f0eAixIdraWkJSB
	 lrbnv0CfLMIoGeq0d8vdXlDzZIhYWPwPq2by6j7HoNoWSKnBVtzPacHlqbVl0c1agK
	 ZLX0K1YNLOugbpUQ13S0+6WEOmJbnRXAWgGSO52FihQGUowH5fx33QxqAx/FqCfhXc
	 5tkgIgBJ4Gl9ORJMrTnZrsFQM36RRFIC9Ob9q5Sq3GUvNp0xjx53q43bxNCenK5suZ
	 OlfdtFdOGpb8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE8F513FE
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277649358.12400.4477781198610622514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6958280455066e227921a01ca4830cf2ab9de521be7d4768be7e5cf212a43d66
Date: Fri, 06 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772776493
