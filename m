Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2D121A42D
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786365034; cv=none; b=jlXlya/yYse0DYkFqhAn9sX1yL3aZirI3ihQvOdU7tNG5e75ujTREeCXaQZ59Sb7nyaUX3NTUttbhHH+ljPMGKsH1Q2iJBblXB388tMJs01E/U0sGgM4b1axzf/OSzN/W1XsRjKTp0dBHKfOwSwyPG2/+QiHhX/Xgnx3B0jVr9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786365034; c=relaxed/simple;
	bh=zBu3x6Lj3fB/Y19KAK0HVOY80iuMxeFU4N3ymCSlU2Y=;
	h=To:Subject:From:Message-Id:Date; b=tJQumzlCW98wXlo0bG8qOeWxvX2c+MolGhAP/ROsfSiAMZ8VlH0S5Ubk1IL//qT2NDGDWW9er3jYlkna5oqy3FJ4/nhw+pxSEeaAUZ91KwKK/tJv/ahIbEZUPE+qMyNNYtz9Wb5ljWPzGE5KenqlXIuO80R8UpGiZBFsxsvQfPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilm2dkef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilm2dkef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D026EC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786365033;
	bh=zBu3x6Lj3fB/Y19KAK0HVOY80iuMxeFU4N3ymCSlU2Y=;
	h=To:Subject:From:Date:From;
	b=ilm2dkefX2wHtmT/j4tF7NMdKdpCVZls57hgmGPgqpqiWIBEur2FyRZ6A/cmIyFIC
	 3Q0P+umbjKnJ8ZOBYfaAkkiZRXBqwtwcwA3DzNYfH0CsOs1mB9A2sRRtky5Pj9llHq
	 UuQA8iGV8MNLRFrIEt2hljw03VSg+a2zUMjX3bzcF13+9BQkMZTvL5EtrpSVDTU9l3
	 7JHPMhAoBgaZhmYjlaTKkV8VgIHXPZlTgFvUzw2y8fiZT0eNMmg7kYf/8GuAbBxBs+
	 4GVR1mEgrxRFKyTdVghkep762DDsTSZn6vvq623fWBH7G5VhD0vvxg88C0tdADZ4Jv
	 /TMsG59Uo9IZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC387C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636503369.15327.731879779343961285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92ae70ab8937f8f768323776186ce9b4122bffa8716b1d4b7899ae6db48aeb2
Date: Mon, 10 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786365033
