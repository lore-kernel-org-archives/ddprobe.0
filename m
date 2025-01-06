Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A3A1DF983
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736198754; cv=none; b=aDHTNVjHuci1difwRR+rrzSAQX31XQ6lKofi/iR/pP4wq/FvETcO/2UBfgSD9FXZd0nOZW3+iG2Mt9lgqUKtR4n0u8ll0w0Z54Tb3FeHry5t1xhoeAlvXxWChcM7LaEaWYDdcJEhlC9vVbG+Dk9RNpYinGa1IQtCHYOdn6H8x8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736198754; c=relaxed/simple;
	bh=8YP2IphwfRw/aSNBvHKHb4RM5cdTYnlWyclm8NCCdUw=;
	h=To:Subject:From:Message-Id:Date; b=grW9Kwta/R9HU0dKyNxlvEfcl10O7F0PN+I1bCLX0Kovs6Ba/P3lzx3uJfK6zgIwW0+601Ntfp7M14Q+UQTBsjmuV2hHlN03jkcxV7s7ej2Ap3BnOHlClLWhZETfjgTXAy4W5u/0hZfVOuFhoV/7lbihrrnIlEHfgf9SDy873LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UU6QYCHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UU6QYCHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEB7C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736198753;
	bh=8YP2IphwfRw/aSNBvHKHb4RM5cdTYnlWyclm8NCCdUw=;
	h=To:Subject:From:Date:From;
	b=UU6QYCHJgeJ1mzzxf80BflsrWD2Zq5A9piRhz/wdvJ4jzKdOZghD0+eRDc/N5UKGf
	 DxlcbCIgnewFr/3Es6y66cNjTJRQeuTR3EUHkFqdqTWiEHskb69GTCnw5TR5y8D+Lr
	 kvslyw1TyM+FiY6raQm5x+/e7rjidIulWJfIzvA5VE9VTnor2rtyscSa2oppdIz7CF
	 CJS18JT95ZAs3mYWt7B7i/hZDEkTYoProZMuUrUsVnb+wwhL2PMrwhhniDIpohnDil
	 qIuCMmpY5xuVXygViuwj1t1v72yYQzSm3ClpobDTwykBZbH09hjlZcwuhT9ebh9Sx5
	 On1hSUE9+NuEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD95E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173619875362.18894.9734722637703707726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436460af1cf2b01ae6154f61618c800a8708dcaeafb34622c33ea7acaabb4cd3
Date: Mon, 06 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736198753
