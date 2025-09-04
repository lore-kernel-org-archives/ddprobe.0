Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8D027FB34
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757000395; cv=none; b=qbXq4+/NtV2yYFSKh+k8C6NVG7/pSmXkoJhH2cqgw75YlOxvVgrVfeJJ4LCGY0HhBXsh18jtPbl5G/ZBOBVsrCBuH6MCf5E7VRpqQzUpEccCJBrJSgx7K7M6pNs2h37bNEPH8OYkOPdNrDZn0RHXHfKJaAJBksOXwa2q1J4Pmeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757000395; c=relaxed/simple;
	bh=Gzv3Vu7Pg4Ov4CxPMdcfkdhpNiBmlDyKKQSGXlNBm/I=;
	h=To:Subject:From:Message-Id:Date; b=GWRpdV4f6ikTV/cki/YNqVWoulNzq2qq1GhTM0YqNrminet2VY9FgM699qKPD4ElQm+ivRasExoNYbAUcQwCKNheZQDkSdD1FKb/AtKOo9/O6A3PebcWL3Lq6y9ycfNtGAL1drquO2KTxFDkqKjBiBD9aVWYwIyxcpzYDTCV1Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjdylBIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjdylBIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C3AC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757000393;
	bh=Gzv3Vu7Pg4Ov4CxPMdcfkdhpNiBmlDyKKQSGXlNBm/I=;
	h=To:Subject:From:Date:From;
	b=PjdylBIQlGH7k2ktNkHb1RrnLhwzYULSqzaGxhAhkaTFgO+a4Q48S6zq9jZD/Vd21
	 gjOOn3BVFbLFtoU6Ok1SAdDA+AwHOPZAbygAqBleGI1YOUjC4GupcxlJ1roxy6yiDW
	 6SLKCoPpQQ9uZJKFV9PmICw9TDA8z+r1fBxSJtWEWcZW49djCuD/mkhQe9uvgV3S1G
	 B2Da8kVDO69See+VlnxL5bOwqzaox/XbY5YEQmmFRG/PnlvY/eeWqGJU+r+bLQVSH+
	 792CSPafpfDzQeqKKMnlfCjDkNDf2SNAQ6Pq8/0EKWVjGWv84GoJJoQe1GzYy14mU2
	 kDmYzfGWlGALg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94024CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700039357.32222.9335856043569302831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bb0db049b89a3ff3df80b92b648147ca4dc836ee86b5f79be084f26ba149ab2
Date: Thu, 04 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757000393
