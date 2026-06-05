Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2959438E106
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780659274; cv=none; b=Rco69rgUE/Vp4PfZI/bqDWRBhu2Ytzu5BCs8fhoi0eTwK70aF+00Ns7CLSHkAQyx5VuFaK40/7iwxj9LCxPRrLKCEOQPvNhNAzxJhcadH3dA31KBKCeLeGxq47OVNzDufMf7CrqMugHXE52qes44W0gYQa5W4F2y5EYHwS6tSMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780659274; c=relaxed/simple;
	bh=HxJeI9im7ep9UShiiO2MHDjuLwH5hqKpMm2oH1MDRac=;
	h=To:Subject:From:Message-Id:Date; b=lOHY82gpZ4bW6vQoy39t1Dcn8e9Gs62eH6czO9rrJVTIpd3A4S4B+xmdUqgsJGQOUg1YRjOEbjW2iRJsaNfCt3Bm5TfSkl7ijX4x+OKsfUFuQDmffBs6fJj8MWddKJNHENp/ndb1Fi3GeScNQxmwMkoRy6LNVNT3YNGGnuEth1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8aW7ddt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8aW7ddt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0740C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780659273;
	bh=HxJeI9im7ep9UShiiO2MHDjuLwH5hqKpMm2oH1MDRac=;
	h=To:Subject:From:Date:From;
	b=O8aW7ddtOtnNyjm/xId1AX/gStZu+HQHxeZJ+uWe7D87QxzifxMM1CZww0c6+5aT3
	 Zav+j5EVJbZyNPNJc8c4CVwalKAeTJZ5v4aW/KkC5EDyEramU1vYg2/IgpRXIOdj7C
	 lSJvTxLmeJs2tBtHQQ1M/jlagINVnVwCEb0sLrMJAYF7p1dV5Sk7/ImvMuRRTD0t9S
	 0cWWNVO99Qia4BKGQ+aAFiMp0cdL9vL46cKBah2zVO/YeeiFM24RmNdfQDgJFwcsQN
	 vqhzO3dveM7QRzQNOuWbg0c3d3+yxLJlV4Tt3vo/2HUrC4k9nhPOsBczP8Vuc9RGya
	 62RXafCH/N/IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9192CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065927368.6322.7661969221867199033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3ca190895769c1641963bc943b3fc390401892383caf8f4a42ca6c60a69ee9
Date: Fri, 05 Jun 2026 11:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780659273
