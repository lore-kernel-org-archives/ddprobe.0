Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738D6A932
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754353194; cv=none; b=ufrIPy7dy66xRhxCmDzUNzu5WZsJa9lhWez3gcEn3diPg5GaP4LS4h5M2PC0xpx7LjBQ7BSwVoqK4bTc/UpQwYmn7/rrcW922+0Lg1eUAQiNWxvEuzxfhsQ6XJp2hI8+RaQ9xvbkF14EJmqltbuaP3VJfXE2d3sefGOC+zI7n9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754353194; c=relaxed/simple;
	bh=13pEMeEmEfpBH6Q5EweVbWnqaAAesmQ43mWaeHEPOpE=;
	h=To:Subject:From:Message-Id:Date; b=Dhp14hgtP1rk75p8+bJ2oDJ4fd0hLyA35QWQHIgpmW7lDCIWES9eqPD1EYE2dKiwOVMf7vaMWeqAxS17VjBnwSjDltET+tRNGk0p8iCLV8nc6WDxWedSiT/MftAUykFpceliCwDSI6LkelvudNNQ1d8A3dwD8ZoiBXe8CfUn/K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1z0Stzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1z0Stzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48F8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754353193;
	bh=13pEMeEmEfpBH6Q5EweVbWnqaAAesmQ43mWaeHEPOpE=;
	h=To:Subject:From:Date:From;
	b=W1z0StzcX1GqNLdsf421Fy1tV9N4isJASFi+8+guR7BUGaxpcEvuCbf/ws7iObt5t
	 f5yiKnyk0WbVHHOuzJrEWfbdXFrSSl3rpLj4gIRT8JwslfD0MxdLNqzMgdvVpIyZMl
	 IWt3rvUdsHbQ5ZdoNMZATULnX1FNGE+3bcALhk6K96CKKcNwNYuRHEBrfbZIx4PItq
	 dNwHUqI5QcSsSJKtI0sFEf1EptPQv7Dbsj1w0La2wV4A9McqFziw3PauHmWa5L4X2u
	 M+W/KYPJXQWIQdeZ0GTVr7J6W33uGUwtQNwUrLs5XaA3OMjXZyTEhAx82isy5vxXMj
	 scrSSya8iU0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92516C87FCF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435319357.17574.7863171185923274627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605b75b4c70ea492d84b0d463c695e9adac1c0468159afbf8d9429419cebb8c6
Date: Tue, 05 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754353193
