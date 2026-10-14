Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0A63EEAE9
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792006234; cv=none; b=JkXqHH++ilbiaM9TLgCZ9oMljPdEA3KycgKAvQ1Q0QzctgC+psO5CzpSvVYfFAejiM2fB/YgWyonI83OwO6koHdHRJGvEROCaXFOcu0J2/biqevMPNNtmWfU6GEx/xoxzzqkRxrDNN4os+uQCFg8eLeCKUA0ndtjdGSTgJLbHn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792006234; c=relaxed/simple;
	bh=DsSSWksGi7uQ9gk8Uvt+f2f9amA6++3IixDyGI85kds=;
	h=To:Subject:From:Message-Id:Date; b=E7BIS++RIEx2uuohuvGmBuRTHK1R/BL2f8BWSZ4jg/C18XPn/4kOEN/i9gkV20ctxA/kgG1+a+kpLDtQ7qZPq2PyZIaUrMKWDlUuvUI+YAvms26zZ/YxqzTeMLqePJs7nsKa1EMzqkEJZPmXL1JpVB2dglHEL6plzTxJIK7yrew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlVV7HxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlVV7HxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6CDC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792006233;
	bh=DsSSWksGi7uQ9gk8Uvt+f2f9amA6++3IixDyGI85kds=;
	h=To:Subject:From:Date:From;
	b=RlVV7HxVvLm+slS+XbGoaY+Ik6ktWv2ORZ82rxVb1hnHGoPDwy+3FlVOYa/aUseTp
	 E9lSL/Ez7gZ2Yr4gUXrGqKAv1+PupugG4BP5vjMXQgWlE9h4umlIWOsyUlELy3fHlp
	 uq2r8qA33btl5QHnFXTRtgeKju1XUQ8C0jHJD5sjD/SQREfHMYKpWj5KLc0+Bc4ps1
	 R93mSf9rQxok/EDIYA4kcYZDieyyc30eOAbqOuyaRaMkeJthXJaFMyJnQiwvGo2HKc
	 55wnOLc4XruWQRHqXvdOTiU0KRoRtIKfWooUL6Fa8XP5HM3Ag5RT1blIxOF7mGxR7u
	 HSLHiwW1Vt27g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B08C3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200623372.32555.1938690194647158321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916b8391f7dca95d7ca7ecb1b1138f80706e8187c23eb15476b909e654200fc9
Date: Wed, 14 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792006233
