Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D66DF5C
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 01:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741052934; cv=none; b=sSI0IRmOfZJIGFq09x1EMN7kI4agPMFBsCmPNqgBoiC6wh15vSLCF9pc5KRlHGt0nLCH/xoLS1h6MImXQxKmZRw2eXUKCutbWZr/WnglAswYuHHiFKWrreiTcd0bsQQZk7/zPevFKpo0VZ/M6256Fkf1EH0o1LjaxVXIUn5mYLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741052934; c=relaxed/simple;
	bh=q/Y5C0/1yhqtFY8WUUOHlyQ7t8gnA+pR8QuTNB5s694=;
	h=To:Subject:From:Message-Id:Date; b=DkUZBR6BsXi6+Sof9aRNsHqshtO8xHn/4PGuDGU7kzbaQMAzg3lrFRNehToB1IZFyHOYTJKMwXRa77Mu39hY2HEPylTytazqSvQhPJVd38Pp78csSud/5ImPDstjUV8s/NPnWBdY5QKvPukxFC0mlWcjr33ofWGnMajFSCnSQUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VY6C6OjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VY6C6OjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B421CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 01:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741052933;
	bh=q/Y5C0/1yhqtFY8WUUOHlyQ7t8gnA+pR8QuTNB5s694=;
	h=To:Subject:From:Date:From;
	b=VY6C6OjJTQR9iaw+P0Va2209ViVmF90plTu8HFTTbHE97RzRFCmYmT3SEWZ8BC6k0
	 Jwopm3YljCaC+/pCCT96PA0suSd0SfaoGSszt4emgp8in+LQSfdSj3aDdALHfVCTBV
	 7KZYHq6QPba8w7v4nubDl0YHIniB4F3GNcxuUm4DTox5Xss/Y2Ggx951i/9VlSVZzl
	 AacZZZ99mlGWhL/ePVKffANce0tpgWpvp+RkL9WxW99vxn8323EMxJPnwiow7PFyhw
	 xFphkmrgK74y3datrvWzROYsOZZ+jKn6gdEuAXHurkCeWEuOrz+qJLQx/J1qgqBZ2i
	 XsDuZ9vSfaI9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E962C282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 01:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174105293363.5687.4049978171896699396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: decc21cfea7cd60a1e9c74989fe7aebc020efe92d1ef6bcc200602d1fa226776
Date: Tue, 04 Mar 2025 01:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741052933
