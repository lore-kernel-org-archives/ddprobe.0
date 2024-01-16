Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEDE1D545
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705429097; cv=none; b=uBk/VXDvZfvURKqMF/zhtYR0p9LzWQdOay3NroLR8dGiFSu4H8rHjz2g0pcNvl89F3q6YKzbiZ4Ts6pjcf60Z+AhXgTlmibmSf6/AXQl7Vu6fllHa+1FOkULLohLeFnB9uFQyagSqaclf/zqTxVCb9mTl/MRNZhsvabKBqmFw5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705429097; c=relaxed/simple;
	bh=Syx3Q1KtpWoHEbfSRqf5unajs/A6GyYxPJXoteTXO90=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=FuP05LS0gTmmYurKKWt0Z9EfEGHPrtwfFpCmR76pOrAEjiuN/CyyXK0F8lwnGodtkOw5yKXFPl/u9iDqDMyhX3fOgahdtkGPa9N12hEn+q2EiB6Zo6ZCdk7JEVhHC6tlTL3ZyZVRMJrdrWq7Xsso71dW+oJbn2r7EWU/suiUQd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFbxBL8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFbxBL8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88B57C43399
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705429096;
	bh=Syx3Q1KtpWoHEbfSRqf5unajs/A6GyYxPJXoteTXO90=;
	h=To:Subject:From:Date:From;
	b=VFbxBL8CA0g9FWfE3EiR8TI6DBRA00muTvKCXaPY/UX3Q37kXT6ko9boBPg2J4cih
	 womktS36VTEf/w16+HND9I+rgWRHTJhGJfPfvIwZBItze0gP8pv6GB3r69+eZc3/ws
	 IOw5JyXTiYhdbnHonBPYb7AjYoWqHlEvIMs+cBipYJTEoBlQKgsHesO9lOPxr9ucL/
	 nLDSqqzrPdfr61L9/uOpnaxcK9qe3ZglaZruZWSwqlx7It4j0St16jFyG2ZKdwPogx
	 cNB1Y7vA0v3gWxTNX0Nbz0PtwE3UJohurhDbvtv2FTTfgnHdZ9BeTPHC3ahAdxBJ/J
	 noBwuXLBxYLLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6974EC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170542909642.32735.9053735910238042413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f5053f496dd94db5798756cce318b49d028f9675e0aa1f3f92310b02e6acc3
Date: Tue, 16 Jan 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705429096
