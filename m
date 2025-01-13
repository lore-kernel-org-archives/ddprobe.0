Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45177199B9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736743554; cv=none; b=U3wmyROELnMQawXDbKNP6PEPC24oaCDI2jju5EUlnIkZLSKyyl1TKPReVrdZCKZ/NaKZX3qUes2G1O/SlEgWbZzFyocZbx0taqMNKtfceJPVy16qYH3N62dMzhDLnHGpQM7z5o+UZEuWVhzqsFj1cp3YLpDggrMRc87EZ+XN3f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736743554; c=relaxed/simple;
	bh=XmaijklvpBEBrgBEkPGvVp7zxlHnVNEzxd6zDqRGTmc=;
	h=To:Subject:From:Message-Id:Date; b=q/lypiO5ClvqKgMv7sWBQFhsr0kRF1q40LnbrpP5aLnxlwKqC05PhLeDjqWmG3fmwglA0D3dRkR6ULXeZr9Gu/oEp6rJ+nydeYT2fLq28QKWpW6F6qPeoIzJoN1M8ZqVnky2BT+JroKlmlIusktkW8g62y6XyX54EBjma/Cv4Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMrMVp3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMrMVp3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F3DC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736743553;
	bh=XmaijklvpBEBrgBEkPGvVp7zxlHnVNEzxd6zDqRGTmc=;
	h=To:Subject:From:Date:From;
	b=RMrMVp3Xat+MwPToTi5ii4Mun8xa9Mpyaup1k/gTxIK1ZdCyzUDBWx1/59DKzgjv6
	 wNwAn12DIVl9mnj8C9VsT0Z8Md0jm8c9rjm6kAWTv2YyJcVdm1RSEqIBqPrq4oJo54
	 Yu6YPiWAV+++sJitWKuMAN7RLFKQKmikzuxH4w3DN8CN/yFl8OYOJHrpdP1aH7GXKY
	 C30fgZjlpEyB+SnAbxODizyK6x/ay3t9zcTKzeROF1nEw5zbEqwBkp4f3H3BSEvLLa
	 JKgBEkahJi4pM6l7a6GFIcB6Yu1Vg+3TfdnPEBhBVb4q3oqyJe4f470R1YIbVsc4rI
	 OaPspPNVerHkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BF9E7719A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173674355359.31032.7012657478912560776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f637d6055d6154fe11ddb94e58df64967e1f39f910a4f75f3e8d738225c77d57
Date: Mon, 13 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736743553
