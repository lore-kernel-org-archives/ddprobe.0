Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186CB629
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729487154; cv=none; b=VfIqzghILhOndsqNwAsL2EXBcFciL9/jIPDhmVVS8ZyWC/hwo1ps+/LipTOxSDVkkGBDLCU89ioF6GuIfzJ/qN1oe6xfXx2N7pC/5sX2ioFYUtCb12N2SebnQ932jpmj05A65MEQ5P1dttthJtBgImDvru9PWSTVgH2ZWiy43zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729487154; c=relaxed/simple;
	bh=VfdtX8MBH0ZWjWegKCSKt7C9ESohDyd1+Frv1CoZ7b8=;
	h=To:Subject:From:Message-Id:Date; b=luAcXEtwqUPeqYzZ0pdwUXodsDA/y7ZQv+wcslfPbLEPfyANFtzkYKgB9kJZGTy9QvqDt8YPmEOJ7PD8GeDba49bNC/tTvHi2jXr8TaYTIkTnTo3VUv9HkofsB6anzLBvjI166qxj15doBUtdSPaymsHX5ZyE6YnB6nUaaBm8r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lU33r1vL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lU33r1vL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA8BC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729487153;
	bh=VfdtX8MBH0ZWjWegKCSKt7C9ESohDyd1+Frv1CoZ7b8=;
	h=To:Subject:From:Date:From;
	b=lU33r1vL1POyQpMb+fqWC/HSm4ENf9BQP5/QroPuuVEmGy2z6KwSVLZLuPKdHakZK
	 kOACubVT3Nu/mipP/1QPkoK+NMSwHsqsKP/N2jmA1vM4nr00LgIO+1ZaamJ+7F+2JI
	 zoD4fGiV4uPAwB4ExGvpzrgIriRLZHBW9D3In60hkcsZAAbq3QeK0vwVkUcvKxOeIh
	 COii9cYhBtPCT5P17l1RRvXSIg7napjvap/VPPjtNPTzmguDURSvB9VaqXlHkW+fJC
	 H2D3UEashjwwCP0x/T/vah6SgZrpg+RU9eM3kFhkVvOta0jXwa6A2X0c1S2XVKf0XD
	 tWHmgkmwADvJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AD7D3C93E
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172948715359.27044.9819870465444448813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af65a812b4a8ed9313ab1f1e182fc21d61b9ab5e162cf2c91f87e5761fce83d0
Date: Mon, 21 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729487153
