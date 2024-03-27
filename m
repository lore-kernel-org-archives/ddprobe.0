Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130E133CA
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711500497; cv=none; b=DSpIFxNOJEBvlKgSXl2NFDbpk7rlMgOtsZGPsaPcG6IyDWgDFrxRW5b1CUpOra/UaEAVtL/wBLVf3PmctSri/j5jZjppx5u11eBQnNobOZ/LMqnxknmrm61BMGWV9QDoPtjoMkcbLsMTpcljL9paXCbK+EXjVvPQnAklsUacrZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711500497; c=relaxed/simple;
	bh=4BNT5zUKNbOGMg/B0GlvIUAhiyBiyiqIJk1xSm+kVyk=;
	h=To:Subject:From:Message-Id:Date; b=qn7J0nLY4dvp1Kn3crZXSFqA19zHrtErtazAknUFtsxIm5tA8cQnIebWdL1zi9gUG74aFhhrpGGcwTyGcMowa3pXyq98Bn2OklHcDfXrD5pAgecONRrc0c8v+t2DGMGdOxG5rE018YdnOUI7wDLRVbI7+k7ynK684OZa1ecNhEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdMp4yat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdMp4yat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70151C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711500496;
	bh=4BNT5zUKNbOGMg/B0GlvIUAhiyBiyiqIJk1xSm+kVyk=;
	h=To:Subject:From:Date:From;
	b=BdMp4yatNMW5nnsMrdhuFmogWDulwL14M7+qDUiPxPhjbm9EUBPVetAE6WEu2DINW
	 INH9HJHBaWx5FTRgh87hzsSMSJRoO9cn+u6YwNAbO2BPtJa8FMiOSH6CY4gtVZQM9V
	 SQ9rGj9jb6pTXjjAg9UZvu6OZDgf1B19sztzzrNSl9+z9D87bKUisimjy9jdHpPAbj
	 hq1zI5AzbqOJul4aC/V/I/KPSbyKTl+CSTcH9OpNO9rUEhSX4752X9w90qUHPreOoC
	 GaDRx01SVZaG28cWE4dFi54MraP8bKOdYu+nsUjcH299A05+eYs2KSC1sF4Y0WQfWD
	 lUaY83nFP9W3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60459CD11DD
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171150049638.27872.17014827446677143076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3af9b1b237e1afe947ddd0ef71d9b19521fe0beffb88e8b714c6f0ce087f3e
Date: Wed, 27 Mar 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711500496
