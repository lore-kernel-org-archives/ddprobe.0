Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30794F9E8
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753018194; cv=none; b=fWVxZncNavrQkJ82tLlcKPJAEb4iFK0fa6QA0GGANoxcmrtWHdmlLw9BrveFhBoQXRirypM7AyzwKmrf3zoQdVRScefGXcEPFsh9s/1PrmUENxqEno10dcQ3Dv8ZgegRmnSk1NMGsOKkY97+bOT+v4dGSEEIpCojeW7tb73GzRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753018194; c=relaxed/simple;
	bh=x3x1GYTYtkxZ3KrLh1553jvp0+zCs2dNlgaE9Ksn/f4=;
	h=To:Subject:From:Message-Id:Date; b=gzfUdJ9qaua6wgtKiT04UCBNHaPQ5m6YvCNNepX9U2I9+p8YWhjSQQxjIzgly0XYA3Af5B1EawPth0Q5ghAEMSBBwf5CMs3RFGMSPxPKtUJIzS546SXb4FyVieZXivMYF+iTadgNOnERYMkeZYhc7pLfVEG3PTEmdqg1DAqDkVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQB04K+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQB04K+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CABC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753018193;
	bh=x3x1GYTYtkxZ3KrLh1553jvp0+zCs2dNlgaE9Ksn/f4=;
	h=To:Subject:From:Date:From;
	b=qQB04K+p6lLAe1Kl98QNXHkvEUYS2gf2ldW28JuXkieTVUX7I7z/sH9nGsfVY5gwz
	 NKi2YfCjc/fA8jRepUU5j8EYE/fRoDCy+NMoLjIxVCWdxdioFLJqHoSeXnQ1A1pdib
	 o0pSMaNF53Ssm5nuDh5iJ9ZSfz6VbYWE77//hkg4J79eN/+Xys4KhAg4x+Z5xr7SXb
	 bHuUYrwckEq+1/iWXQz5Vwl1LAVeCSj5AJmF32onH7oBmW3GKpqHaYGQwWUom1tzJC
	 zcMJzjkNxeouWO5ap7OFJrf/Gw0N9uNNaqk/+M4+FEzPyLsNS4vacA8F8wfrTv8+kM
	 1T8WDCOgELA1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949DEC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301819357.31312.12045191998758930349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e16f6395bb5c218f5fe830aa1212f2706ff54336e0aa0188feb3b46fcc2693
Date: Sun, 20 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753018193
