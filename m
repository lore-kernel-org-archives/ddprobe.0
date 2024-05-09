Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AD674E11
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 18:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715280743; cv=none; b=VAxXKdIlqoirUXzRzqFN3971eaYWKWCNXexGQcxEkVC5FL9utwQsNqGurL9A4ILlr0T09Se47ebh+zZObIpf1V0JUha1DdrxzvIVRHfKocoNo7FdshIBpvuJDsH9tQWwrsBqKSuWexARjDY87xQ0hnJHgIoCkiaK49CFeZpskig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715280743; c=relaxed/simple;
	bh=n1xIh7wFfVZP6F/qlldEB3jm9hSA12d3NwwlkYUW7Fg=;
	h=To:Subject:From:Message-Id:Date; b=OgtGGuRUFxYPa+v/spiGRfm74k33yMcKFxOMR2cV2CKPPZEAymxH6+PQ2ffsErFNo60iikYNbP1uXnUwg7TUONhC4KvSLStDx9dInEOPtYTrEaNUo+Barey1o96TLhCogHSeSIh3885Mtmi8M3MOnfCT757lY4nvbFqaOhw3588=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jr8hd16E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jr8hd16E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF359C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715280742;
	bh=n1xIh7wFfVZP6F/qlldEB3jm9hSA12d3NwwlkYUW7Fg=;
	h=To:Subject:From:Date:From;
	b=jr8hd16EjlHte3tKtYHk30TYzw6lOmi1eWpTcEyucThJj3/axKlUbVblVSNkcN0Dg
	 zfIZe9BIPzg9i6ufD+TQLVUvyeaqMehLvsqyvtmbImVcaJ+LdEIlbfguVELUxGFgzU
	 kFsLi4XQaLjO8flKECZubql1QRaeLVLeSz3z/IusSuWtc4ypZ47tQbJhhHsoaMFMi+
	 pSScyvtlWgxa5P9cxMCQtbGXo4lQud4lMim4VGUAiThstJkPSWwfdWh5xYuESXgvlA
	 UrjaJlJc5K0B02ITKIwp8D9MY02zcKKCQbHoE/fGk8sstVxNLI5uyGHa4I04W6ajxi
	 F03dZbLymvvOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC68C25B10
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171528074276.27446.1947355137106464195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af0e3b950970a3be0c73ec04cd64a3db20300eb08e20c5e03102076993efea3
Date: Thu, 09 May 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715280742
