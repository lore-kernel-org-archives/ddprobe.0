Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34313378822
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776578856; cv=none; b=drGa1z7pHweYtZ+w042qWGa+dldQ8VhUqZ+mqDCM0xwp8UYw+WMo1SmOEDJeqz+fftbBxYvInE5eOQAqmLZF3OhyzYXh9wmFD/wUV2abF9ARVrl2y1k6MKtr6f/G1ZAhNrFozmfuviciJN2welokjF9MvjifpIi0QJRkc72WahY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776578856; c=relaxed/simple;
	bh=iv8qUtvki67/2rPJWbEtx5uN2svgCINB7/RfcfnxBEk=;
	h=To:Subject:From:Message-Id:Date; b=P5Z+cUqr4qv7t3x6BOG2gkomTiOQnP2cXFHlAlMedasHIi1R4vjBIi6W4tszWCVafKQiZAJQWuMZcveG8uRpA8m/155XLxQZDsBNrVU9nc2VgUs/nJeJOs/bcFpK+q9KYJ9h8DOBDJVI9scafetJf6dyjp1s+aH9eKtU4rqveXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elwHx8Fl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elwHx8Fl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC67CC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776578853;
	bh=iv8qUtvki67/2rPJWbEtx5uN2svgCINB7/RfcfnxBEk=;
	h=To:Subject:From:Date:From;
	b=elwHx8FlBYkvXTvdgn6svc0VIgNC4Gz+VK50oN1EIDwwmmscdX4/V2OQPpsSweTA+
	 N3t4YnH6v7RaluhHvbDA0hgTTprE3hATyVjzwtpJwW7FFraD0fvTt95TsWDRCHn70x
	 +hC3bNlDLiIk2Wsic/rt0ySm9DNcCmby8osv8cT9Oac+1ytjhem93un5hqNTPcrB/I
	 jxtIkYJZBNMGYBYgXNe6dBolCBhqw1o2EwMK1YMZGafhssHHPaKHNZDmatn1QLsIpY
	 CxWsE9En2bkLGPO4KCLgJ2fryLyTKinSuZAKYj2o+PJJFiVtahyIRHk5wMx+4zTtpc
	 l6DQVCFyjzcPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC3BEA7189
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657885368.1499.9886754570808483257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82df5a8b6ed934198fbd5b631b3b4a952086457b457290a6b28134fad02870a7
Date: Sun, 19 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776578853
