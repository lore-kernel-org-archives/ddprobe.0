Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D77D1C549F
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743122994; cv=none; b=hrV/xk62vfgUBkC4fMcBdzojGhzjz3tFVxPZcaIJuuyMo+gC3KMB57GmzysKS5dbwFBIDDn61yS+r5uAktWG5uTTEhmDTVKB8WyR1YgjENZdxv9xX28QC+WVn0iVqs2F9VSKga1D7uEiRCB1H640HDn3zgzaTNaWZhCUR+3Cdyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743122994; c=relaxed/simple;
	bh=ju0zVY4Hiaas5domtlDkNf/ltobp6iw02RMuFxfyyEg=;
	h=To:Subject:From:Message-Id:Date; b=fqdxgnIBq0mPGg8yJF3POfzq6NHK5DDUc0rvVb3h824NVUyKCPObDFOrXaEj/YGTwF43n8EGZPTkB3B6q4+16pbG98Pz7ZKAM9UbGnIE5JGvZrHm8uYIi5ZWTfFAvctdNOm8HaHbhpb/jYSu8cZVTjvvbzKCqVnnPVrKaPGtHmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nI1JStRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nI1JStRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87E1C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743122993;
	bh=ju0zVY4Hiaas5domtlDkNf/ltobp6iw02RMuFxfyyEg=;
	h=To:Subject:From:Date:From;
	b=nI1JStRSmrfYCCXvRVLv3AJqisPU1EEIrB1wftraNAuLjuq9vdcuiNO+Alk5uVBQ0
	 9C0VCt2JosIHXPxsb+LhKX7I5ZoDNvAe2+G40L4RtCM0KbYN3clvNKGbwu7FcCSwZk
	 wbCnjKTiUUzVumgseeUhaUNkF4YfhgfzimgZosq4lTHHV5aaBGUqgMWQsY+kHxa+xp
	 xBmOR3oGAHmyjdTS/vQLsfvneTkSeB2llyP/ldlYWZs6InPpMxSmQjEM7ZFQCXlwA3
	 8yALVaCJu1Wbhw+NM8z8wsh9SITAfoFz51/JYso+cMVt0txwf2jZc9bIi6cPwu7Mbd
	 hv7wvO45u6k2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8814C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312299367.8566.2879525934620120029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b2197f1bbb26d85617b709b4fc9ceceeff52cb3f561b97f56f7717b7f023aa
Date: Fri, 28 Mar 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743122993
