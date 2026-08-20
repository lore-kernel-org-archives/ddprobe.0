Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2C23B1031
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787208034; cv=none; b=lpIYKDozok+HZX5fcDaSSg0vUt8uqF7lFWQKZhM8RGc+7kcVtk1Akg/Gs0Tcd/D50/Ia0Pqg9UVdICuvzPMS8i4wymUmHxIRW/UT6FtOcpFL4dHVZTd7hbf61p1rC2biWoySYqHNMQQsIi0mVinoUdgRFOPJ+dnqhBkNKNIASVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787208034; c=relaxed/simple;
	bh=bvBMdWsGGH+LQAXto8KZSSHPB0gyFyjpi5uVx4yhrxI=;
	h=To:Subject:From:Message-Id:Date; b=u6CpCn8ExeZF+i1+719TtWWEpUe/aA+TOGvJVvxP+pHk9XsuDAY8pnvn7ckYOANG7TZaZkFRZhDMbADQ7giG6ytVWusduY2JEZInKk7HqCe2EX6mCbQBlMksnkryUVoS6tlqGOuv5LD/9ilTA9sMAR+QuWIkmp6IkUotMkfhn3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SS7V26lG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SS7V26lG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDB7C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787208033;
	bh=bvBMdWsGGH+LQAXto8KZSSHPB0gyFyjpi5uVx4yhrxI=;
	h=To:Subject:From:Date:From;
	b=SS7V26lG6mSmCkee9odlzFvFdnLPi+RToPFNl7XT7OGooMkrSZ6C80W2zJGvX25wE
	 F1cUjHVfREoD/f/B3717fi7vULWLKfC2Z+Kefazu6YPVA90QgnOxFkiyxeBJWzd/aw
	 wGCbewnsCTbzvX17p94OeI7iKgqRrSiH5ZTm/DKxrHeHHg0Vzje7p4Sv2g7ZYKYevA
	 joI+pKCIsvgZVNabXPVBPrCdpHyN9K4taVXMH7/v0kZMDQPAEbQK/trVPoFu+7CQsC
	 uccrKUapDrtW+tqs7ABdaUN8wNwXGCrWjQWhx8m30YAKFxcT60OLcRob20oTFd9WI9
	 IftT2gVDuyzvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4403C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720803372.12187.16209060215193693581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad23c59aba516a28914aa50806d21e686fc1f162b74078c2e4cf93aef3b15c7
Date: Thu, 20 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787208033
