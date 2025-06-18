Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2EF39FD9
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750217394; cv=none; b=MnEBCAbJYFl5DERvCuBc6Mzg9EKqpakNw9fVBMbqJh9736cubf3DCPLaCk3vMDRy5nVk70pe3AQwXkxjZUT0SqYf4lOQj0syb0aW8XRdWbhdFxcbxG3bqtFZu5plBTklsSZmdwaX6UAHIJabfvpaNMwmCfzkRrLrA8cDRwAHaBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750217394; c=relaxed/simple;
	bh=xIMSo5+jwSzbpZ+6JRgwb1F54BNCdc6Enic4EvVTo/A=;
	h=To:Subject:From:Message-Id:Date; b=NUI/p5wzJfpZlH6DU2L/zIMJ+074ScGRkUXgJphYcsXMQan+NXVmPeTT8frUNisWGGTmYQpF+ZuSwJEMEBGjCnLdgEaS9Aul78oBcXidNaiHTGqcLdekRyCdDopkybWpQzyPxd8TiXlUzG8AaiUes2sV1jD2MplswOOWrTGYaXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJP5xY84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJP5xY84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AACC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750217393;
	bh=xIMSo5+jwSzbpZ+6JRgwb1F54BNCdc6Enic4EvVTo/A=;
	h=To:Subject:From:Date:From;
	b=SJP5xY84pSC0fDeKE8h3v6qweIaP9e8uhs2nNp9sZjM9JudQ2N3anudM9+UHZMJcK
	 4/EBjsF/wlRzjpF3SdmBRQ3Mwd0roUp2LfdCsOTv5P7hDijsdK1XFKnuXUrGodPXUP
	 i1NeibxoPlqfaf6Iz6QHRpnh+/wPpl1g0f+bEfzauZOFXrge4IFHgPnYfHDmQS5d3N
	 2sRuCRZNZCQT1+xqi+/AY5p2PlPTiZXCJa+HXVrW94mwK0LwfTMyU5af+QbdkbegEo
	 ZxEVioDBxBMxpRDEA61jdj24KfzycT5GXPAPEGsTZmJS5iGcbf2jDAz5fHNPBNLUs8
	 QoY8LfcNXdsfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A0CC7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021739357.18104.13927495984671939737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a17dbf381563de55eaef04d43c826ee8eee920acb8aae093488c787861e298
Date: Wed, 18 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750217393
