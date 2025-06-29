Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E5F17A30F
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751173193; cv=none; b=usk2SU33JWjaSxcIL1ixug/s328Caw5qKF/U2nK/n4oLAkvO2pbKUeLPTjxRv3NohgONH1+sCp0B6/vxpJqCCp5r9WeGnLL4yKra/L4Sq1SZvOSo9IMKqKl8iv/AcI1xE5YHgD54bIHz8VyxZ0q4T+1y6N01Q0fnw52heI5O+Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751173193; c=relaxed/simple;
	bh=qSdKaE/GhWbthWXZ/JawxgjpNvlpPwtidVwtj8zCW/k=;
	h=To:Subject:From:Message-Id:Date; b=STfdvuRS7D2UlIHw4oFAMffEtX6/+Z6bEy05VS3MCGkCMZTr1iq++e8R5Q1OukgRmxjJLoHV49MWRagQRfu63kKOB8ryqDQSSq00zmtfs8CkhtYa4FbVwNPHZ9l9CoOije96IH1bPb9KCkByIeP2OI5kF+A/x2IoalH+Resc9gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBrOesRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBrOesRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A311AC4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751173193;
	bh=qSdKaE/GhWbthWXZ/JawxgjpNvlpPwtidVwtj8zCW/k=;
	h=To:Subject:From:Date:From;
	b=dBrOesRL51fQa3SFI0ITQ+d+TEs8syH5mUkcXnXo2orjI+MzJQAPYR5ow8/JHsVTE
	 ziPJlL+5uBtV+UBNGfnRoBama7rf0fkWBCo/HclP8voUAJv2IeZHPigVO9odrQvfAo
	 nnaGP2UJTXUZ7MxhLZ3tFeK2tLZPetvan9rzouoz24cW1y+uBUJy9JhBa1pJTxNEBK
	 isBOgXwQkE/AC+i/e/z/jmQOimhHvg4TrCeibaYlr3GUESAYUC+HPhXH9V1JE2aDZU
	 6516fSKagQaYlucWKkfW5rDu1UWmbam8vbkZe1bG2LLhY+jHn/PRL2BPzt5hpSFBtK
	 kCqhuhS9/Sjuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E3AC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117319357.2904.10653441874745507180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f44af92902468b7c93a7df1b7f27096127d2d6cba2ea58c67b0e5df49dbf46
Date: Sun, 29 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751173193
