Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024DD263F5E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775118334; cv=none; b=KJ6wP9SmW9ShOqJG6FhZ4YVos9qEvNoGCr5MfgIZje2jbVUmUFBdeGILuO3niAIckmAaWO/Tgue9mC2WIXOLC8FIcaJ0IJ5eZC0wOu54/29sjKweWZciH1r9TNH9gMxVH0aAg/ia72V4M+00ZoFC45ZY9C6cVAzAlToGBNvI8bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775118334; c=relaxed/simple;
	bh=ULyw5/JNfCUyeXvMG3jtKH0nIbn7lh1R5/w69RS09aU=;
	h=To:Subject:From:Message-Id:Date; b=f77FO0Qb61WjXJXcKDlMgFIQNQZPUNwcIvtPQa2sWqRwcOsj7tuw9A3C7H/EEW1DWp+hgp7J+vJmwB4SEN96SUi/9aDk7hWV7A9Eluf4KcCF+Tv4HwJJxfGO4AdJQP4Wt32/qfYcPcMIdDlmLxoLetpTFfedYyPHvMLBNVxDRl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kb+xq2i3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kb+xq2i3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD079C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775118333;
	bh=ULyw5/JNfCUyeXvMG3jtKH0nIbn7lh1R5/w69RS09aU=;
	h=To:Subject:From:Date:From;
	b=Kb+xq2i3fDQRql7XojyVniya49OShT3OUYXaNBDsgZzd1gj4g4oaPUbrac+FYhVzd
	 n0451LSgdEPVQ4nTy2+LcVACNdPYzUHnb+NJlftNbctx7bSR91tsVhxCoUBq1igzws
	 NscSUvlHDW9P0Gc8o5PO46MqVPD4Au19WC1boqKXvKC5s5d97X2j2bbQbH3qvjinmA
	 Hb8x8Qx8f/9k9WB6T9YMUH4O/AtmOh9LFGVHvCgHzHQhk34ks0rzsOZhswgW/biwpb
	 X3feOyo+5MoXiXBqF2+G60gc1E2aONdGdviDxzj7xAcaNvl9vNRXSYX5LgqynloF8r
	 mIujVYdSVTffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB81DCC6B2F
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511833369.18118.13917915948136154614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 840c45060b513ae65dcd8af36eb7ead9d2a077005df1be5b9c85f5345760f17a
Date: Thu, 02 Apr 2026 08:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775118333
