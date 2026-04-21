Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE7836E478
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776740854; cv=none; b=fHlix3wFqA8RLBBzp9AXiWdm0i8QrbKtUg7ElYWrSzI2whz5nKpieOBO/dAQLrgZLKjDDVxj6NiuoFZ0cP/OaJGPlJD5tydOsxmi8ONoOCpp1O9gBxAx/xc4OjYOfa5LHoNiJ3YgXTAbZyfd9CBsMkIwqcryEKZG3SkAZ61C4B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776740854; c=relaxed/simple;
	bh=nfMptPrZQm8blJ2gLFsHWNDrM0e6zRKu4apaQsg5x+k=;
	h=To:Subject:From:Message-Id:Date; b=YPTUxXI5hDxgZZv0qQW/T/fLJT0MVlTkr4lq9iRAkEUybaUYbQytRljGzG7Xvbh7mci6zkSYbNkiMU49r3B5iyrZ9hUGmMhbu2EQe8dGE8VZ2qIBtTTgiIkNzJWSKGcve5qNZxTiLA5uJkOilRLkXt9lNQOVgrQzLrXsu6TtW/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhKtBUV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhKtBUV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9313C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776740853;
	bh=nfMptPrZQm8blJ2gLFsHWNDrM0e6zRKu4apaQsg5x+k=;
	h=To:Subject:From:Date:From;
	b=NhKtBUV+Aogo4WF7CQuFVKRC0waHdG9DwtjFi/uUG5jL7M0klNA28/e8cD74LIjUB
	 CbFSNjXbOI0vhqSyh4vRhVCSlood2QaI2D3HHrcumQ73DshZKoWo1vxth9P/d69KGK
	 MPIzMOqST7JrqC/Z0tH37tks+UG71W1SskvGmEFQh1eHxXDrTd0Ud2rxW8ZlnHcISY
	 Z325x3Ogkjj0rBDwU7u5bsMZI9hWk1QcBHMzEtgRNMRtodBdBr+laFmz0i8jd9I16u
	 uCxhR6AIMzPo05TU4QZ7LaQvU/40rECGzeXrkVAdkp/CgdYZkRoO7AaEvTL5116xD1
	 PUFFMSW5aMtnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BDDF5A8DA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674085368.322.15582619073014441466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dff903ee698d6e9a23a7f076c90e7f9e4485459567ab1f72c391f3a2000f11f
Date: Tue, 21 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776740853
