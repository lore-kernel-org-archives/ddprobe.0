Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A9C2E9EAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762801194; cv=none; b=e0DFOGdbMZr+Vlg8scHrHQCptKAgxdsc7eilHDUx3F4L1MWWBrHnHnYiKHNCWuv0k78jk+zI0sb3lbIaCKsojPZ7iYfHZWPCS9dVqtdH7uPRIUk1l/SJO3KsBnt287V57JJ5cC9sbwzyVe9f4XeZAitHOe//hk5S/KlPwa89gSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762801194; c=relaxed/simple;
	bh=+kAhOYSQfIcv967ci4vZ0NujQBhaf0ny369Fd11BsBc=;
	h=To:Subject:From:Message-Id:Date; b=T7IhqirWS+kyIwSKwfZ03NV7vGHMm/jNzE8R3jAaQSDaqCRiBOw8rSHDGTCLmJir6RSnWsrg75cN9n4r01r3r6mwOWywYKBJbsuI3yxJy4oJivUTsxk9I57aOpueHi5gDgPi8FT/OAtT0Ymfgg6/4mqWpC6JL8+2nZYHwbzdLu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBx5odcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBx5odcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E18AC19423
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762801193;
	bh=+kAhOYSQfIcv967ci4vZ0NujQBhaf0ny369Fd11BsBc=;
	h=To:Subject:From:Date:From;
	b=HBx5odcXTdkNnAGE+7FQ0F5gB/na+GvrvYzFKZdhX4+HiVSQ/4sR1VIQAQRGpqQ7v
	 bqxIdjlhESF5fXCVwmJu3XABFdcY1dnwNi+8YLrIgn3aRPHVUakTPSudxUsQDEarqH
	 b/eOOtPwgIto4s+m/1+OuovxLXL53oKQH2r3OtlceXc5/trVi0gC/+TI2JNTvwvRaG
	 l8wBTr5pbDvDP9mKEsmqv8av3RFLen/8Y1iIR4gXKwgTwc+oA3D3NVE/27AdAagBub
	 ZgLxFWpqJuqt5GiqiTAbOHni55enkNrQhLboTjue3wQWLn37CbZeBMRvpZ2JluXFVj
	 HGv4vOJ4/rfpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91341CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280119358.5937.7708071920391573801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c841bec990caf472db961cc4bc0dc8f02c279bd6f37e71081d61ad9b3526af3
Date: Mon, 10 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762801193
