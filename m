Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AB38F45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 01:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720576583; cv=none; b=j8ONPCCMV7EEFuKTOzg/HDO+NjpubbQ0onCr0bn+zB+MGuqVD1V+45cF2DRUhs15pFKaMSTIcSm7mYbetPm7oh3shfFmRFDjq1Io4zFJKBhH1/lRNCehv6isGuf1ANiV/lDExCoqNbATw2wEAostra2Y5ytQ0DMkw5YFvriadU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720576583; c=relaxed/simple;
	bh=GnIeOdlm5N/PYwf9o+XkC7+mo6VKxKQTMgaWKe/osUo=;
	h=To:Subject:From:Message-Id:Date; b=rnghNCDMo13LHF0xfEGfHYD+bXrItFO1j0KMcIojtxEWMPePLSacX6fB1tqkiLdRJTuFK2AVksCw5+YRs+ukkSt6awAEfOdvpw08I+biRSm7aCIR7v1GR6W/+/sjjTErz6VHD45vQPwI4X+fIV+FqtL6ZY78nABLrbDG2+VrQ20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfZapVCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfZapVCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFFBC3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 01:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720576582;
	bh=GnIeOdlm5N/PYwf9o+XkC7+mo6VKxKQTMgaWKe/osUo=;
	h=To:Subject:From:Date:From;
	b=sfZapVCow7MzdVfVTxW+WTU3s9YNTnie4n/eIsgu9HdGatVlBD2BNQUA+Ju9pu9d9
	 cdtjjo5O85EnRM1nWSoHQqeRNTSqQ2Hfr+g/prpRZ0unqNE4Jh5k8tFGBwG02o2Br6
	 zxh16dTQ9PeZzWY9HZpmOcwqC0sAn64NuX6jreDY4/DI5aBb0gbxeUyRB6SsgCw3it
	 +6A7k75xHuYAj+n8GHQBoRqUic9j90+ewfdVFwJOBOqz1PUvNjiRO43g+guh+UQnF2
	 Jj4g9BaXMkL55BMCQWfqFhkn+0qUvFHa3yF91yMdp4EKaFSDEbi3VOQDJk8pwGD7xw
	 wyruUWFK27N3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED66C2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 01:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172057658275.16113.7274643958939608885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b55bb54bfcbf5792b01ab909b821ec9791c07346c7cb5b49e5cc869423dc5cb
Date: Wed, 10 Jul 2024 01:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720576582
