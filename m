Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385551487E5
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732044354; cv=none; b=hnbku1e+TIb8AYWPMcEJVH4azrk9REpiMPx/Mil76KB/4QstzkNDat854Uv2ULtNoXJ5K0mch5Txoj1qZT6DgBMF6qiT23ry2b8Vtf6rxyuOY7aDZFrWT9ljl8VkJ07H3mEj+uLQe3R2XrJNQHyBnsNZ7Tc/Kd0TFMCT4XAli3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732044354; c=relaxed/simple;
	bh=5fb3jxlalxXqbazjWy0/xzpQS+dxzgFm+X6lvXnBHpc=;
	h=To:Subject:From:Message-Id:Date; b=OZ+f4E0CnsnCjSmlpIwTCtjHahW/OEVcVy5dELGpCVbLTNU3e7alqhz2DE5K20mn87jgxLa5n1+5HYx9QX1AXTSgaCitqN+kgdCqeq0g23+MXpNvOy5J8chu2rKjLR5db0cUz902Af3Q1Iovz5pWJ3/rfUxFQCQhjsQkn2gHkvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwvSsuAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwvSsuAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF753C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732044353;
	bh=5fb3jxlalxXqbazjWy0/xzpQS+dxzgFm+X6lvXnBHpc=;
	h=To:Subject:From:Date:From;
	b=TwvSsuAWJInrX1SNmB97NfdpyqvKUZVlznHAiXk254Z70DCha85m7rbotlP8LET8v
	 sBDhjVM0VfYVw1RTjuMK59TPof32qTEBkw2HjzdY3RZWl/BTmBeKBMglHDiN4UUoCg
	 tThOoLr1Z2V3o7UJ1JAJi+tR3RLdPBvz+oBMgKav+6yExc5abQYiDYjtep9yzYiMpB
	 Hd5qtuUazZ7JTB1/gNg9M7AOzhW1f7spOI+zPXbxHnyNkdMCPPoaUYAtK2nFFPH+6S
	 EXlvLgwlomfA5SWXsSlBz7ZyxM0ncgqUWtNrIcLT1Vi/BMH02fA5o99McsTL6Zz0Sp
	 v9aRevzTuZwhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DF3D6C28C
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173204435360.20303.2062786804630067240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87b014b4d4ef8af65a30baf0644ce8fcba05eac7890a5a1a4766a5e95cd0521
Date: Tue, 19 Nov 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732044353
