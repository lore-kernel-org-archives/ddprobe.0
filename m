Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A42C4071DD
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780703674; cv=none; b=czbBAdup0Y5rpcuourFWE6A+F3pfsxNwxc2ZuisuNAeKpurKRuNofncv0S7n1taa6JDO9J91EbvrzXIHteuTLJ3b8a8FY7C/0hcDDojoDZ7lrA6YwcNDw4EZquV0EG5norfNFI37tV7xVHQq4t0D2MOxeeZAoq4AKUhpkHLlWaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780703674; c=relaxed/simple;
	bh=zZsCki6IoQIm/nJo4jxHUZH0ZhPi4dS4dOicMviduq0=;
	h=To:Subject:From:Message-Id:Date; b=d2FeFxK3zKLnWWw071x54DBH1jS0UbCFq6K9FoeufmbGxwDQwajRGPR8D97pDoanSH4uUc6SbboXdhLhZYGNNzJQ9exhec4KzXLjen4cEH3arAY+tc4hK/qE2F0GKIJX3RkxBAusoaUAXCq36FDUb6gOCLsw6Ozm8eBlJQTJUzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL7fo/WG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL7fo/WG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C498AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780703673;
	bh=zZsCki6IoQIm/nJo4jxHUZH0ZhPi4dS4dOicMviduq0=;
	h=To:Subject:From:Date:From;
	b=XL7fo/WGYawafYzyYArtWNoXTcfWQPKoBbO6q+0EhlLqxeqfdGEBKYQYMBsCb/YHF
	 gPMXl0x9MwSf051EaBCCVNgxCLm5zpdjFXtawJ/1qFOlSEe8wUYyVKle1XnrJHfA/9
	 Mj/74QfOpyTY6l7uKaLshu4NaTN9Lqj+/dvzZ6CtNZqNo+tVgnPJeHXjgphDaPgxjc
	 NRv7PH6n5c2hjsl+86+wUMuTFyTiBTv5qaJJqlqVCiplAlnVOJO5pmTefDkvdI3sy8
	 LCOMQmpk6qycISWS8u3xlaz7KL4PeoHiY0cNnXWoUKGptB1XR4qPxwex7YOt5Z5KWe
	 p+KIdGY3QlCDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A985CCD6E7B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070367368.19615.14908619897642300783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42db8297b592da89d1fba82fd3865b1f0f57a203c1c08500759765d5a8d068c
Date: Fri, 05 Jun 2026 23:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780703673
