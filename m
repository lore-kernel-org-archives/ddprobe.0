Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1358A7FBAC
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750813794; cv=none; b=mvwacU87UNPOJ1MOMc/tJoXTgmSCJcDG0X2u35bQEvbun7TT8uxAfoSHB5LWyvEezkull94RiNOtBbAcgrV26Jp/Sltdv86lHw63VHmBg1A35oeXxPB5DA8trn1CETEYicMSSnsjVotb/HMAn0nmpP0gvL5KXPxxusLfoQLLeH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750813794; c=relaxed/simple;
	bh=BB8czRfVSjxGiS3NsValE3iBuMd+lx22g9WbJz2HVAo=;
	h=To:Subject:From:Message-Id:Date; b=In2FLpA0RjNm7J5FeRxWegqqR2kjRTKcLiJ/LMFpgmQAOtoC0oTP21XipBbG1gGuNhNQIPF8PlYRNA8wm2tF92h45jJcX1DaJm9GSo212nASd/bQ//ioBs0k8a4+jC33szqyV7lFhSbjg8lA+q3fyIyLopXpmbSdkIZJ+FSXdoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXWU7kHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXWU7kHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2FBC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750813793;
	bh=BB8czRfVSjxGiS3NsValE3iBuMd+lx22g9WbJz2HVAo=;
	h=To:Subject:From:Date:From;
	b=iXWU7kHcgmB816ZqjbbnWQ/OJTYZdHzuRagxrWGcRlZnM5LjnB8bvSgENDB5W2aSo
	 G7bBAogQyCuXot08ygsmgTXYgNWzZbspvFug2KiXQbG6u5EBCMuHZj6aO6O4pMY1XW
	 dkfLebarfGSxOdmERlxdO/LlGNCM6gMhMaQcZiuAFTpL2XnTFhmyFyFb6dDc4F6dRT
	 ynoGThyBFA6lbShwT4AtTw2l3ZZNXqUkXScDgXNyuM9uRjRXx2QYdgurvG3vGd+A1E
	 LVaYyo1RHDrFBpWcSkhd/FP9OSWFS2+VkC9N25QUqlZJsb8eRP3CJCFL+BaUMf7AKn
	 97noZ5iHaEOwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E485C77B7F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081379357.12934.6352326295794339791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d3cfd688e8d9935a948111b527d881d1a220b0e53ad677c60674b2fdb99554
Date: Wed, 25 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750813793
