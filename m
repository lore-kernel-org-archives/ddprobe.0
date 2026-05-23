Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB9913B7AE
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779511954; cv=none; b=GMymk1TeIz3HjjcnItHuJlUTlIzwi8PIpMwqGTJqWuBxHYrrnGZ0FJo+TKMjdhRQsTOKFrD+uMt/1rv6lYLYAng18VWG7HR/3hy6OM20AYOXpIhrdEDDf8uAIcuDmtLZ3Du8X4DwBmrZWbDST00KEqIORGqd8F7nW0x5XkbIH7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779511954; c=relaxed/simple;
	bh=anVlbMJesaW07GABiBuQTknRVTESRgjtVXyRRx1cuqg=;
	h=To:Subject:From:Message-Id:Date; b=JAQF1mi13EkrS5raBITEi3WzvRrcaZWyS+Lw+KX7SaJtJxH0tai4fZho1eXFg+YcT86YJrHTvBQ5UTJYgffd/m4mEtdYJjWHS/Uo7IJp9BhEg3F0f09yuOTkc17tqypRc1kcWorVFClWmsymFKudO36akZ+2XufhgJldnfzrY+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hn2PwLLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hn2PwLLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23F9C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779511953;
	bh=anVlbMJesaW07GABiBuQTknRVTESRgjtVXyRRx1cuqg=;
	h=To:Subject:From:Date:From;
	b=Hn2PwLLhQp7pI8zaC2pWx67GKi4xWbCsVhtheQ4vIeDv95fk71XVsjoZFL8+mp+LW
	 0qp3s0VxjPfa0xiTT1sNX3kZ6HG9Xmh3C34ipGNsKZxvZLp3pbxRDObd1YghPlFYjo
	 U7X1GM5ZoyKhC3JHY0yW2f2n33VTwl3Z8NX7Q6Ybex4EyKHp0QdDEVoYAaLiw5DFH7
	 PalmDSiUsLSB1EXFg3B9zw9P1hmJ8O3emAjEFlxDF7YnLVE9YFYiszGqQNWbYNl76I
	 6gKyV1g+h7+A82bV61HG/d6+N017cpIqV/oav2QIZm+kVqwrC1wpAiXiq3d+ZRXaZ4
	 babEy/W8lg/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E5CCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951195368.5105.5535737837134797758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28774f96c134e372046d62544783fb2f0d6245d6aa8c1ccfd596716e97c4c861
Date: Sat, 23 May 2026 04:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779511953
