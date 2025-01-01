Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2F92CA9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735713354; cv=none; b=a+dIPyMzvlK/E7NPKb6kW7/y3nDg/7plrCBiYVDl5d33nudRnG3Gacum6v/e+XX+lv3Bv8rdqxoMpQP3c07kBEqiNVP04renHP3xf3y34jcZfUK1BsTdEwIgGLgFHqwQUX3RrmfmPvJ83BtkKKruFtRmyYfQoxxHVdGjR/bOhA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735713354; c=relaxed/simple;
	bh=qozTRXbulXsT4OWU1w9LAEzZuoqLfetcyhJJ20Xx8i0=;
	h=To:Subject:From:Message-Id:Date; b=uaNu5wuUdCdfsRpO29ffX8S7JDqqr/R1z1bQzEX2k55y9vNhv9Mn/aoxsdKfrznkfD8mH1syrxjR8TmbFOWhUsTGzcDxVHDW3BrNNvDNhTL+SZDQtLLKwgzojZ2Ft617EQcTqVY8DNreW6vF1zf6mBKr+alK/cFl0VM4dUFglCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHGQl3xH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHGQl3xH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A564CC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735713353;
	bh=qozTRXbulXsT4OWU1w9LAEzZuoqLfetcyhJJ20Xx8i0=;
	h=To:Subject:From:Date:From;
	b=XHGQl3xHA78+cS3+HOEnDy61nCRZ0ahycl9WHqDNCd+q1WIi8nXGhXD+N4KEfvLsq
	 jMf4H27vuSwe2zh0jmaCqRZ3TBHPNcm4sLzDGckPIe86/TdRYIoIEbSqg54ntFwtZP
	 QvpSPCx4J4/DxJXdmczHIrXBIA0Ww7ba9ynH8EuEUs/GOszUBGsUZFLPvpP8JQWz/p
	 nQ+4EVif6ep6UeozilMxzSNNQznd1t3zOLsfLinyV4jHv/Uz1DBcQY9D7qHNRBg/f+
	 E2u004/hxCw9zvbj4LtclrQkVWeMxoeo6k3Q21yiov7VOkl1wVzgT7f1tcJ0/S1+PF
	 DOdwUdzV+IT2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91638E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173571335358.23739.11694488327051778165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de820e1585334975d85198c353a5553e08e7c18a3b1c1437ad83ade7b88db40
Date: Wed, 01 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735713353
