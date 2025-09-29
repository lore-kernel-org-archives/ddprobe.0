Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEE819066D
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759153194; cv=none; b=aMtbLAkp27XGRVlcCjHFQE6QN909WQy91x2F4wsm6gOhuj4IoMKLoxoRh4owdhyDEFrBCsoqWOLdfK+KcS4xVmk6bvhYWFhfKJKDHcTaRrAvIn9UYU7UWvPTUcZYKhqWHxQlfkdbMaSHl1tpcjEf6gge3Fak55JtpBsZkcNlp9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759153194; c=relaxed/simple;
	bh=1pgpkWOhiBP1VCaZDb/3g3c8sy0NJq5nTJW2ll+MuHs=;
	h=To:Subject:From:Message-Id:Date; b=HIcrHzdAq2kquc/FGi0/Oh1pIuCZo4aKZuMs/5K3r3XM/TUT2g2g9cJb49gsVF6CvrY2b+9jkZGVr681vTHdAUq7Duzma11nVXq0yFPLT96xLAml7BphZqZQvIgQ4znde0i+Wpq1DT5OcUCXE8IbE+6Znh9dK+jlB2ppw9TIyBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKfaMHcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKfaMHcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA921C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759153193;
	bh=1pgpkWOhiBP1VCaZDb/3g3c8sy0NJq5nTJW2ll+MuHs=;
	h=To:Subject:From:Date:From;
	b=qKfaMHcPBVS/G9ApQWoKN4aLc5+1vhPLYVvRGjFhWAcJBmJsr+X2Cxs3wu5P/E6IO
	 tOvKg54Mg9LbwcTQ8P4IGmnIWtxLApTIUJjU3LbKZXC/CZhwNuchBExM1H+X4kUexY
	 LViibPB5sUkIJ6JU0onR1FioGTnNfyqvEeG27obGfENO52HciH7Oy/JuwBw3vVvjhe
	 cBxncGxo4qLvW1BiMTKyqEJCGrabJsrw9u3zJTEeclQ7ctTPBRqjCgbOuAZRTi6HFD
	 +tE+dqlUA+YLk7Rpqsz9LA+IePei7w0+b3h9Rvg6KXn7IsTSWXbEc/3qYxVpYfailz
	 NIDSJU8Hmk0bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973EDCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915319360.21936.5049568671621249352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f0acb91b4ca1a1fe13f5f85903ee44069c8e884070abbfea4f24261fbe253e
Date: Mon, 29 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759153193
