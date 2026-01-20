Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1145343CECA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768916034; cv=none; b=FxrT04VekBBT8RQZ3l821cEizVXOAEr6lMoABWddgxGrLQPeRk8ZzOdwq3Df1qpktUvlaeUXDaYwIuVhfO+4jT8Qtb8UlieU3jNFUB7OWyd0TsOLmdcJBuZHjbxtkn3iV8IH24553aRFZrNeTpd2h5mkhhuL+qvjFUVXuqqlZNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768916034; c=relaxed/simple;
	bh=cDZEBwFUWfChmcJ377MEAtf56bx9rSq/hAirDJeNaHU=;
	h=To:Subject:From:Message-Id:Date; b=uca60p3K+iRmSCxgfMbU04e+oFVzp1qOoHilYf1TJ0v1+Ia8xUVJ/UD4BtcOLlou2tzocx6ts2y5Z1f+Ih1BzIr/YsDOnnA1WumG0emuGO9WlQ4uUQRWSV0JO05FusyrfEPnVc2tehoSDBHxb9j1rQe3Zes/Unzg/+TWqpPlg7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZHj+7AR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZHj+7AR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AA2C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768916033;
	bh=cDZEBwFUWfChmcJ377MEAtf56bx9rSq/hAirDJeNaHU=;
	h=To:Subject:From:Date:From;
	b=aZHj+7ARep5wDGYBGCu96wTJdtUxszNicykEhNlZTSl+7IWBPfYqbt3J/EUrAbaVs
	 5PrzOgOfRNaDod71nfHzsJbSmSHqfi8yH/Q7NLAtGmDk/BFbZQtfxnwl86mPH4xc7L
	 +CqZBNKMckri/y1JkIRuT3RBm5Vb717kg90vmSEkWEq9Czjx/sFcIU2R0V3vC02jgC
	 UWUC1p7hmX5TE3zfCUbhAyHLYXoWzdpJqdyCzHa9nnYz6JAqDD4+RMUSHGhyrllg0M
	 Q8kn5X0ebI1C2LK7QmsZ1x/lQGF573b1zurXEKdnWO37VnA55q9fz5bk3ULGrXoN6d
	 LB71vpt1ecSpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F8AD2ECE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891603360.13739.15625026838870069656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: effdf85ca3af2efa5d3ba53193baf491947423c3543dac5817d9da6b2bcc6a7a
Date: Tue, 20 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768916033
