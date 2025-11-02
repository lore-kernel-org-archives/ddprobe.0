Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A0834D380
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762125594; cv=none; b=tGRg5ergA9XzU5kz9Um99d6TaAXsryM623KoeHtNqOiUufi08sML6UF3tZZeWg8IMnec5VZSLPR2MuwfSAVtN9mg9Rrp4sgMpkTOL0QUT7dN55+pHpA2mpDg7TmfiULMgI/c53RzyR3g+mwsf4qAt9qiMW0Ic2uNa9xEK5WpS+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762125594; c=relaxed/simple;
	bh=FJgige4eYV6NglS9941+CX7E4r1OXlwqHGadwKYYweA=;
	h=To:Subject:From:Message-Id:Date; b=tBFkhW2AOQ2kTd/QHKClKloICPAYHSGCEdyQp9zy5dq1e7xRKCr3uOy8I9Yvp64CV4OZCv/eRUbJ/DH4TZLMExDiZX6lcBUU5Gw1kjNR6770H9xyB79adyGN81WfgWHAzXtaDSJymD8eGd/zg/RciqDRH0iTscdhOaNyTTQVJak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLKnXsWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLKnXsWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14E5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762125593;
	bh=FJgige4eYV6NglS9941+CX7E4r1OXlwqHGadwKYYweA=;
	h=To:Subject:From:Date:From;
	b=WLKnXsWQaoUjCSFd1vqlnbkWljbCu2pmxss7grVcldrEE65vc8Qxnn+ZSrqqkog0v
	 Og1Ekm4Hlml2i84XFav1Teeo/2jNxKojHS/BJ8b8hthfxwMoF8bMmVxbtPv3DtNT9p
	 c0vNY3PvXCDhyrRzsFM4XzCF6nLahqQc62guFfCxfp9DdghzoFVFKL5aAYNkS+J3yI
	 DN+APG/H4A+qX7uNLFpNY4V526qYq+mRXr8uU/isCSMit4bk+FoxgpNmUnt8pXOW8h
	 52xGiQHUrFuXsEubF/EurAAYOKdhWD0lJSeCNqGczCIjj4WHdOP3XSUOwdD0AnN6gb
	 I19QyyuRzCPCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F558CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212559357.25230.6938506681846571696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba30ec0715ec4111ac31dfc80746e86112d28a716299b9616951897b0e75e3f
Date: Sun, 02 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762125593
