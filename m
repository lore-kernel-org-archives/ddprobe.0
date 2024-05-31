Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5472C380
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717133663; cv=none; b=eSo4IdCep82oDtLWj/pdmzdFxj4Rpud4F0g4TeTlBg18/fryum7bm9jCH1APrhgtnJTQeVKvfegq9aoZnf0LF32g/9Si5ThbdMyJB8bN54+aH9gr8HdJm/Fyj141SlNowCwVH6tjHCIbsnTclq3jmRojCoPbjFriHjQtLakBz0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717133663; c=relaxed/simple;
	bh=sQOf/t8RwvtYgQ4uSwSKfovS8+SyvgNz+aklbJUGQho=;
	h=To:Subject:From:Message-Id:Date; b=H78SHTs9wcnZ6nN5t9r7oVDVU5Nqc63sfTv8ya12yfXbCt2yTo2fvTM1Q2X1VZzngl9tHdf15XtEBhnk08A90EY4/RaI6fS0Wa/8xRW9IZMUKi7zn41f17WgmnXQHYbxz7/Jd6t1MeEmNWqXWt8aRCj82GFJ8x4CvvacL36agiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0Qu/OWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0Qu/OWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAEFC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717133662;
	bh=sQOf/t8RwvtYgQ4uSwSKfovS8+SyvgNz+aklbJUGQho=;
	h=To:Subject:From:Date:From;
	b=L0Qu/OWXhw+GvTIDKJB21kkkrOv503obFWMqhh0wyY6Puog7Kn125Jo+vSKkVhiW6
	 dbpnBpHyNcUv8mY8Z3QwDJpPn5w+4M8AkSiziKqk6dg7bPLd6UpA9BVVMbeBd5akxv
	 PQG0VMf4f1gw0dO/PW0SxWtpImWuHqrufQiluzndxeC9vck1HEoLHSoLeay1eu+ydl
	 AAjUMKh7jjE663YPv+kICfKP18Jk+HH1LO3PLARx9FLgHhDts0eL+YG3Osz0Db1Frb
	 IfhbDV5FyHq1t6boCTpKL35sSMibGDIVrmvpvDdq5MueCKMLEO1BXNxr/UBtaMud3G
	 TMJjPHQBl1Lwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC72BC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171713366279.24934.14118687958061975785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d420c235db6015a8579f3145069b96f966798c46041ca3e562f87335ded177
Date: Fri, 31 May 2024 05:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717133662
