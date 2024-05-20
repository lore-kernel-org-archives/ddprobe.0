Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6051F37169
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 23:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716246743; cv=none; b=UuIRJEnhviElT5aNb3AGi4g9dMZKIL4dACRkt6IqPF7I+aAnr+j5o+UyBwcpLs9w6gN7vUmAO1dWFQww/XZFNGdGgxCmcoA8ca/c1grswS+1FKnYygmepqUs9sz+lJbVDmDIi4Gxxq/pJLlj9btPLWU11T64DOdzroPZvn/Zu/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716246743; c=relaxed/simple;
	bh=JaTa2ypZx4zUEj+fYFjCNXhGoj9ceV4PExu83BtI1pc=;
	h=To:Subject:From:Message-Id:Date; b=WQRMH+1EOT620BQHt5XvPPd88XXafMLyrKdZCODsRDl5gyZjqyWm/wC78MJlR1todFD769N2seN9VCGkk0eH1aSYdaRRuGfY1tpfEVw23otImk4RWFfmahotDlDb3u9+wEK2g09lieyQQqJob+XFNSRNmZUsaHk5xR4ILsiwuso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1EO5Un/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1EO5Un/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60E2C32786
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716246742;
	bh=JaTa2ypZx4zUEj+fYFjCNXhGoj9ceV4PExu83BtI1pc=;
	h=To:Subject:From:Date:From;
	b=V1EO5Un/H9KJWs/z6nJU+7GgUIUpjAf0PDTsU6GldEuMLYoCrtc9wmMffLOOTF05j
	 kqSPmQxLC0cmFfNrld0fM2FNrT6sWn4n/DtRmQRkddMZnGpjCUz6RtqSJkYGIS/RTL
	 lJiBCQuwC5Ue1YSekLpfuqVo0rtv7JnMocoibmSr+DmDkd/nmAe3w7ikvnPYvCl81D
	 Wn55xbBtuBJrzfICyaOZ58FrWO8seqqNT2xIozS9fQ8QtOXB3CpEdesiP43fUT0ca3
	 fvRXDD8RvH5JN0JOd3TqkXzeh0bnI9etnlZE+N3hbCfgI73vsfoRTrg0PFWYU9DPyp
	 NUf0mof1letLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FAFC25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171624674281.23498.3740749671970149357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3049f5b447a7a01900ba1a334b1b047e6b2e53c62d46172561e9bf75f960a3b9
Date: Mon, 20 May 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716246742
