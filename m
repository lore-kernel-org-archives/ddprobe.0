Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14433F9E8
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757636994; cv=none; b=B3JRcU9RAuTIt6eF79KzjItPR18DkTs9wYx/K8OieBsDpDJOXtGUbKz0RW8+Ix0cZfkeH98kwKW20s/BRk6VYW6lToUjiqI40g8p10XkC9C2NFzi1B1vFlzr0Qu0LcmqvuC0G5K199cSYmdSivpeqwgMVMdNUKCX3WGkjopXHrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757636994; c=relaxed/simple;
	bh=m4qi9bhuBRArLYGQgEN8N5KNA5Jspec1QclhSkHONKI=;
	h=To:Subject:From:Message-Id:Date; b=jZwNBFmQ3XrUV8GNJglo9QoHJgGk8fhQVi0r6ZHcbzrw96tEGPXVoeEmFXSLIqOT5sgR5/DLyQFsj2ejcUwklKWRpZd/i+QdjHDF+pDchUZZjUIRKGU8YeziDq4193II/ucLvcqwzMd9QrhDcvSvIJd+QQJ5rHL/PBFVRPp+b+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeqdDvj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeqdDvj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD1C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757636993;
	bh=m4qi9bhuBRArLYGQgEN8N5KNA5Jspec1QclhSkHONKI=;
	h=To:Subject:From:Date:From;
	b=eeqdDvj+8N/mE0inHr7OTnxUe8ODtv4d9epc5OIFyKTHG6JNVpPPMUJT07LIn51RB
	 wYNNeuluFV8CoDn/3QdwQI0843+kQxBilUq/lpRDhMLNJqycYg4ITfRxVMrR89yMDX
	 vfAytxZGDejNOCxOV7g6xIeahjByTk482SJEL5PkvDFyztZMT+iEGj1cmVGDavJY1L
	 WQjzywNZGGCgGQ76bvB6SGZ5UIAtStNVrlsokwyqyIPNmzTvzJBlCjEo9qubDYqUk8
	 VesOvkWhlLM/fpm9nUN9JbJuMoPopSpYaKgSjDn/4Oa4vXxJl2pYPbwohdrBMLg41p
	 kxM58Holb8Emg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED04CAC587
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763699357.1980.14627695460014761451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da251b3e6770564ea25c281e03552ff1639410a97305727cd51a0af011346c22
Date: Fri, 12 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757636993
