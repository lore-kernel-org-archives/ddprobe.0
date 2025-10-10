Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F390286898
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760098194; cv=none; b=Qm3rnZ/96cpo3uF1lvH2fOqQu/xEctEXz2+HzIjOSDrWKfyiF/9wkV8kuIIN9pC3IMt2y1dB5Hhbo79E8zPCpz6HDjHxnSZMGZLkVs7cyxvJYK6QWlON8NZzu5RgdYUj1t0kpRmdDOIQdFw+XslYcRYAvTBPiMYmwIZOxo7WH0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760098194; c=relaxed/simple;
	bh=L5kyy8hiPSSFOP4jkCi/0FICyWG8hDTqS9fX7MWDmiM=;
	h=To:Subject:From:Message-Id:Date; b=c18zQffTzYWXuV2Mfc8Tj29UJl+Tq0UVbo8MhSqgpkCALYd5TTJAQP/ppsAPDDCExlQCcyrgW5Xg1+p4mV2GkrL7/KNhu129BXP+xXEajBLDninLO6MKp14lfKtGCGbCjTFQ8cTWN5DQnQbfFyOzrq1TxVvtR7fwUOo4McK0gAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIfU03rK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIfU03rK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A924EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760098193;
	bh=L5kyy8hiPSSFOP4jkCi/0FICyWG8hDTqS9fX7MWDmiM=;
	h=To:Subject:From:Date:From;
	b=dIfU03rKjWxhbUX7WCyUc11napTJaWRzBT45ODTBPhmtVOmZT/7Uyg3CVCE7QJ43J
	 CbzxzoZaALw1FXX+mKh/L2WZUG22JVMEWwwpaPdMmiFQ7535Kfog/BS5l/d1phlmwf
	 8gHAgfbq/JHACYkJE/b2nwSoBhYJmerY1YW5j43wvs/2vejTUSaDWv3HZ709bVYa9S
	 aMeuHPsRCym+kHO8J1RFVjoTSBpnF9Z5MJXagZ7Zm7n7j8mYKazNH81C0otDUOYzn3
	 4yxkW3y2MMbPLeSEeVpKXFl/fd1MYactBnIeEZigkZcZ8uiTUeIdu/+woEvV3Ll0G1
	 h+GYuQWPy3lvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949AECCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009819359.27632.16877118932662905371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a38f1eb98da71246ab0340d9287c0f416c81935fa3f34351704bf836e82f6c
Date: Fri, 10 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760098193
