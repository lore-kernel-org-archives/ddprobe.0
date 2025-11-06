Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3DA2E7F02
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762426794; cv=none; b=HoDZWmuMt6MvZwe/+FUTVVE1xolGxK6kjM/l9k4VNLPdgWJXNxkfvTIWpW1Z+6Ri7vrhuOdkrf62XLUsout4yIcWdEGXAkpLR0eOtTeAtCMapjXZCgNeMCb9+qJolU9IXUpP3ZS63XQ4/L42UpyLqlzXCnCdhRuFHFxmqbwqxm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762426794; c=relaxed/simple;
	bh=PezinOCmjo0kgJJzWVw2u2CmmVbIiq+4eSVFH/iYhio=;
	h=To:Subject:From:Message-Id:Date; b=bxZKbaSESBqrpwyK2GZ90i/JDTYSKoWdJCsBjXoBveyA1hiXQxhqmnW9yRU1FdYuW6/g23fiOJcNMdW7Y4FDLu8SlpRz4CoZjhP1crCvAzrxoGeQEiAtLVd9Q8Jp/mNDeCk0tqwat2JbP0GXFe9cnAWP6vQ2R+E4brnm+k98/nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZztCfHLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZztCfHLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A90C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762426793;
	bh=PezinOCmjo0kgJJzWVw2u2CmmVbIiq+4eSVFH/iYhio=;
	h=To:Subject:From:Date:From;
	b=ZztCfHLtxkIqc8xRv/kNzAy9z7b8oHPGiNO9UQrNoPO7p7gppSdTzci8b3iQDFXMK
	 4I/RNcGD/ueIDrSKTt2F4M1MUTLxNSVJmXUTxrXCXmDdXU/EqX96M17AbLq9mwdita
	 mK2Qnlfhbg5l6+6NfWl2kZd9DboMKJjmUlyAr7fOw9ODcBrxVuXSnbbPly3b+ZzZyC
	 NX8RUidNhXALSXVMkhlHXwgbDL/msJMx28a4VXQLlbh9oh+48vYd6LMn4FIgdccwi6
	 e9Dw8jE+s71465BwRmWpk34iJVbGuHLUOBMQXWaXQqOW6vvhUlr3e4zusqp9EtYoT6
	 UZclhaMnWSCcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AB8CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242679358.4935.12707596244114617526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5bb90c32513dab4af426f951aed60ea7a84ab75f93438c502a9b2f502ee722
Date: Thu, 06 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762426793
