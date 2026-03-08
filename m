Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191C724337B
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772963694; cv=none; b=mBkjEBlydcE9RXXbDrm4kL3TWqEzquqdTxrY95LsAfHEDReBTnKY1D3zQzlR3JFs4f2NrobBUKcKb2X2HnvaCCzAESskCDrQHGBmza33VcPgUF+SJ3PObpn+iyBYTXTjz+JYJjJN0yNQRKlFl95vmnpHOzT9r7ZFHrlr/02G/RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772963694; c=relaxed/simple;
	bh=ZpmfmZYgN1Lui88VbEwW0JQZQR0NsFW2bvrk8H1cmFw=;
	h=To:Subject:From:Message-Id:Date; b=Q+KycK5Lwdtg+PIDkaidz9hAP2miPQkgirjDZUEjLZ/vyvXRcIKXwaS+rJJJK2vz9byXT/Bjk+aYNwYufNqpQj5DusW/VFOBWFrBjTHDMxGNnjAV5sarEOWIkr3chieRG5XSEbAgsnm4kRK1QOthLuB1HecmJxrew5GzIMHY2Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PS0lLBwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PS0lLBwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F66C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772963693;
	bh=ZpmfmZYgN1Lui88VbEwW0JQZQR0NsFW2bvrk8H1cmFw=;
	h=To:Subject:From:Date:From;
	b=PS0lLBwrflWXD+qNeLG5oFjdxQW+2pBU9vTbsCDd7dL6MGKr4/AxXNds7shWLazoe
	 kZM2XB3DwdcYE3m6HDkUgbvaqtaAAL0auTP4jEseDyB6+xZmpGWyqgCNzGhlw3z3us
	 mijJE3Iyc+pcNWoSm299GBeZ4I1XxgnnyruIcpIMAK4SS+hLIWhdrkrUL16kwnXT0/
	 kw4FsNp+OMzmC4GCzEnjmkWew0YM/WUHZJtfDiOuksnPlqH/EDzVQ/Eho1zEPs5dUV
	 XWdEcrVR10SM/i3oeTHM8jpNPnk8/DkIwJGTg9VQpjqNrkOcm85s0NSx8E9f275rA7
	 zxqVwwMHzxzBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924A6F55102
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296369357.25360.1501344126339891662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742e03a06d03d1b08c05a851cc52aa8dd00545b70bb77b5a4a85355644567ec4
Date: Sun, 08 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772963693
