Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2869B1552EB
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723190154; cv=none; b=O38hQnZRIYituwaRq8SbPimiEPcMAd95Bvx3B0f6WRNsfA25rhQ+q0ekY9IfKpCqCMHE+lZX3yAlOCV6nMybvm1hXU5zln6rGXisgEcvcbyEJiPJ789snLRU96zMUe4LHrDAF4YwhZZ2T8eThchurgnisZ2wJxvb8DgcfjWUavQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723190154; c=relaxed/simple;
	bh=nFr5XFfklhXanuP4/UFU3m09b+fLHXeEOzfEzyEeNPo=;
	h=To:Subject:From:Message-Id:Date; b=TmV6tD7lRgTUfaTUyjjmSrTDzZc7kSt6TsS2qsOMKUrvx5zOBYjBPzlCX866KuC8VBSCjABEJdj9g2s5GLEXHuRdTNr8gkCHEFeYwdkKhwJ9/dTUAFYRXnQAuyJeysKxC6K3UHbIbhONNZo36HKNYGiUXWH9f4/VuZ1d0xnzpYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOrIj15B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOrIj15B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B7BC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723190153;
	bh=nFr5XFfklhXanuP4/UFU3m09b+fLHXeEOzfEzyEeNPo=;
	h=To:Subject:From:Date:From;
	b=IOrIj15BP1Hut1rjAk3EL3ZoG/OKxmiRa1CSBmEoYNdGJMOIniQYagp7P6KYF3UaQ
	 Qb+sTlL3cXX/gaH3e9QL/0WHGvAt0xLSAGW8R5lILuhFTqJTBx3SfXwuVy6sl2vCwi
	 OWBGF+fhLfbCGxPpR+7Y8T8Td1/4SVt+5S9pUQz+8uoonKPNZy77u3OWClJA1Cl92G
	 tOWPd6ozpzfVKw4u/AvJxQx0adFos0bp8EQtWR5JYlArWvnjykinYGhUTthEuNdNTV
	 mPuqNrJXfDYw2Iq0fRuuLbqiiN56wvDLhLYa+HrTnkUt5vJlj3Nj7SPqPhIPXc8i48
	 xE2AsRdlVqvzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F6FC52D71
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172319015360.7489.109305943884677158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4072903ac95dbee6cb40fa8c1636b9679ba80478a5c81d4b5d6fb7a36b0cb961
Date: Fri, 09 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723190153
