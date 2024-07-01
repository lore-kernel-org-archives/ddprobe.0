Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58290839FE
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719825263; cv=none; b=nLR495De3++kxy33zQ9k/PKT273aYkXsgRD3nC5bKBy3olrP1A+/iPwuljaFIAAvpfnqghlWGqfnNbCcuIQomilL7cExWo5yr/HtVDD1RtA0AMaHHxC33qEAWXPwgEGFYLy95avBrUdAmGOdK3zYH1KH+xSGcOXCJXC8aUr13No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719825263; c=relaxed/simple;
	bh=QIULoEqhayR8MBXTUenxbX9WOFh49qwW6Yo2DalLXz0=;
	h=To:Subject:From:Message-Id:Date; b=hZkV/+gAScAK6UtjYCUBBOk3S3LmPnu7QtRvEKkylVIr3dj6571diDFO+bUQPwBBs34ooU8ARGKf0weHNehqUITKyhC8/s6d/rQGwO+isbkzO2GsOagdkTI4LHwmIjfxWbnDEcemsPFAp+wg5O5BPHnTbdpf+qyfF1JiW1D+bmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4Szm1EG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4Szm1EG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC934C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719825262;
	bh=QIULoEqhayR8MBXTUenxbX9WOFh49qwW6Yo2DalLXz0=;
	h=To:Subject:From:Date:From;
	b=G4Szm1EGyQkBrUr3+ERdsTDnUW9at38lwzPxtHTOjvO8Y9LeTTKlTe172zbvYutNd
	 9hcLIvoa8Bb5zs2n83kxTBNfwJqm5t6S/0Y3PTUnRVaiuNlIk5S51plLLt9KwE3V2a
	 EZGbnI4XDaX+3UMojAOmHRAMM/vIVagePfQ0cPtmW7PNShSBcpEzOqsRlYqlqVZenY
	 fT/yrxqiFn8rQMu44/e3F0/I7DZ4FYXOJtZWzLbB4sVtwMNtAZc74MBkacX/ZuzJVW
	 TgcpuvDfMawN15HhwVvaFMzxeNqTjPYOJi+hJOyaIOmPGnnJSTUf5CGQjG2vmkTc9g
	 BrK5IYuECubFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD542C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982526283.12724.13336167237442418161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5e9e44debe13448117dffaaab1079e5116b488b65c8200555c03988063b5d8
Date: Mon, 01 Jul 2024 09:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719825262
