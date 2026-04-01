Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1CB2773D8
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775020494; cv=none; b=SA8eHVeZxd2TaL3OD/a57Bn7+2DrD/HVV3TgcDnkdck4NtFg7+aUWLLD5TroFDXALRcvmYC1UXhyThPC9zT4+md1kgzt5chk3JA5iN1bsmVXmj/qINoWVnkezLrIcunUzkotvSy7Rlmw9eyjRtG1eUVTsEXga/kvrfdeqftZ8oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775020494; c=relaxed/simple;
	bh=Y0mDd6Efwpit31fVMoBFpNJXFKG9Sjo1kiMe1VHqA4g=;
	h=To:Subject:From:Message-Id:Date; b=NSKQUuQYyOI1UBo/h5GHmfFV5zreUAUG1RahJ6cpsbDhTXybSYenXhb9q9ViCJlWOswBNMlfuET66Z5u+tfzZp027qWLa2Dqgd/fR1OaYQwoxNoyx+JsydBAwiTPXiHI1tFEouLzDwlz95WsplbzWcsm3G0wODluu6Se+2Q+0xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZx8598B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZx8598B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A7CC19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775020493;
	bh=Y0mDd6Efwpit31fVMoBFpNJXFKG9Sjo1kiMe1VHqA4g=;
	h=To:Subject:From:Date:From;
	b=fZx8598Bh/gqyk3ZYHraKPLez5v4Qxk0X6Ehp3rO4pfLdhIrqs1LTWIHaU30sRhF5
	 0bXimdylqivGBz6fT5zv6E3zmPZGpZQ8eSc1kq3qOw4VJz3nvkuh1xHCGLtjZeBgqo
	 zAScE4i1zhT97bGDxatC8yx636uaLgmasddnpW0m4DHv5u9AcLlJfIEDMQfOfle6R5
	 ObOfHysd8uVAggRwz4dIetMj3Bf2WDA6PCIRPIcW2WJIQwnhuJSDAKDZ6uvqiqbrHd
	 Z6oBK8nhQz0DhQ8GvhhfDRP/7xi1GlToCnxZX9k9XFxo0XKy6/jjZIIVITgk+clrCq
	 0Ny29+spOuJDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E78B1076365
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502049362.13847.11104547392746448614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4f324c825eb0e776e92829a6103e75dd50bca4e114f8b9a95183923a6ff866
Date: Wed, 01 Apr 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775020493
