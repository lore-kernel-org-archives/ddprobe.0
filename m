Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E693B3893
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786948234; cv=none; b=XFLTMbdgbsNhZ95p3W/isiMRpQpi/rapHDc9bq5kq5CgS/HtS9YydYYKzGG5ICFDnRbh8d6OcKJHqdk2V2BwgN4HGTlpZVfEwB7rfWYYXh4a14RTvD4FSbVeQcVC96OSJx1P28lDzMV/A6seg21nQyd55+h2/BtGbPovpjIBFuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786948234; c=relaxed/simple;
	bh=PAF4yNtmsecLN1pB/LF2BhdtE/WUXHIukTrPxDXgcJI=;
	h=To:Subject:From:Message-Id:Date; b=cOI/9V7qyfmEzA7DTLR0SlYLkqPpTA3G+yY8bx8holXF3gAUl8mlVvPpQqSsaRzMKapMBQQSKpoWoAaTWYh+kVkokTVXeZAmSKz4MxEG5HgeqTrblhUoWZJLCELcV7CUOGN2K0IfpGoRtVHqIju1z1Ipqn1FwVbgM5kjz1VbSBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFlJH8eQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFlJH8eQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FA4C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786948233;
	bh=PAF4yNtmsecLN1pB/LF2BhdtE/WUXHIukTrPxDXgcJI=;
	h=To:Subject:From:Date:From;
	b=LFlJH8eQjcd1gVYCq0tmWF9gDm/iTp7ecjsnJHq64mfwU0TGsqXwZr1eiyDlRkAtC
	 bRni8IPg0YaFiVKiuZGr84Z4FGzGNnvkfuVQWDqHjM+LwLY8PMo+71A6iRC3xm6iiH
	 hmRxmqSB1wtS8bZDwgUKZ5QAwekNFL7Wl750tQ8mqLTEfB9iDxacLnCJfBcg9fpxoL
	 HDrLq9XKY5m7Co4au3M1Ir37n3xEfmvALDspgZuxrmBg9J9xsADYkFbPeuZbakjXAN
	 P065glTls5ve/ddu8kn5OdaBgTK/CV0AD/sjAgJOx/O4DWgT9iLMUpQFRA25BZcO9q
	 REMQj6SVlS1cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC17C5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694823370.30983.16993796668968929113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88fa53686e6f2a4acc6bf4e8c50c2c719a0c91607ad4d7fb18cc9cb86d755d0
Date: Mon, 17 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786948233
