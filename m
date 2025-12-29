Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DD2313E0E
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767014034; cv=none; b=uboCScOHJytjUqq1v6qMfDxLYLtdsKHhHQXjG7u3UIpfAvtU64bi8PeKbsspHIglGHFdU05OH8K6ydY1x2mh6i51wo9tenGXK1RXWsnaRV5dVSNOiL+vDi/yF/VRGUqB3dfROdII1vKghbEVfCN3tIPB6NMLaMo8V4ZfninqWqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767014034; c=relaxed/simple;
	bh=8l1BoXhpSNGquIKHom6ghktrJ4/7t8dePCb8M0GbFgs=;
	h=To:Subject:From:Message-Id:Date; b=FQ4UrS2x0OqRKvwGyzuZtvIRHhfI4stHrZqg9ykhVQzQOmOqwE9oEhgx8BlAHkSRRajr61o5502ykvaVimFplOLbOqd5XzzDuy0NnMYIFEs1lkK72F8o33vEwERKRRDnPQJ1T7xsALG0eGV5nAHoSLkkmxKi6Ry88ZeKkNa7VBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZdmqpme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZdmqpme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41BAC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767014033;
	bh=8l1BoXhpSNGquIKHom6ghktrJ4/7t8dePCb8M0GbFgs=;
	h=To:Subject:From:Date:From;
	b=GZdmqpmeNHK7Yy7DZEBPeWrwBmij7xAuGlYVDEb7wjEGIrWnWuhs+3o2ZNpa9Rke0
	 4LXygGq5RNKZavX2fhKSDaE/g4anjSgY93tw3S0is2799OVY1aVmkp0HQ9xfvYBl8h
	 S4gquBBqoWSdEJlZFUTaH1bPVWFBU/sx5wI3wtNZ21H577WbADjaYqHcKqu4heelK3
	 bw14PR2yxRksDvjXIECQeDn5mh5tH+By2JdW60LjpHQiiTvv4d3BCIammFiVnfd6zr
	 IW6ZQ4s6OQ+VdZFi1stfnrHb/77c+GG09tYhuZvGANxKEnTOusGtSGMggj9FjnK8Qj
	 pMz6wYZBf1L9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932A3D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701403359.30835.13838730540565330050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab784ed2b5e7da850250ec1e530a400899db058f96a8619c21b9e15d6005037
Date: Mon, 29 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767014033
