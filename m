Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2987F1D2F42
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762665594; cv=none; b=sP2SdOWulJZV1alTTrCd1f2z7f8mgXVpqxvUc7eOr76o3tasIcUxMoRsU+2TMq3TD3+i4x9LLod/3Xa+E1+vmgOcb/sRtq17RWNalIGr5Ri/wKLp5T7eBG9j0Jv7jmJIfwNVuqVRP4N8AsL2xL+VO+PaLqwgpKBRWD+HQlOxbsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762665594; c=relaxed/simple;
	bh=Gn+qic7LnVx+mDTZt4LjJU6yO4LkK5TVhqeNcQvKkHg=;
	h=To:Subject:From:Message-Id:Date; b=TfCbI+5L2ZHTouu2qV+GRoo/vEF8vV1VCl01wfS1U+y+58zYS05gqyabPy+/+b8OQOQmIrbqIz0qfZN9wQpwn4f1GrfW6YsIUSE2bMKfvnrjKmkBlZExeHAXTju8ufa+OYJYCYBTFllb2RYlTjO0kR0mc6A4Vi54+mlTmtOMKsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tys44F4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tys44F4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B62C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762665593;
	bh=Gn+qic7LnVx+mDTZt4LjJU6yO4LkK5TVhqeNcQvKkHg=;
	h=To:Subject:From:Date:From;
	b=tys44F4IsGye6kaPz3H6Qoau50SR916WWF/+WerThmZP8n33lIfzQWF2MgAffdJJw
	 UOsG9uY4VIwcKVmkIVZv/zo3yawSqq3kADfg/l3/AgOOy2j68uTiqNONtBE0gDCvi7
	 6NjbYDxe0RQrtJ3i2Nzm2m3yUUFT4UOwF60663ssuNvpoUPEBPQXFGaRlwxi2odH81
	 z3XaOj/S+UDXNHLQfjH04IeoiSly0MssyOwLQRl5GLiNTadygMq9VxNZxl1INubODp
	 jyoQu+ooSc8T9SzpF/2lp1ALyfKp4IlIGmdLKtGZN12ootOhKK870HYoaQaQbNFb/3
	 AaMzGAlKW1jwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9851BCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266559358.23105.8389291437509070932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455d9dbf2dbfef5557fd419550ad605e65144b541b8f650dc5e01dfcdd016b04
Date: Sun, 09 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762665593
