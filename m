Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503D322FDE6
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785780034; cv=none; b=f3oTR20IbNPd6J5FuIqkxDXsxEa2JJjPV9EyNclVichJTj+PfqFadTInb3YaG//U73f35/EA3jZ0mHiVj54QD3SdTS0O7cNwMn7uFtI0aQwhICZ9Ot0qWDyY2axaxU73iJNJUtm6hz3Tu+4syaNhMLSLHdXqEe3WTi93DsTpi5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785780034; c=relaxed/simple;
	bh=s0bBri+PPmmu48RObYTVQUpq3yYk25Y/hOLhx27WJrY=;
	h=To:Subject:From:Message-Id:Date; b=Nj/apxYdVa/C8/Pqm4Y68TWIr6Er/q9Y5mbym/C98J7eEFoIqXlclbcTCt+tBnA5iN2ac97A4yyYu/LRjUPh0tRAfP6Yor1tOR7/2jPdW241GEmaMDe3hdenrhvJPYE+Jg1Os6Q2r4LtKt61LbbshD04MYkAyHkPWrCzz/Zh2a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nw5rMLEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nw5rMLEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D03C2BCF6
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785780033;
	bh=s0bBri+PPmmu48RObYTVQUpq3yYk25Y/hOLhx27WJrY=;
	h=To:Subject:From:Date:From;
	b=Nw5rMLErNbIRi8iaqSfB0Hg28IUg9bs8EbVdCVU7zaSKWuNWmV9FK6uqSM9M3J0zQ
	 OMdrnX+1lSvaL+A5NWcl1LCoFnI35fVonAJKWEg/x3yAXRUTvDPFlq/VIFXBDNAL6K
	 wqTsoGTlTKH1FSYxrakiicBzqrxub3RCqemgShNrSoinfnddRw358JNMGE0k+7ig3q
	 HTY98hHjvbg6nG+VTUVbHvn4MbeVLG49E+cpAHWW+nsgPUPqolQ7ftbWwNNua7wPV2
	 GfhH5pVboTnbIKcsVm/PTgaMvQrw5zQZz/Qp2cFYsHE2OyFMLDXAY2X/KY4pIXDM01
	 gdXTENevaB91Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE01C55822
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578003369.5141.13965763538725813960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f087e5023d72a63e89c5edadb69d5da1df4ed9ab9c20976ac22a28323ee04c7
Date: Mon, 03 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785780033
