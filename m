Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231CE2E36F9
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752630594; cv=none; b=n4pGi/QObKodZjbrm5IPuBs6GdWv2rEpKk7qElKtUY+3TKU5cjdYcHCbFwlsidf9k9nBIGDhpadaVKZAmJR/MXP+kn7H4EVcneQD12SdUjzZG7wAidtxkPzTxExgKcul6hooPIrQ2VDZ600K+HseO9+2O5nVBXMhMHZLmLJ/+LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752630594; c=relaxed/simple;
	bh=HBI2TTFRa+j4JLmgsO9wlhLhLVzlzaaqJL56U1opQvc=;
	h=To:Subject:From:Message-Id:Date; b=X94f4ZtXUgrZqOeLLR+v9VIO9wM34nSInbe5Q8/f+DzHCya6XX/duu3HQhMh4+m6K0fYN/4X4yKAvOkngAZQruPOxd+QowsSRTxUfX0bBE+dYLjAp80mRW7RM2v7iQRsxdcjCXY5SCCgtutVWWYFFUgNN7kt1xiDg3gKj6YHriU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uffBRGP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uffBRGP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A729FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752630593;
	bh=HBI2TTFRa+j4JLmgsO9wlhLhLVzlzaaqJL56U1opQvc=;
	h=To:Subject:From:Date:From;
	b=uffBRGP1mE8KfS+UqGQw3tyc0SbDHkcPcSOGy1QKEub9G3jVjkqIDjEVgcirZp/K1
	 CnTpAKZEWcIXB3XuJZ1iGv/8GUb+9rbPdeqaVwjPT8aGghmg3lyyW+Av4+LSCe+ir1
	 njRi0+8Q3ueDZluBMl90Ge+J4s1WckT72yhnCkpdtv7thYnU039HhrNNoUe49hsyzo
	 6HK9BN63YI9bylmPPiociHYFKymnDMO3o5NXy44Vn/RBv+1u2KfJPvL2m3gVM9meQ2
	 t9D1CfJ58r0Ze8T3mEW0OuvA8O8aJ8TiqwVTKrMY01WDSbD92Q7oO2mdf1H5IAJHF8
	 aG4dMPB+BfMcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920CEC83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263059357.12231.2261922630863662034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50113d5132b81b9123b6aaf9b844e8b8d9561d22749b76151e166a4697279445
Date: Wed, 16 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752630593
