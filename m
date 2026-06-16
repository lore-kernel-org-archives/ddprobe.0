Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1B939B96A
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781645194; cv=none; b=U64kKWbOtRDw7/+wxpqUWBIkeKH+UNdTvb24J/iR6lUB3jTzAPJQc120919W3pUMmlbu/h6AYdvTtc9RYje1OMFDgUlcY+z38CI3rxiXcvlvRkeATQ75MS9bM4nQ3eQY387YooFNFSqgIR6mh3jfK2gr4Vl+JQPwZGnzv6lTgig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781645194; c=relaxed/simple;
	bh=bJDbMYyz6imHFHog0pnNB93d9uhddPVtr0/CcYjuGCU=;
	h=To:Subject:From:Message-Id:Date; b=qVV+TrF0DsDD3Kb6PcwfPRPVy08Y+iaBll2fqYxoSjQ4pcauQlRAj17SKynPAEUcBeKHEv6/L7qlMIK3xDqmEbxJFcKCTl16ry8G3Kgkz2VTgLV45rO5PRLHyMhAqFKpNVQ3j59MNz9ZhadWGiWIrBN1RNm5If1JSLiC6iG84Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBpC+Syk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBpC+Syk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2E8C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781645193;
	bh=bJDbMYyz6imHFHog0pnNB93d9uhddPVtr0/CcYjuGCU=;
	h=To:Subject:From:Date:From;
	b=oBpC+SykS0NeMfohcuQPRw1KA8kA0DxFLKCc31qy5JbVtrAx4C1Cge2Y0WaS7uwba
	 EERE2dtetGsxbgyreLlj4InOojXBYpxIAqmAZGG3bRuomf+wgOAnPR/Av05p9cPjLm
	 VjZyHCbnwVXshLlFPzZAnSlyjMlJQ0ZmTPs1pQkftrxgo50NIpJ8qAXch3/wtpcCGA
	 cnmVQd9goua+PgaTyrFZU06OB9JjTGnNgAuuaJJWn1gyhKCwtjekHkTtdz1JkC1WlO
	 99sr8insjINQ7dNrdGYuBEUI21XaccrQIBugq5t2EFQNNrqt6bY9+i58GjPB/XgyFa
	 yM5FUNBsxJ9xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB863CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164519369.11710.17679092043949473379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a471d603f68b237d82c148eeda6c61b27339b45e67ac015a0da7cc780175a6
Date: Tue, 16 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781645193
