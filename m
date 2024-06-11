Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4538488
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718084904; cv=none; b=W/jYi5RiJxET/xLnz20XVmCtmHXD0fwQMrMlhHJHWja2rM3F0tBV8rzEKpkbSsxydN3KqQfqFEMv9AGPo49OFoVQsJeyl9iemv3CzUZYJGtIaKZlo5zPBetWr0Ckburdvkeko8DIl0aEsf7NKY0v4qt6QK3v2rOtfkfpksrC5LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718084904; c=relaxed/simple;
	bh=aWeqBeWLdLWO4M/C1t1Rpf0H0gQ3SRdCBw6IJAO68Kk=;
	h=To:Subject:From:Message-Id:Date; b=kgJYDid1/FOoAq2IYRqmZPvNnq0j40s1VxOFTgZZE7ZEOqdJD1vJvJ7AG+oqWSmB3ZjRundc8vV7UrPPtDy4NhIW4n+QpJa4m6lHXBZQXVMMhauPOc2xwFGttePmU58F11sPN3zysxQOAT0X6RHzEjQGfiM0RdKXctKIOLKfIfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gj/AKVb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gj/AKVb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A5BC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718084902;
	bh=aWeqBeWLdLWO4M/C1t1Rpf0H0gQ3SRdCBw6IJAO68Kk=;
	h=To:Subject:From:Date:From;
	b=Gj/AKVb1cXnevzG6RMl7Ujs8so/LBTdJxhL3h+NaWpOPatkRgaW+I67MUI7i3I6Ak
	 L+n7vE8uOxdhCBprBc183XakpXnnp4nFMeLaN8oP3iEUCIIuyURY8QdyU39vaweTQY
	 +uh42DeVR0yKUrSJg4fzBOL2DzKw/zPSiinwXd+ilTd49z/dT91R73+lE1GnY0IjxO
	 wMz3XUp46oEEm6AOYlk3RmFzpDmwlA6mBsqnGzdtoOo6snwTsGhmEODh6wksirpyqn
	 mmfj1ETMdVl8svEH+kmFZc1o0aQIB5a319uKIxtRIqj4x68RA+NTEqexJv8Z0scY9z
	 7PXGr96DDRqRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC031C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171808490276.30410.14619605491640923952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f45b9382218b0db90d14ce8d15adac89025f4569d38b7c009c6276184e6faf
Date: Tue, 11 Jun 2024 05:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718084902
