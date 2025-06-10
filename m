Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EADF5789D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749527395; cv=none; b=HUTe+waR+UV6bK7WT64taMNo00ZnpnUJ0rw9TaRXju8hqVStJn4OrkJ05McjOUOfZFYaplYRZD1ZHJ20fjoRZab+xYkfqavj4GRlcV7T3Avw+MfCWXdtCDgdgrXSvg4ElRdGNwyrLu3Zm7bva7fppHG4hQf8bWwUAPal+2PM6uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749527395; c=relaxed/simple;
	bh=6GXiyHrNvUNrz9ZXuYxqtT4iszyHoh78K03Ytz40FMQ=;
	h=To:Subject:From:Message-Id:Date; b=LMxhN2AytT7Ec7ooLn+75VQHRp1NFqrOX9achZdAHQtBrO9zu67aMig52IwEObyLZFLnH0EJkhPHKDaUIbY5MATAyjrtW6rpo2WEdYAto2RnioyeeFZlpd43Cf9oTsQ4DbryizfU9cnTQPI7vJ2+6SIrbNEV8GNJA/+rf6cliX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZvu2BG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZvu2BG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21E6C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749527393;
	bh=6GXiyHrNvUNrz9ZXuYxqtT4iszyHoh78K03Ytz40FMQ=;
	h=To:Subject:From:Date:From;
	b=PZvu2BG4tnGrxdtB97/Z3nFH2U0GSpubsVNbmqfsgDQToYUm2AvOvq0WVtixKtCWd
	 FvH9LWcdqfNT4GxYVhjGE763CFNHIc4KU1Atq8eSH86qk6nwD+ij5kUwhUmVttUkYQ
	 ufdXWD/kYJuPUt+JHhqsMsiTJD7Qi7whuBlTAxwB6/lrQumBo6DcC23kMoWQrO+wc4
	 VoTB4gSp8D5MNF9uNN18MZJVLkpkPek5lLNQIbngS5q7smNqtGG2pjDewBHCg9PfR5
	 DoFBTOeU/KYJq8TH4epju+AvmXST3Uscl0xVortmMnrggvG3TJaIdcNdkJnas6ph6v
	 AfjGIM/wdbMew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F186C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952739357.3485.919632101779196333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e667b25186bf2d62248aea21c690983d83ad82b8282be957973fef499fddac9f
Date: Tue, 10 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749527393
