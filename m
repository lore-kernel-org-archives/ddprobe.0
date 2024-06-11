Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD6A757E5
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718148503; cv=none; b=cnO2bbupOK1qO45JxyzSWom2pQ7qapZqaIPkISAZfGOr5zA/6/GJkXZidSF9sVwBp6n/eqdqTi9XEQJ5v0FbyHC2XCAPw9vcZtd9oxQjBB8/JhQj39v4a7jQKMg8EpvX3Inr48dL3W2L2QTdxLn4o/EKxxk/JhFoUsfMAAijp2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718148503; c=relaxed/simple;
	bh=IL8O7kNUsqkan2EyofOQ3AcYDriNYoJpLRnNywRlHAI=;
	h=To:Subject:From:Message-Id:Date; b=uHfk3zY7fjo05G3KiFPEFuGIfZ5wZp/S3/TZs/tHMcwXP/21vIVLGZnKO+n0lBTTQC0AT4qa2WBOw3kDuhRDVzGwx/LxSnHyx5Hday5RZ0jyfZqZDdNxwQkD15uero24alBivo83d5DFrzE7NbQpw0bGekcbKJC5yl/eMxEhQAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPom/G0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPom/G0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CC23C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718148503;
	bh=IL8O7kNUsqkan2EyofOQ3AcYDriNYoJpLRnNywRlHAI=;
	h=To:Subject:From:Date:From;
	b=JPom/G0THqO1nrc/4UsjOFStlwfKFb4/Y3T1IhzFt25q9D5uPCD4I3AyqZZVW7EnN
	 SX0VcJhgOuWqNwvZtT91Iw2weiJ4aGTsTZxt6CDBhaFAbMCK2weBGEWIJApFVoGLr4
	 uiw5OSLFFmSdkRpQiE/5h7dn/jDUxQ7zarBNW1Cdj44nrhkK6INXfb/gRsYPIegpDa
	 D53cYn1OHSjlELHG5BiojBOzDInO5+YqeIziTan7yuSO9CS6eo2IwqIcLj7SuxvRBK
	 0c05oSKSRqIFEQOqLdN2SNmAUSMp1i07lpadq/oWVo4sfm7Dj0S5luEgSmZ12BZPXm
	 xOR+Sg3tIwySQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2A5BC27C78
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814850290.25249.2845083642855832464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8026a92e23cc457c18d0e99a48da237973aa832edefcf00a1de90f12262ca734
Date: Tue, 11 Jun 2024 23:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718148502
