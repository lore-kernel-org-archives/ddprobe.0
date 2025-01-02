Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3095E18E76F
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735804554; cv=none; b=p2ixDFkjQbqPYjEZTDc35ErZurxMOM3M2NlJrBGjoTs914aIqphRAFjyuGYV+Jc3fXyrw2j8R5Bebpb0P0z3eqMvSlblptxegjePxAXtE2JvzkIXovLlcLi8sEVmnGFbBRFCIlFG9iXoiLhPTY7JVbJvCiO9ryVOg66En66Eu/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735804554; c=relaxed/simple;
	bh=AApvUACEfqIq5nsmZbu9MxirJHJWEzNiLyRoDCKC02M=;
	h=To:Subject:From:Message-Id:Date; b=cnEnHnQWe/e4C0rUwLEVKZmsCX1pVAaJVk+gJ2+ZebfHuIOQW2xx2qsRGNXKYBAqfuVNCTmd2C8/z3iOlzLhFFuG9Gpgp7K/JUA4eIktFYxoRNLHYPj8XydTxJlRz0xhBCcVaY0y1NGw3vIXhAkr0TBEIPTb++3cxzF98feg5jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2FltM24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2FltM24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99BAC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735804553;
	bh=AApvUACEfqIq5nsmZbu9MxirJHJWEzNiLyRoDCKC02M=;
	h=To:Subject:From:Date:From;
	b=U2FltM24MFd1FGc0neaWPceKWnFiEpBjSOGB4hf6r33WfCtAqICItaIMaYW4CeSoV
	 etWNrYoEZ+2agD5SeielEcsAN9SrjFP53N32VFxrG0qTzWW+hLQce5LxVa3XxBV2mM
	 xNTOd2U38fI49fVjyEdWlTAhb8pOYAlcHYQHAtiI5l6cKGDNW253/2b14f6ELQOyXz
	 DgjN4lQug9Bsr2mAzwCNVkkbMrDihNmbywkbhi8dbqzg0jNOSdlbsWQCbLuYxuw6Ld
	 tYNWVNVBPss3mb72m++borfxylLoXtgkv3VThH3oClrz85BZu3MFWAGtSWNfag3FX2
	 3u+2nXBxWJyRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921DFE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580455359.4056.4090346176843457599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad0dc0f199829144ad8410132b064157f243ea4be6c08b4e9693db6c68de43a
Date: Thu, 02 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735804553
