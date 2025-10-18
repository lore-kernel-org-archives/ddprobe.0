Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCDA24EA81
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760777994; cv=none; b=GtkrxmdTkYt6HQHCzC/8oo76xrx6cTLtk93IK1V5m+pxeRomqj+krVlyEsoNEH9YLAotlVY2Wh48PlXepVfb3J7NoWTlApz7Jlyd7EOmPus2lp/zmfO1zcSDHbo2A1btGADkuKRCXn9Ot8QMxC8NBHPiZELFDdAz4LSbdzhp3mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760777994; c=relaxed/simple;
	bh=CjDwJxBqswC9aK/yTeY5b/txDGf6btzc5ugAeRGVFFA=;
	h=To:Subject:From:Message-Id:Date; b=QLxUpjXcYepZwJCTwOSQE7UPnnCznKci2vPSovIunLKcznPqoYwyvzMiFy36uK5lrAR93ut3avmKLs5pcXDFViAGgwVGqCY5SKSP3q5+yT8rRPfBnsCCNbWDz4bgUka68Py7+dvzSKbHqsV/Rx74KuGEcLy3XyWepPHFzqVR70M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBzMnIXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBzMnIXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A953BC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760777993;
	bh=CjDwJxBqswC9aK/yTeY5b/txDGf6btzc5ugAeRGVFFA=;
	h=To:Subject:From:Date:From;
	b=rBzMnIXfmo/tjpchVHvyQ1R1qDOhtqHQuM/rBq6qP/v6DRVyRx8A7HnN2H+apYLAP
	 iMb3E1oK09nuJFIWozKYXxm4LEFI6qXfLBSLoYG44JUsk9mThP6kP3TuxlIQ/tsoUH
	 ZZgbjmQtP6GNsz9JaJ5nw63JRwgyjEQftDyIhd0NZaQ+I/IZNVFgGNGXfMd22+BcXs
	 h7et+0A5M8V01Qqj8rLHGJ+Eq7vDYXt/4QBz0qm0oQLg01+q39JPdaAyry7Bt51BVq
	 kSFQZtR4ROa8qXI2OtMpF4b0VBpJTZ3DzH+M9XvutU5AJu3sP1ckXN03X/NC/NQjgb
	 lupSfWjO2LlPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96213CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077799358.27536.17588827328915912092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd987b91505a80e40a48594799641c84b0ed4958f2b1c0bd223ba7dcf85d2ef9
Date: Sat, 18 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760777993
