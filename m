Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0E233E7
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751163594; cv=none; b=V9ccdo3nt2FFSlyX88ZzpOALgMN0rXdVNklUIc75XIdOKn/GreE5RkPCgv2+ZDjhpSWBxkRuIl//yGcOudkwa7tfj343aXEfZ0OYfML2h9O9NwN4geZMRvzUg7X4gUHlhy9FMBlhfdCFFjxzos3eDzkTCpOPD6CkiXaGQriN7Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751163594; c=relaxed/simple;
	bh=KnAaa2KZqTXjjCvH+D5R5P6i1EvVK6XK8plsuZdywro=;
	h=To:Subject:From:Message-Id:Date; b=h4muqXZ/mkT7CC4X0RaXXtAHeL7U6PxEvAb76qBgpkx2eMyVYZ2wSLVi4TmzdT8H3hN93cNudxjsUMJC39qgACo2q8F3le2oI669D7ZlIAzFSYkFUrw91zjo4gb22S1D+lJ/OlqP8dMaZDhjhvp+J5wYZE74muvf2O5O6qAvvfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcqkYNDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcqkYNDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5351C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751163593;
	bh=KnAaa2KZqTXjjCvH+D5R5P6i1EvVK6XK8plsuZdywro=;
	h=To:Subject:From:Date:From;
	b=NcqkYNDhbGEp5IxhV2FNQkfVnemsvcEYRzWTfqgcikB/nTrCK2oELayBYhV2scR2k
	 mDp+N4u20frYalzGklX3N/V4v99LdzScFuJhdthVvy0lcJwmirfaldfcOQCBpnY8kF
	 VS8cNxA3Krn6ecKfFRD05z+dWwew0+LQOwHaYl2On+YhkLFzN8JZjuYDVaQfwvccr4
	 KVokeezz3cOejbvwl7D4OSjTkFXjbOV7Esdf4zZOxa0eiJkJFm+FswHt3VDeehChss
	 4raVkz6QbsFxfpzka6Jce269G5ros7xFmocwxFfW8BWXVAlClCX/DzuYnK6n4j+TJz
	 H90MkPQTKaC8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91484C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116359357.18660.999932315567354719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a784021aeecd879dee64b524db27cab189a2a70bbee2a22a7bfc79101bdecb
Date: Sun, 29 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751163593
