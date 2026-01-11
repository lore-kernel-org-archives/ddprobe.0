Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5D233FE08
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768140834; cv=none; b=BHHIJFK4GiRnbzfB4TYZGmBZO/lLb5mNT4JFq76KZA2q5hpFe/SijbVxML/IXs2iVgzOKPc4SA84GV853RMsS4W8pmcR17g3I5ct6/xED7DL6unmgTMoYP3bjlQFfXxw/DlV0QIzBxNSabLoI5QngDUTW8a4nwAjceZ1tE94bu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768140834; c=relaxed/simple;
	bh=9tOmeJEcv2JjQBU/jwA8+RaYo0Xi2L2VJbdHQXq78tY=;
	h=To:Subject:From:Message-Id:Date; b=mADz719ZkvD8BpS8NtW+EQLx5uF057HtVqENLoZbP2EEcWpn5uNFmdMdOEJRJZ0R4/OuNensHRmNVSDApG47scoAbDzqgMyIQCVoCXH/k+5eDfA8zpc4KFTKhudXioSJrj8RrvPN2TszEa0b/Fy3ExRxt+ao8OoJtZZ6kC1+Zt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3CarlTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3CarlTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01A4C19422
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768140833;
	bh=9tOmeJEcv2JjQBU/jwA8+RaYo0Xi2L2VJbdHQXq78tY=;
	h=To:Subject:From:Date:From;
	b=K3CarlTLMGSRoEG1nWEj7oiWb192rbM2tBAc8p0Bq3+cv1xU3HiNmoYIrWbZz+rSR
	 yzMOGmKDRxfRRJweGa+CG63P3VvzcrCagxiWm0qRaoZzjIJbmjg4alVYzCcLMidmHc
	 f6tSlaxUoTuaiu/ujN5yE5hswWxa4N1Wha4j6b5o/uoh3JRUdJ/oCkVNyQc8FlG4rx
	 tGkAIGK7sj26eWLydWr5uP7nKgH00dQCd1fZgZ12IPtrETesmdyT6hRfn7uOzRyHol
	 uTypNIoD0e8tYikbfhaqPv1/PQdyKLXa+c6WCCtwVvk11ZJVIF1whsb00Evl+6ozMw
	 LGsOlGb+aozyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED00D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814083357.32337.13926302291072475727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e869e01937500d2cb7137c91409bcc6b02a38232b23032aa32c42e5855afe4bd
Date: Sun, 11 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768140833
