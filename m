Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDE53CFF68
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783932515; cv=none; b=JAJkgL6Ma9VA2IDbsi4HOa/CKtjd7CijQ1YjnfiK1ZcCbWyE/IrKxFauyE6bg5nO8TMlnBApy46hmMFWH8JW6CmCoxGi2fhSloKiCrMhM9uLpQ9d+dXF0Sjv8Mr9BkXEa3XK70NI9bdX6K2BH6xHctl8fSlOH0y2B6vc3B6hBIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783932515; c=relaxed/simple;
	bh=/oYfOLF5/Og83CYpvIIABzT1t2106EVuCiMwZ+2KAyA=;
	h=To:Subject:From:Message-Id:Date; b=eG18oiVjTN0atyan5DILbv525RhYq1ZCp+aTQh0iW+o8DiJyfkqPldDBkIrNiOgHhsRNwlaThPiPeezy9kof5Xv/dvlvUCV0KTdp9MoRj1hn/uDzLwhl3GN1fleEnW5XqfvhP6sGqlHBLBWv5B9KlG7/tMK26tbyFSq2sIuf8IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbGxHWoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbGxHWoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D489FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783932513;
	bh=/oYfOLF5/Og83CYpvIIABzT1t2106EVuCiMwZ+2KAyA=;
	h=To:Subject:From:Date:From;
	b=mbGxHWoQdnLQlUOKg89H+mgQigVgiDgo4UW6d6su6EHXW3PxhysEk4m8jJx9ZXnBY
	 ED2VcC08Ln/m5tqP5ay0zpQon9JbnFW1nsenE4Lb4ZPm4naMUeW0O+bHOcneIoTOxx
	 b6rvd/tC05B/odrnQW/IA/qngYstj96X66KQAlDJRlGK7DycSyP84g3k1OtDSN16nQ
	 vZ59bLe1rCMpu8A9+IemDgzxq29uYuFdIUKY7O3dhNUswJqFMzy9nYb8yiRW4C0xvI
	 yQuO0Uww9e9afYeiIOi7CXNudrGO1NjfHCVEOdEBnHEmo8lSRaCRzbkXfpQb2NV7jj
	 AJ86Tjf5bei+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1107C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393251371.30104.9133510653311872810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a640f358ae5eff4ffb5da29f92b677ed4e04838bb98f032843a26caed7270d
Date: Mon, 13 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783932513
