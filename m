Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FEE18B0F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752979794; cv=none; b=R9IHc4mwE5bNBCZT3Nu3hokMa+qpEgtGBC4OpScLlWdjc9B6ex32gyc6yfo7f39Uti8VKoouwiyqwCITkdOFIWxOiAtekvdzqzbouIz64ZL6HuwJXhsQ7RW2WHa9LT9Tc+jO51ab/8Mk8JAb1Hd5keGbHjj5GoDEEZMxBU+f8zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752979794; c=relaxed/simple;
	bh=4LT6lf4WHOKTql81ZCfwOdx6zpiyvMVVPDqYgWztwaE=;
	h=To:Subject:From:Message-Id:Date; b=mqfaOnZB9554fXjBhz6EbRtJYcXxEnijumYwzFGU2IUc2wX2JiuETOrY6efCV6Isk6N/igFPW9Y9tBGcp/c3dFmk/NnB24LoyOvctOqDp+1YetMvuEyxbTN/oCfWBUNTKr27x2e7ZbobxZB5n6m4Q1HfdSG9pt5d/iqRjFCoufg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8RfDlg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8RfDlg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A144EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752979793;
	bh=4LT6lf4WHOKTql81ZCfwOdx6zpiyvMVVPDqYgWztwaE=;
	h=To:Subject:From:Date:From;
	b=G8RfDlg8IHlo/lQi2gXvrzs034fycVk7IEhC4uTX29L2RQso5mVHK213WMXrQR8wo
	 g15NVTXAOuU8lEalRyduOMOQGF1McSgjNbGDEAH7RU1Wz0qAjsgn8COkN4I4cj2Ieq
	 FyH4nXSACopQkrjHYzeTiBLOuCGJNp1VUUZjs/XkPOrIEwcwARMlBW/RDYnu6zKpUz
	 Hxbai7zromV20D5/3sn5cbTQsug3FW+4ksY2tQCehwcMPPPO77nh4OwjRqdfVmdlTo
	 Cbt0D/44t09Z7O47IAgJqVe1jd3CPIpUY0a31SsrKdhC07mITnYODuk8u+xFSW23oY
	 u0SN8XctUX7aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F30BC83F27
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297979357.17999.15934560283597754739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06f3a328b288bb271d55c58d88a19b0fd7ce45b73fd5ee05a4b8b945d9c63b2
Date: Sun, 20 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752979793
