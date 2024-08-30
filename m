Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B9D1494C2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724991354; cv=none; b=CpWTTsik3ED+gbSR8XmItOhkw7EM7lraleOGxwDLENbQjuGs8L9hvg1y6AmMUqN7aqzRV+Z1C5wQb7ZW3anOFSUSzBZX2Q3p6xILSyGlLFC7h+3Q3cd164nUhLIvsCTPYZ8Qt7QlENhuZjTsxujQ29Uw26kQRHB8aJkkfKfnnuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724991354; c=relaxed/simple;
	bh=/lqq5zZUAyU5vdEWbuO8bPEipebR0P640A16usHEOHs=;
	h=To:Subject:From:Message-Id:Date; b=PcdL0/NqZ3aQIRF9+49ES8wyowVazzpn0oBFFmI+FCbVofZ1rdR9NlykEx6v7P5N61FTTRpBMYpqAjL7ZX/hjEfDIm+G+pmingFDobMJ9D6qnS0a4ZdUaHCWSeG9uh6LV1noUocwRssfkeLpLPhMCi7Ep2ef+2v/wM7CZ7zZQWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KazFyK+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KazFyK+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD16EC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724991353;
	bh=/lqq5zZUAyU5vdEWbuO8bPEipebR0P640A16usHEOHs=;
	h=To:Subject:From:Date:From;
	b=KazFyK+PIse3rgMN05yF89ZdoJ6+BAUpIwW6/7gvm5X34jlKPC1pH9X2ebu9iVCwJ
	 yzYO7/lGQbDWAobXpqb0DiX+LHwIQJsY85+dxznelm1Fks52qUVVd1WlbQy4DUei4R
	 0lYmtLFn1XC6CsHWQy+SBSpPl9k/sppnS7D/DGxjKhGhkP4AnlTBkKfTzbEBfPOAx/
	 zSjkRnFpfYQ3qNdKou+NyDJ3E18MBKEvHhRq/wZ5Jq7FTostYotbM8u11HImYdUxRH
	 /2yirFzIKyVhQ1pzfyfekDtmvxnX2hOzu3ZubZT8JoDC42orPtCAibpNN6G5unkuAY
	 qrOu3OAX7RkeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E94CA0EDF
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172499135361.24151.6695225967681646154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72dec07a482f90dacf2ddca3264ecdc7ca0d9d67dfbb1e6c5cd4638a50ad75d1
Date: Fri, 30 Aug 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724991353
