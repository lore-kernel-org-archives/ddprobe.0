Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C462647
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745075995; cv=none; b=jeRwYbR5sd+SIULeLw6FR07Vpn6sQSONW5kXw7vSfSPYaAF41ZsUM4Bpswg1nqwllYolevfFXJeUpNCOSHUakDrtfIfKLXRlTnGRO8nL34YG2pbbRgugX80WA8LoHfmo5AS2iAx57uFkrF5TRNDC3qpGRfIOTz8KX9qiK6FCMEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745075995; c=relaxed/simple;
	bh=K34QS/hMyJHJTEY+xR/Z55AlrQ1amPS3OedZezHk+CE=;
	h=To:Subject:From:Message-Id:Date; b=GMaOjQsp5pl9u800DzS6nDyXEdysF4qtjucb2QqqaU0w6OI5Ac41qVx3sFO8MT71QyTRasOHh7/E1XC3rKFU2Cb1YFAXI/WPxmzsp+oPNnfS7ZS/6pN0+8ww2ElqP1D6jXpFi2FRjnCBEL2kVt31StKHCzUJdniWGW5gTfTzvNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2zoObHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2zoObHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE26FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745075993;
	bh=K34QS/hMyJHJTEY+xR/Z55AlrQ1amPS3OedZezHk+CE=;
	h=To:Subject:From:Date:From;
	b=M2zoObHT8+UvhscIDPuC6uaTKr/rfjmndbvBKkURe/OpreJYO4g/91rkqJ8emZ0VH
	 gwstQVngruF2cosz90TF1f4N/2GuYJQEavMg6UjqjKnkRmwhogvT7Rva2XXOEEaDOD
	 C1Y/HqqEaqLMTcYe4m1SF2Ti3aUHiQFzG2xjOPLJEZUzmktxWz9vBLiqz73FkTY4q1
	 N9z95rw/2ACvdklgP3nSXMVGPG//2M8GHCjasF6oJMQ6NvvBOvVjnurIMS+a3gA1uC
	 6Q26hGeNLAFGvtyGBV+9QVrEhIK3ae1azbr+pzcPWZxSF/L2cfby/R5B/oja2KtUga
	 OGVSZYOefbwNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4944C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507599364.14481.14872716644046244079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d23d16ea301aa9dae4f070ef0fd449b584bde6f074b58fc09889bde4b6c27e5
Date: Sat, 19 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745075993
