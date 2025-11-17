Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CBA1283FE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763410914; cv=none; b=PmR7r/BU9goQQDEZE1PVMUcSjWNY7/jEvNYpYcel2IuLD6vJIe0Jl4nBqXfrWnn/o2Be1tUqnHCzXbZT/NrZWQwfMgj/tFVWs7rWzmrtq65XSDlthqKN23tn3Q/oZmRgA+f33IjwqJ5zJG27vns1rb0x3xwgLuIQ/BFMv6ISwuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763410914; c=relaxed/simple;
	bh=xMgu/voqrKFL6vdzxAP3nETaFOtzgV2Wf7rZdjd3g2g=;
	h=To:Subject:From:Message-Id:Date; b=ufwM6Up9MEsg41uZ+tAOgE9HuPMDDCpXAgrJU3yDsqoqI/1JBpgD5kxNTF3Ba/gGIpcM8pn+3WtfK+bjOZV7WEOlrKYkrJUuVI9PHaqeywSatvNigXZ+E36fvMicapz0O+zUgPDl6ka1jOPVvK57M6WG3sV92thUe8/v4iMwZXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bc4qHrfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bc4qHrfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA8CC116B1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763410913;
	bh=xMgu/voqrKFL6vdzxAP3nETaFOtzgV2Wf7rZdjd3g2g=;
	h=To:Subject:From:Date:From;
	b=bc4qHrfJ6TGLIUM2GJtA2s1tNBV5a8txiHqvyK7NQWbIy51xpxIr419qSvBk6f2f0
	 70YdnxpCXeMRKqQlHavLn8kHLkcsGn07GyRPAcv68Eq0e+easkfIpAgIbRp3iKYd8D
	 AALot29R8edbGXjJr/mrAFoKH1lj2vRwh3sVWI6saqAVkWp9ErmE0wwvpTNUzzvAoz
	 fuak30qjCUnP0AgOTDJqWL1LIxLddgmVhYWhSg7kWiaVgSIZl/f2XQY2G8+2Vlzmti
	 X5xCOatHu0Q+//yNWHGZsZ19AFYkYyBAdS/KB7cGpzSRGoiA0SV2EY759rE9RTKM7D
	 agSy9uWHHC39A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95127CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341091358.6908.17757849090555121863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2499ff86e0c95978d265f2d57a968d7efb2b3ccd32a2b6fd79adac2499ea237
Date: Mon, 17 Nov 2025 20:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763410913
