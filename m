Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3851D21765E
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754039995; cv=none; b=f08iDAe4KrhGAkAsjNDtCKM7MXRbZ2hU1c2LvsMSkvT1kVFhUVEMiGsWaqMmi1ikxChdMw41GGuSsk1Q0B44lL9mQLPTLxoXyJTkRuuFXvJtwOYDIxPpJOFVWF3UOc+d3liXihnchJXpD/ueI4r5o6XqZP0ZautPoQOhUtc3Wf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754039995; c=relaxed/simple;
	bh=ZL4q+iVpOxjZt6OrLWUwutvUugVeZllEmPpp3dCKXHk=;
	h=To:Subject:From:Message-Id:Date; b=OyHTSYFyW+xK8aG+/AiwFMBBs6wMmgNYxvKkDKLkG4r6Sm3cu+9GLT7mDO6H0APxhHhxd9sW7WiOQDHfa+s74gUj8kc1Zqy0gIj8/U0ShLqK5o5ju53ZB7iAtpC+wDQZTIDoQ2a1UW2NrdaRv9esjkGXeEjfAj+L82hR0HfU5ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGxTokhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGxTokhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C94C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754039993;
	bh=ZL4q+iVpOxjZt6OrLWUwutvUugVeZllEmPpp3dCKXHk=;
	h=To:Subject:From:Date:From;
	b=RGxTokheHkWz4wFp4JdCw5GE6VMy4brpw4wZbX7+uBTTJ7Lu+nUzdN8YkOL9sT3yl
	 rwP0gdWlQ14RQNCmQMx0vNpkKz5m5dN1Od4Y0x0nljMzZoGq4xpvflS98Puzs+QHGu
	 4DBQAYDYxM0aOY/euBV4e9DvWXGAn4R6KKeLJe6uQpghy1LvNwo222wqc7+qEPjbf+
	 NXs9N/N3C6QaX5RIjZ76c5P+S0CKD9Ede4Ac0tNTiRDJPlq+tsre52Va7hX1d0D5eg
	 5j0Nkw5kTJW1zQ4QzP+V/rsHXaqGbPzcYcAX5APEFFj6z9U8BFMgR69pVi04jkor3n
	 yz5dgPmke+2OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB2C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403999358.9948.8272684380517437122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c513d5e0de891fbdb48202bcfe225cb7a7a66e8dc757c4f6ddfb360b6da77e12
Date: Fri, 01 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754039993
