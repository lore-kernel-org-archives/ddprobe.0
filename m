Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CA61427A
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775450734; cv=none; b=CaxNf4M34mRIikCcLJdSTrutDthVNpKRTCj6SYLHXDfkjv/r1QXH9AxLMdT/oqg1isNCD26NJ5aJHlhXWnPSBIY1hmbrHG322u/pLWWdCBweBDwHLip4WZf+iDtOnzrskYKT/3kYvzxE1vB8T2sitrLRPzPmSxfVL8jw9xPpWHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775450734; c=relaxed/simple;
	bh=IipoPMUxVLDy2qbgnOU3y0q/CngILrl9KWTQXvWEzEs=;
	h=To:Subject:From:Message-Id:Date; b=B4BiCCryVZXvBLyGcarG+Vk4IiMaZGlFAJyoSqB/PraCLDCa7n7Ce+iC8Z6yXcuIBGa1Wgkc9eYp8kq29/+aXLQu+iR6EWgZiCRRHYF51ktVWU1OwVqN77NcWxpb0laU1o9HbvEAEruZco4QQCIuCJr98engS8sTECN9YUoxR9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1dVoKpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1dVoKpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD62DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775450733;
	bh=IipoPMUxVLDy2qbgnOU3y0q/CngILrl9KWTQXvWEzEs=;
	h=To:Subject:From:Date:From;
	b=U1dVoKpX7OzZ5h+ucueoUcvkTmeH4Hm6f2L99AegT5oOFhFDszP47z7kxgIZhiqED
	 Qef5rj9FvDHBRMrzDm3asXVP1MRm7OYS411rbeRYU0QKatu2TNy/enJy0nARSQOtSx
	 UikWNBZrWVDDPBZ9j+9hUQE9aTVnAvrCCiMg2/yY+Bg2c5mHh4FLynwE/I9mKANz7r
	 JRe5crAryyCCEKYGTs1ys0zfFbKD53AYZ8BGKnAmFuSXjpY1b8kTSK2TFdTvVR6O4T
	 ZENVUjAQNXaXCSNMtMswdQ776VA3eBDHfeSJAD1ItFrR4+DB/FUXNBslSgXx2VBV0l
	 Go5VSonyqqzdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC45E9D831
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545073369.15518.18097569444395334122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e853a8b37a7e4cc572c9fbebc3f74e2a76dc982ce296a1ff64c818b77fa9021a
Date: Mon, 06 Apr 2026 04:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775450733
