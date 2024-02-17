Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1022D7A72E
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708175897; cv=none; b=TnIGJcThq8vrsShTuYoqEt2neGPmsbHW6u2fQYqC03Rfa9YU5OIFjOxrjHxMhmWA7CieyK6WRhLrkA8dI2xkPVl8NQ15J73Z5Bq4tFlUDLI0ulGRT1kcOMU6ByZTP6Cl3um4O5fx90CSS0HvX2/wYCowXvKFK5hAPBVB4tAHVF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708175897; c=relaxed/simple;
	bh=h/yNuwDF2FU5d5VASKs3/mqq6Z9iW3L/3MVxhEts5/M=;
	h=To:Subject:From:Message-Id:Date; b=NgW/vLQ89KXBzY+K+yF8GXxm15hJbJwLD0nrHUFgdUUGYbTXWEN0ec2/G1ePIalzxfzHgVuNGIvFK4L5spxvrzmSm6DIJHlqgvrwlylslwLHfyMZ0V2LdPCDyL2UO50m4nl4BWjX6rennS257d3WUtArTXZhJUhsjeT9/mBacWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSPQgkVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSPQgkVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF20C433C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708175896;
	bh=h/yNuwDF2FU5d5VASKs3/mqq6Z9iW3L/3MVxhEts5/M=;
	h=To:Subject:From:Date:From;
	b=bSPQgkVRGWFbnXLFeQMMedyvFVJA3ecz0rZXbWt2xbkG5OsnqPRy714D6vT05+LPH
	 IKsU/RiHKBWV15yCkpXEnPYksMTGVl9Jd4TtLdidKwrbKpS+lNL50KbZ+dkoxLLn6G
	 18ID8oXL2pJeZwTYXP+8kP9lnWn3KffoxQ118UX02xcvGWnjBlKB63ZeG8yaSo184Q
	 Kgel7jKrBFcsDjK2L9sMY6ifdFZuqIfVVenyHov4IsE1+g5sC5AFoXQ1cRGvuDlM1r
	 5dGrmEkoyHS2MllIxS0gz3Jw8Cn4G0saMUjsA8VtbteuW0MyjlnqanWSLPdVj02+4s
	 e9AuWkQE6/xEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DD5C48BC4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170817589638.25024.6146006267196239686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc42bfa0c7cceb413950244fcdfd53c68c165e0f2bc93f3877f249c54812ceeb
Date: Sat, 17 Feb 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708175896
