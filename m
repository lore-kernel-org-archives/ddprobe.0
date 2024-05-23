Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1C414B940
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 14:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716474203; cv=none; b=ofJIPohlsGp4FiRCdF8uKPDMznjlRW6b/lZsoEbn4yr35o7B5Gd1u1hLYwMn0cwp/wmihnit/pBVPFcisKD0LkIAWFZl98KVOFfXxsrQ3MC84Y83qgzDeQjS5f6YE/QVWuHfWAMOtu8VOAlFpP3F6V61ma++Le7O3Ogkh9r+22k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716474203; c=relaxed/simple;
	bh=XHlIMrgaH2TdcE/yGNKYH9JCRm9UVTs0LikEDmjb/S8=;
	h=To:Subject:From:Message-Id:Date; b=Lnmf1/0ejrSX45n9GWvnDIrYSe8jizt5eFZKUxrEYktlE9ajaHkB9/0xgVj+S7/ANtwh+JU6z1PS9yidJC0quIqIUzXxPtsJd7mfxs6n7ElFbsCR+tD+wQNgbBT/cgUUKU0nkxCCZzgd3p5Rqn0cF6G3dIg0APtcdWZ17YK3DcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+aTOcOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+aTOcOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB93CC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 14:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716474202;
	bh=XHlIMrgaH2TdcE/yGNKYH9JCRm9UVTs0LikEDmjb/S8=;
	h=To:Subject:From:Date:From;
	b=b+aTOcOs5P6uZpKylrmEkUQjB5mLxAJnBZPlXr7Is7ThmHUMQSwnbq9XwrHf4Ry/P
	 Bf8qytYYK0ZCNDd7axAxZm+1y8ssDlFkkgovXz6IqM4tIFr2S0rre2gN3IGt4IcAPo
	 ug27345NXA/hTOmomUXTlugZMBRCYH8QYy0zAamefw7miBg1El9U0Suc5cWtSnHxav
	 yHP/BcMVf0X+Wq2R1/bppaftb4ZeuxlMD2MFURuV3cu/zivwhhMruCHqdP/SYuTIOq
	 +feH8hBMDQlDN6+1Gl9MyqKia8u2fX4TqeVqCcKjY1VeCKIZtBHNDaOrQexTsW2FrT
	 wnLuW69tIP/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0324C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 14:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171647420277.15064.2392417586304649440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf36cbbb0f9ff87bf76bde4944b24f1a3f2cf453177e3fc0a2089c9a5e73f12
Date: Thu, 23 May 2024 14:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716474202
