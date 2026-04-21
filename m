Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA25126C03
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776815254; cv=none; b=BlpL5IWlX0UUQbVgHhvJmLqJ6oSgX2Exptx6z0UJrqG2V5R2BTLQeUMM5n2ngdP2YEzCTnJd8mvRF//Qo+cy8XSybu7P2sjcgdYbXzwZ+Kk5Lw96RWL0cRScqYXBLNNJuwxxje7nuVDzhqMA5QY9WQQie1aenUayLksM4aCHxgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776815254; c=relaxed/simple;
	bh=rvzvj0IlFRT2RGwe9GMpGNSHgEa6gAdtR1ab0SOhpIY=;
	h=To:Subject:From:Message-Id:Date; b=rMlxS5cf+HuMdKFeXgjlgfyOvg5P+Vrghhd6e9a2B32OQzHpjaHe05QtHz3YSq9tWdKrvCM2tOeoakfymNWwq3ueDvFHW6zvFCFRzzF68HPZUE5yhGZ7uW2eoAWN+a8Imnbb7Goqv3ONe2rqbXmF/Q/WXob4t91H1jfiIiq/Xbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0DsP8nL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0DsP8nL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B679EC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776815253;
	bh=rvzvj0IlFRT2RGwe9GMpGNSHgEa6gAdtR1ab0SOhpIY=;
	h=To:Subject:From:Date:From;
	b=Y0DsP8nLMzdzM/9IicbsQzddc3Vo1L2r9WLw253b3CxayKJJK4f0MddhFG1WIK5RH
	 yotES+Jr9oatQCm8DHZ8odQ20KBSV814S1MEHsDM0jvWsBZq0JKN6q/Zxi1cPMa+7m
	 9LFMfDTHyMJqJePGz3vP/Qe3NyWigsEpTSlea/oLKlKg/fmy7qhTVzp+c3FzhEROqd
	 zd9N+xb44IJAh/R1UD9FA+bJvCXDWcSjQhGNLxNAx+Go8QW2kMtg7lfs8t3RGaHvNV
	 lGS3AaJWDrXCjZKRA3opayBs417TUwl+AOgr4KW0mvV1W2ohTfqzgPe6sxl0ecqWpz
	 OGSvwpTpgBqUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91CEF94CB6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681525368.1236.1323576492263407020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca9e25f27952de3ee8585253a8f0aa65c4deb0bed491678f8fadcee896c87bf
Date: Tue, 21 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776815253
