Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBFC29CE1
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774709094; cv=none; b=WZAdi4EtwP3XgeCXeIEIIoekutpgTtpDKhKWTY68XupGcxYoLvxlyZiGcVXffyQB0QNtNy/cJPmbAvPFXwbnuX40Y36Che7HjTZmo7575qYlixij0lps546DqWLnUHLy2HvyJvyDmJt84EzKmq1luPOqIWhC0OD4hg1g4ub+Ui0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774709094; c=relaxed/simple;
	bh=C+h2bMLjtUbtir6xnY+mZQrjsIWHdukgO86d+bvcx5I=;
	h=To:Subject:From:Message-Id:Date; b=bQTqg30mdDvV7S1/U/eyRRImc4XUU4iouFLeQExonTHTfvJVHHJCCOS3pOiMSfIYwywshOmsoBxKFVNMDtxnwvUD09mWv6ChUtkPYezS+/q5eoTuP3OPjpNd1WMSuUNyimNPIgyPbacbJbc8bV24946numTLBgQKzk3lrTT407g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYjotfpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYjotfpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A909FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774709093;
	bh=C+h2bMLjtUbtir6xnY+mZQrjsIWHdukgO86d+bvcx5I=;
	h=To:Subject:From:Date:From;
	b=qYjotfpXyQnFM8pNttUZqVvYjNskNO1i+kSBrnKXrMfZ0SDXgWmQ+rAdpk+HjtGu2
	 pCbO1NsKT5NIQr31O5LCvOmN7WFb20GT+MWpNoYoQt5qdyqaw7hlVCJssRS8DXI4dA
	 Mq51md63z3ZzB4kmTpk8G1CDfHwmqnA6yrtZU+3tlORpIn69vi4hcf/SihJws482QS
	 O3N47hVp6jRDz+ywJjtwNyjHO3517GgDXqtULc9j/fUHw1Pn4ZH/d/KhvclcHjphnT
	 +I76+cos81Ot+8x5cZmGqoPiyvb/sY4MymSJ5RFKcp68HpUEBGbVLNEKuBZl6oZ+Li
	 Pb0yIJd3gB7Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC810F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470909358.12162.9401280840861104116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98177ae49b5c4e3ab54f98a8ea5902d4c8869f472b1db105ae8eedf5d77a7d98
Date: Sat, 28 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774709093
