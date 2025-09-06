Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC717241696
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757180993; cv=none; b=lrNPlbzqRRgJs+yepjnpe/l+4vcmTBCiAFx500WyOUflW0Se5rOK9KowMz8ScUTyF9jufRmG4cF6//2GZYD1DAii6lHI9VBdcNrgZVsp4/IeTRtN8Z4N9SQNsWtPPEmV1oHVdbGNVW48TtmqlwxakBcNk06aQe9RsiIRoINWr/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757180993; c=relaxed/simple;
	bh=6OyWuOXev0ZxFTkCt6+CL4tiZ1g+j87J6Tgock6H98o=;
	h=To:Subject:From:Message-Id:Date; b=FC4jk8xkVCt5bbSnggSTGjDbH8b9JeiwGSHvPOWqP+atNUXRORYf2nwlOQt/m6idDCJpcqKk/O2kj5NxrjIevqrpVX1Ad1vpsruYyycxi9xgJsVPY60c8ThDoY4/sa2fnSf141rZ1cHKSfZpIkH7PT94VEwrF2hnxQ4HbxByLdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8Lhb8sv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8Lhb8sv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A261EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757180993;
	bh=6OyWuOXev0ZxFTkCt6+CL4tiZ1g+j87J6Tgock6H98o=;
	h=To:Subject:From:Date:From;
	b=C8Lhb8svOoV1pKhY9aRgfM0wHc0jUW78kCe/ZocR0+IyuoCicrs+xyKHjXIyCmRMK
	 lVkOv4hPNCjDwY0goEVypMJ7CEM+KfCTBiQMw4v4UV68cMQy8fy5SG2Ds7cVuxxkA2
	 yACb/ryRFZ9UwvctnaFLxGvAfzI9TXQ9S0eULaAJHxGHXqe6A43+P/XX+z+xiFQ4BW
	 mJfzkLZNzutus9MRFGgn5tKN2VitOZwJu2vM0liSY25tWK+lxW3toIDIeathUvEoz5
	 Ipkfo8Fm9UjdYaQlCsPqj2N8IAdEAAqGE82ClnlpwhwZGjhzOXrgSuogdZtcdlLnZK
	 ZFrcBAZ2PUOBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92305CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718099357.11903.17047832647760620851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341e36e9c790724ee6931e96a8cd22906b4e7df171b4b1e618c680fb5798e99d
Date: Sat, 06 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757180993
