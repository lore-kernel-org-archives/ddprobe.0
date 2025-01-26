Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3544F288DA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737857154; cv=none; b=kO8lecx5ywP1sR5vxRH+3UIve/v0RLtwjIp63jUkaerDdrz217Ew59aOf1sddIIv45xj5eNCmCBn3ICJch7KwJaRRNbb+9cvqaxC+MvI/8991B6QharyAbKyssFgaobxD9jdt0zdbaAS2qrSxvdUS+zRRIiXQa1yqaUoasXFcfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737857154; c=relaxed/simple;
	bh=nCe1iVcZP2++KnzpENmIIbCiMQT6b6l4TLMTvK0GmUk=;
	h=To:Subject:From:Message-Id:Date; b=Sm7w0sKuMCUNXUdyI1ZRfxReXWRsrV9QfmrVYLK63B2hPLeMBHgiq0W6+zu7k7toA5jUWHZqSHfqKaiolVwvp1oTuKdNp50Wff+BIchVc2e84JNYINbzEp0NPSivdW3aYEkcj/qozBqrSmWWid7ady+ypnuOPWkiwYonDgWctc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQh3o0rJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQh3o0rJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2248C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737857153;
	bh=nCe1iVcZP2++KnzpENmIIbCiMQT6b6l4TLMTvK0GmUk=;
	h=To:Subject:From:Date:From;
	b=QQh3o0rJMPSPN5StPWOPv0s7KAsqTgQClXHo5JYmmyS08Iu0/ylJBkDNwe1CpkFfn
	 m4jV6EXASjgNlrOqMLvYW7oWPbADHV0mOPI+FLtJt3XRaF5Ul4IEu8GB6YnbQOWkd2
	 PYF2NGhgmkjccf30hUeeK/KrldyXvlyD2F6w+OnJeDAQ0uC05WfEQCGJVg+L77ebF8
	 1Z1jk41liC5qc02KaymIzZ63ViZTu/Qu7jv9HbvgPq3G4OcyPpyYhfuylzcm7mEDac
	 1JcNXzfjwRlC1oUOuDV90C0ptxW0RABSHbVJmaajdSKEwPlzOaJSkquLaDGhJqzcUL
	 86G2RIBXYzLBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DD7C0218C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173785715357.17789.9171550113998859989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ceb26f51e72691bf7cba98bde138020c6eeb9dac6205e815a9081e85f81522
Date: Sun, 26 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737857153
