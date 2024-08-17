Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316DB36126
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723866954; cv=none; b=mBLFGk3gKals56LaOWECnuoUDb9Lkh6lAp5X7RwD+7ipCCVTi3dfgbb7RKBhB0+3xg0cYsh65WYWDYWWPtuLiXkXZV44iQB8MVEGx4e9Wwmn9cHR1YRpWFbiz+6iXvSopJ4A4hTxZK/2SZ53r2YqOIrODa+6PJlsnxAFDKkCTBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723866954; c=relaxed/simple;
	bh=pznNcXtsFLiT83d8C6jOBy3MIu6j44Qub2KeCqSy2VY=;
	h=To:Subject:From:Message-Id:Date; b=ZFvH4ROIyFKlIYCQNmHE+vCMJciFfDdKAYPhY1IMx3N+ofQZKhkpZupomFBfsrb0zQ/bEAwIxoVo4i4aisddehn8Kjp43+SMjfWSGiBofzPFNSWicf8F63p9k+dDIRkrajs3dNvMG3q5N/X+ibi7rjeoUESW5/n+4LoXeSgVoOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdapZuP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdapZuP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA44FC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723866953;
	bh=pznNcXtsFLiT83d8C6jOBy3MIu6j44Qub2KeCqSy2VY=;
	h=To:Subject:From:Date:From;
	b=JdapZuP6v3EwBkdkJ9BgGjn1uFJ3kusn/EWst5YpISN6iagA8HDdIg609poBRhbWX
	 TgX+IaJsPBSX7pezpG84D8fFOF6I1NnmP1NxKypAOG/7uGluQFfTMAf63lOWZlQSKr
	 vfKuT6VaPTOo3ObqBN/98zV1CfJw9rvQDa27WfQlt3p3sktqPioMntkHp49ROczFoT
	 8Wl+losiUqLJolkAPvkqskZme5xOu6qcqKr/UaDP53k2lqMuYjSYEZbF+4bVb4UAoH
	 6zuqSGAx/L4zKaQ7SdHgjt85HgySkWTwu02vuh1CmZaYPlWrsoj3N1XuFP4l/J7G7S
	 7YNZ+J76KAFXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96725C531DC
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172386695360.10399.16784854641314841030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086fedabd9a912228699f9c3a4b3033052898e2027f2b3f57e8ef76a821cabb3
Date: Sat, 17 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723866953
