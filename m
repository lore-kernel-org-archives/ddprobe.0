Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1585E248F64
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764707574; cv=none; b=AJWjihodno3iMtZP5zF5tLxjLOuCgjsm5Z59xtouMHD7SiUVjESllsibvUc3w55TsYUwTbBTVW8ypSs0PfFnpnFMCQlejLgCl/cazSq//R00jm7x0RMTob3/il6qYKOXHFcar2jdfB6I9QNYXlbr3AQSF20/I7UMBNOOxyMpywQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764707574; c=relaxed/simple;
	bh=AX7IOKF8XtF4KxDpO9X5hhqs/uk2hlqH85dm7pN8/Hw=;
	h=To:Subject:From:Message-Id:Date; b=oHeiIBVAbA0lMCiKrDty0lW7Hx7qY/HuH3/yAbotPt48HtuJ9/f/xAq2IHd4E98PJFsBhF2u/4+OQEoe9JNuqglSqpSw3zwow2v7VDjGlHkdEnLN+H2vorT+38JL+FLs2mGK1oblFymPwjsbboqtjsSCm7kvg8Hz2VgEpJmOw0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHgRl3xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHgRl3xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65A5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764707573;
	bh=AX7IOKF8XtF4KxDpO9X5hhqs/uk2hlqH85dm7pN8/Hw=;
	h=To:Subject:From:Date:From;
	b=YHgRl3xqIKcHjr8/7r5Atha2QES995fQsBrjfY2XSW8XX0dZbXDtnuSCcxisenXG6
	 rjIUbN7A1q/DxvU7j9+K2Ozx2tjmexeL80yC7RsdkceBXPrHxEaEWejUZoe0kJbTxL
	 TN82B/qn/y5TlloJltLt7r17bXhOiGC0BC0Pnhg4FbcRFxShLVC/lucu2dffTxdww1
	 fjOWRmGz4CM+y+Krs+hampfkL9YoYJUAaFsixltldPjp1thPLuG6HN+h6N7F+9LN8F
	 2QC/q7YaZXprgywMxvvbj51DzTTE3MY8wuiZELew4Cpy0ZtEDDLfAyabL87AR2TKgF
	 T2euklmT6KsyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F8D116FE
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470757360.32577.6276876716541674620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0898c187a42bfa2efdd78cf5f3262f692a3275c0f9f0e378f1401d67fe358e5d
Date: Tue, 02 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764707573
