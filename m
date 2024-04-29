Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AABB8F5B
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 10:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714386743; cv=none; b=nElH+IcNoP1iIyXPRdAHDJFSzw3CQzFdEcZWLBPkepMwF12wcVGNnZXwvkihXVEJF08+5jeQjJj2sTp4rgNcoSbGxFL5f9lAgNKuw4AAq10vYsCTDTxSlTKKhUFae6oOu86DikY218Xkkqqs8fVslnpLIKO2cqSs4o1xxt0gkok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714386743; c=relaxed/simple;
	bh=J6asDqu8um33zd1r05FwH7FWhr/d0F8HzsGTwWCy+nQ=;
	h=To:Subject:From:Message-Id:Date; b=ElhmTRURoOV3xCZwzVqM4xYqnnqDMvDIpP0WXphD9hTXPLk0r1lLT3keWNNtbOpUR54OiYXVtGHvv+tm/HYPXzO1sTQQxnfQ4uMN2V3lYTghUnUWCA6IuVYp+ZjjLxeRmUP8o7ZagFrgLocC+xLBi4PmcWDSUvsHXij+qubgM+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvdrw3Tk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvdrw3Tk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2BFC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714386742;
	bh=J6asDqu8um33zd1r05FwH7FWhr/d0F8HzsGTwWCy+nQ=;
	h=To:Subject:From:Date:From;
	b=qvdrw3TkiLj6svxxq36CYmRjLozLgpUGHT+LtXly3lehmZkclkVAsaOH9SzmfAUXa
	 VF5/YV0N1Zo1RmQNlbOSC1C8sh4kvr0H7OmHFy55RswNK8OCeIoxK/68Dm5x0A/cyi
	 IoFSez3BCFvEjrWKme/Nk8u9yV9ctpKwsrYTwzRsulnrNoiyNQq3rlBj1qjQFYIebE
	 GF+VfDXDymGR0fxQnioaMupGx3xjqZuyIQ4QYOxZn4SEzDGJ3kiH93Rz7MApoH0Oz+
	 d85m+3KlkKxdaESIpcVjUmOj+EM0+f/UP+UgeJDnDXUbbciFa1tKZOmFB//nQVBrPC
	 aL0d3uimN4WfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEDBC04FFE
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171438674276.6558.3383138648851268843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5876e4f574e0563e0334584a9b63524753d53b65c3d6fea14536cc7f1a701d
Date: Mon, 29 Apr 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714386742
