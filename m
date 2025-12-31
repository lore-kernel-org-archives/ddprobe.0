Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3BD6BB5B
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767150234; cv=none; b=mJ3GW4JI8qiR3hihnfecd2yyRu6UVmOFVQFyXDC+JQucKxTmJLy8Cap0vT0F5pBlNUQa3IFI6YVY+RuIQSFVE7e4hPkjelJsGtIgWCuwSLypo92XGbKNWvYMg0X0b5vp1Hp6BdFOmEsaAg1l1mYWcKyAoSBbGBX5FtJWIcSWDBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767150234; c=relaxed/simple;
	bh=m/DwgwlTCsOx5pt75JptUoHOoY4vyvBjl4HGueM7qeQ=;
	h=To:Subject:From:Message-Id:Date; b=joSecKlsPtTNR4MPUlv1Kz7qNPS1XqdAhFcb7wsULdopEdZvL2nVX1Q9HVbmlmm5rkHhPXzV7pzkGZOFQTjPMNCpWCYWRXWTZ0fd5GRQipwJTGd0lPggtB9S3blU57cP1ag0KYoxrk+vO1fFQLUG+L1lW9h2NEfQDMbo8hQXBEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhFiOcx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhFiOcx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16A1C116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767150233;
	bh=m/DwgwlTCsOx5pt75JptUoHOoY4vyvBjl4HGueM7qeQ=;
	h=To:Subject:From:Date:From;
	b=mhFiOcx3dEWzEYuv4fI4JQkaCnYAaRmSS4/K/OpreYjj1buqlYZhxlE7vZw8Tq4ws
	 bDuPPXpL6fLrRxjF7XBHqqcWHyPMVLU1rBQpL+5NGDJl1L5YcxSIxDxLItTOwNj/rs
	 70mWiDI8dHtSGrIbzB0TiL66NMXJFg/p2B5dTi7RTzYJPlCFe2jUwxsnU7xxODLWQm
	 dDFQrYKqIN8AI6f9RfBepojnD3x6Ws3TFxANiBsOvkmxsv4+QrLlNRlSjeAl1DjsTH
	 R4fE1WClAbFcJcNgU3+nZdCX3Kb8Fu/rhjVGM3CdGF1+qbIAV593rUaDuBA906sYxV
	 6AVEQqOfG0QmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F49EE49BD
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715023357.17731.5004794785993432461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce3e3898e63fdbf5b7a073a886f545ba70c941d8612e74eacc7dea0c722d1a6
Date: Wed, 31 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767150233
