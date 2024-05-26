Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B481B646
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 09:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716715463; cv=none; b=XqybN9ZlRjMBEBUtk4bCwIGrxOIx1PLq74daqbaRUYiDekAbp/M+gav3shn940J0o/ym6MLxZy4RiXjNhsnFJOlALjaj1nVoikhgnbh2G45sBmWe47GqDSrunxy6lccafv9PIbj9lbbhHe72Rr6BPhUjbSFvZveQR5etZq5mNpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716715463; c=relaxed/simple;
	bh=Jp0n3tmJIfmwra5TuxGxK/OI1KDDNXEUqGnTzmGY4Vc=;
	h=To:Subject:From:Message-Id:Date; b=dkeqKHhiAOLeWk+worE1Np7l6RdRD5dhl7aNlPFSjDxTQ9LcqH7l/zuAQtNx6fLq4OoECAIR+sNYoOGyAst2c9Sp8oBLIBLBCZBDX/k8tpcXQM1pQOrVuZj0PWvKabUSqPQmC8C+Yw3sAqM/KaBPe/gqNy5Fam6RbSiWzpAgiJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ht7Ifnwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ht7Ifnwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E949DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 09:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716715462;
	bh=Jp0n3tmJIfmwra5TuxGxK/OI1KDDNXEUqGnTzmGY4Vc=;
	h=To:Subject:From:Date:From;
	b=Ht7Ifnwau+4YzIk7ks6V1pVdfQl7EPk/DQ9fhvXk3aClWorVk4GPL9Ek1yFauMiF7
	 6mDD/tC1VzkeI4CCr7U6FPsaojkuy/X7W78YvBMQ6Q06EgXumbkaiTu2NtJ0SSdNwj
	 SV5ErXzn+Mk5ltXaFMnO3dfaP7rY3qDRKtgDNd4jSquUz6gTN4HhnuEZl5kQP7DjXp
	 6W9AwLw1y/t1hZTP44RyylJP4bY16Da1MTg/SWYRpGZoEQjQ99bQwn/lLEVpAN54DL
	 VrIJy/WEY891PdupAL1LwFOrTryfK76T7v6jk2nShqzQA8qkh7rctIfCGlV64A1Y0A
	 qnkFWOd+dwCfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84DFC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 09:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171671546281.28555.6771697561896063507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1f1d70fda81218ba13176f541947f964e7c1710428dd1eb7766eb6ad876603
Date: Sun, 26 May 2024 09:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716715462
