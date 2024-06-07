Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D237145341
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717799243; cv=none; b=noOHNSvIKuUuXSjNjvUOS1i6DeWUdO/pSCOXi0KbElCs7RD5OMEMq4bsumy6DJCVuQT0uG+B6k50C6dhTLUFR7AJpcuexnoGYaPZ/VpPAGLkbSLtpWZXZwIfKG3J+7DibV9tOm9X1Sv6DgKmdoxiLl49drkcMH+X+s/2Z0O0Y1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717799243; c=relaxed/simple;
	bh=7v+C7dAgGep/ouz3A2hZe5MZ7V4jg1ciGgGRZIA5RIk=;
	h=To:Subject:From:Message-Id:Date; b=ZRm9BR5ZpWEw+Y6jQrzPJ22Of2/aRiytKx9CU48aWD6vrPr1Vt03n8Kfz5UnQP72gQWzLmP1XFIh3l72vltbbFMrwbXiGMbaS1/GUq57OW6erR+a6mudjH4aaXKJWWj/Wx/BBMMiltSgwPplUMyZIwejds0jmU3b9746GN6+jUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYx6h7IO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYx6h7IO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D882AC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717799242;
	bh=7v+C7dAgGep/ouz3A2hZe5MZ7V4jg1ciGgGRZIA5RIk=;
	h=To:Subject:From:Date:From;
	b=RYx6h7IOR10PLrEYXoQLQCYoDdwLjHHWFdErrxgBunk9gHnODYT9bhJ3v/FX8ocgG
	 k2XNvtpXuWUU03+7sfRgbsdvcfE2pzR76qr0SpaNtximFjLM5w8OpuBfRKm/h7jQuo
	 VngfJjjRYaGTcJ5ko+MDLk0mKPEKo5+LVBRPW0SS7xnObHOO0EZ+0oMl/2DvuFOFEB
	 nk9uBPw70nNFZhQb89bXjhLQ6Tktvvydq/M4/gsNZimiGdqvR4wVEyYOFd2v1PTQse
	 HwPFl4NzqouNJzT3vjxUhpoXkfhffDTK/8gNRcvLvUx0kjSp58S9BRgm+7LITyMuHp
	 9wsZn5MBOoI7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFC6C27C55
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779924276.9800.4340347182299643604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0793b54e00d6160c6b0711cd52b1004c048e5c67519eca822ddd8f7dcc2aacfa
Date: Fri, 07 Jun 2024 22:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717799242
