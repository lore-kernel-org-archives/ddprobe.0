Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA643A1B5
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732317354; cv=none; b=Il0J62GztxDgctCcmsccwLi1HUulpnbQAt2/kOI0cE8vDTo4hTi2lslbHsN98WqOLLIwxIp0+ikMk7p1FBfjmZlue8/iiUauwItdo54n9m3EN/YCuiGVYwZ2dkLW61oBzUE58DVCzhW2lEueNleg3wMDlGfzMpTJw6zJ2QFiZxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732317354; c=relaxed/simple;
	bh=E2Htf+7x5xfPPeYB0twTQuILzcHnIGJQpkDSgwL0gcQ=;
	h=To:Subject:From:Message-Id:Date; b=YQ8kKklmdtgTi0PPrIj+Bs/OiGx91XJfPMFESkQRowdiOv5tXJrEOaZ61l+BLXDlpw+BCwVbtHxM97F3d67jvuMEk5bz9a+YQIHLBSp5PMZkkXFs4RIH9kymPyI9LZJ5xlCbfoPNMSpS2wlORn/CtdIxfG982mFLvSlD2vQxod4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=je0XAs7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="je0XAs7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A83C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732317353;
	bh=E2Htf+7x5xfPPeYB0twTQuILzcHnIGJQpkDSgwL0gcQ=;
	h=To:Subject:From:Date:From;
	b=je0XAs7TfD9Bop2WXVnikS7xDfPqUFI7yEYic4qEKlWydrX36Cexi8vVn3d94RJnc
	 TpyiXHaSUdevDrFZhvwQqRs0dur/Bc25LsI0xdAUFvlRWnhOz8dPWDuxrARG3qL88M
	 GSc9OSNV0rJaTDd6ZdmEPd4/GgAQO62iClg/dI8rNKQQeBFQKBrTnntFLr2/l2T0oF
	 oJ1G6nk165SFFYWXqAJEO21ilJjJ1AomvYrKBm8xAK6S9kH+Au3dFXXYgdpkqWckI2
	 /QH9CSDswpmHcJF8fmkQppJoqcJQCve9TBYJ4dHWuH4DUkkNqoDWtgBR1+B4u80lCc
	 O+SHG15yq5upA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4074E6ADCB
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173231735362.18727.7950008838053182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ea3a69d425a1a1c4138ad80534dde3bf517b6d7f6d1b9d3f4584d8942b875c
Date: Fri, 22 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732317353
