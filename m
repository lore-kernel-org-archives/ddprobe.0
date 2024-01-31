Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBDC82868
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706718497; cv=none; b=AfEThzgPAC5zMM2kV3tZlAZFzSv/3rW1ROGg8GBSbygiCR4CYsdejbD5Z62avbZcNR9ibfqbLhNmfU2uyIX+V7OzUhihfBX8xBjXj16BQw1GAR0Tbeq4fxhPbug+TLi3VNY8T25ZDyIr3ByolvdsvGCcDo6qyOLdEmZXtanb1XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706718497; c=relaxed/simple;
	bh=QRc1VIxU5+qW5DtxUDoqznAKNfrj7IxDPeVW9Ifx8aY=;
	h=To:Subject:From:Message-Id:Date; b=k6DNOOQtGAtzHH4bmcnjcesKZKmS1tGVuWTako8nteYy4ybUo23vdl4S30vM09gZvnUtzDnB/a42AGa3VW9kBkksIFIIt2PpiGfnPdUvaohI4g4g7IHR51e/t/9ZS90gbUzDz5SH0DId794OXvEEQPoFFtgE7uW6FXRLP7ZBIR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPPM5VUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPPM5VUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77384C43390
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706718496;
	bh=QRc1VIxU5+qW5DtxUDoqznAKNfrj7IxDPeVW9Ifx8aY=;
	h=To:Subject:From:Date:From;
	b=HPPM5VUv0SjbbzHUAszvEsOBFacFkZkCvrRefGubBNh+xt+lr+0tLkEAg5HL0IZ0y
	 BWgkfNR1kEpebN3r/KF+nk1+JRw1gl1CHFxjSeAGzVAHZFsfxbfk4ORze5fsvhEbJk
	 0oH6uUzpOKZJMDt8LPtG5RIrlGoEv/LxvxyLYQhsMB56LaTGcc3c+GWoO+Ox86QYw3
	 VjJ59mlYDSKViIc8aYqHLXwJQR08xuTaL1GK56yykGgvf3zVCOOUWAzpPX2gKw1JKq
	 awRLBhWFhKvPQdzFzcqVnI/naVEQ9UJ5OUV/zvBmrzWmVtT69ciLyQkmBRUYvg+Jf7
	 5c4aNKti7lcgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D59EC4828C
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170671849637.11612.12008736172009828565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d70fa340321690f07134234013e84b51dc37ebca3111edbcf33dbd31621cd52
Date: Wed, 31 Jan 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706718496
