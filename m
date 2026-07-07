Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2757C33291F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783440514; cv=none; b=YZgCot7iF3CyDolf+Ju5TjSen9ARJTmL2OYev851ISRgjt785NVaoJjAmo0vmjtDWKjI3YZOTiExf3oBfRn9dTZ+5PrrxFYw7UHh2mIOzoZckRV1q9mip0VCPVYp9vkJL9g8jY5LZu3H7DlnVF8ipcSIbs9BeIAn6AG4h/y6ooA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783440514; c=relaxed/simple;
	bh=RwDDsxpQZ/s2xlpu6dsR8Anm5MHxnnazniTzZL/Nt/M=;
	h=To:Subject:From:Message-Id:Date; b=fYFlUCyGOd+4arfES5FarqQDemaisMOdahJz/VW3ryDpvr9xFwI9Kw96BL2gQ/MKsHygD92LxQ8q1Q5eGvivFTWa5teo8YDUaHBhnyvubbQsTUjDpDetqn0Twt0KurnpkmDV/73XKtj5ffL+8EodJxrvcHbQBwmV13rGoFMdGzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWs19j+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWs19j+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8C6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783440513;
	bh=RwDDsxpQZ/s2xlpu6dsR8Anm5MHxnnazniTzZL/Nt/M=;
	h=To:Subject:From:Date:From;
	b=uWs19j+4Gv+1u1ZLZzii+d7UBt320HQZswDZtRxYog8+4WmmQLXrbiVQCas4X5d6e
	 AzmAgzQ/8WVA+V3TWELIYJTH8qS64uR90uYvsGY9W3PJBxcg1d1u+ZeqAG3fW4YKNb
	 iJZAo62RFQt+ro8SQegOVhlSadKDMqrWaxlRODKZ+RLRT8SFB+guyDs1FWwxaBOGpG
	 rzOGihGB0k8uQyE9kiAdrI7ANywtjKMxdfl1qeNrW9Cz1IMSw7UDHDAXKCvgYYXjN1
	 tY3ivnMVEuebUJiRiq+xgXPg4ayOWksAAPXn/uMGewr9MK7LH6TLTsL8mtwDOgiiYR
	 uqHWYyGtvK54Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A962DC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344051368.7595.14460363719968356129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58def861842a5212a9e6de40887d9be93c6a938d5604bf8ad7d29f85f3bee7cf
Date: Tue, 07 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783440513
