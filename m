Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1092D13173F
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707164297; cv=none; b=nGYLtGUc6r+Zq8gfM99XQXCSU3mvqF9WB+ggiTiwDeBIRyBFQnb0J/wIRi84AYnXbD8cCfTwonMvq5Sfwn5SE0Ff7o2hmRei4/tXFeDw3YSaCHHnEWbBbBluJKd9GhDtQcc0UpH2dELMLQvSEyfvE3h4Ny1yBJWeMnZ7Qw9pwBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707164297; c=relaxed/simple;
	bh=LOMMvxU3sBZLw67fAyQp3Wgw3Xn1AlbPKtdTvx4mprc=;
	h=To:Subject:From:Message-Id:Date; b=kErP0IDF7Rx0Q2NILzaVZGIEesAc27awrNzfIFmcFRx254hkYaPDT2pFYX4kGHuH3B8/6czDzkf3AgseVhiNBj6r54uey5adszjnarZWfGLoVz0OGRFptNVVu6nU07l8KWg/CmDxvJ3NihQQ3z7AitNo7H9A9SGG6fhFIulogFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKjPXsmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKjPXsmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89A31C433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707164296;
	bh=LOMMvxU3sBZLw67fAyQp3Wgw3Xn1AlbPKtdTvx4mprc=;
	h=To:Subject:From:Date:From;
	b=gKjPXsmvenN+E82ifSbNxC8MVAK/sK7rQOr6fCNoKCITqawxGr4khgw15aeC+x5gw
	 bENYVWFiGyIIjm62xctNvbEU5BThjS8Xm4PTfQ7p8X4Oqgw/AJeVsN6ybweo0a1B8U
	 9JiZ6ymvLU7ic87NQUc5cJTUk0/CYfM+8+2y1f4h7ZnwEJyfvqnI7dZBurO9Gz+ZLs
	 QR1oGW6jufA/H1nxkMufrqRw6z3GYPVCvibk68zWCrQRiZOM918L9cN/m4Elziee4G
	 pyq1XDMu0I1P7fukBU1sAmfe/YwRhNVPK7xS6BBT2uFRvYii+KkjBuQWoh0rGlU4gP
	 8auCw8esWbjeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C3B3C4828D
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170716429642.6033.866535163492864778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3588e306043c8a17160c293a49eaa3ed13a979ebcfe032340a3947f1583a4849
Date: Mon, 05 Feb 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707164296
