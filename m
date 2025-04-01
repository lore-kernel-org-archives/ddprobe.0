Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482DAEACE
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743482994; cv=none; b=B6c8mFeLQyiqCkIAbzKU23e+KbMJHxX6C5l7hw3/4C4Ss0G5sEgk4FzBTiq/I421QnNAx1PZ86y9M6Ix75j8G0GtR0StLbq8IEG0AFhiRXcrE75fxNLWC1Kn9AfWsz2iLfzmLUddoMevyE463Ej7N8Wl8pYLjZgT8zhGcp08KmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743482994; c=relaxed/simple;
	bh=JnEpr0X87x8vlnghtNb01qHAFXXRdXxlZG15rIHvVBU=;
	h=To:Subject:From:Message-Id:Date; b=rFzHPgrHtNiFXPGYnyi5ip99YINbMR7BEZH/4f+UnVjqY3taSQECWPbYVANtlJyr8a75xQgObE+SZDB5ZL32UFtCKPG6ikr6l1gf5329QGmiFO1Pfx5Z7+bqjllONSpA3h8bPYugGVncuSIQAL7oNJLH7Rw2C1d/oIJwZjEv1yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ka3btzUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ka3btzUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B302CC4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743482993;
	bh=JnEpr0X87x8vlnghtNb01qHAFXXRdXxlZG15rIHvVBU=;
	h=To:Subject:From:Date:From;
	b=ka3btzUhiv3/MgkDbaXgGaARTU8p+DQc9vvYnxXrutrx4p4Tw9grr4PA8gJ5GhWVq
	 wTw5kby3zMR4FEcDxdqGoPeDnDJGaduRMv6bwkBEruQP+yUulTAIQmTQRyux+IG3XJ
	 ZcRDnQ+JNk5gNSwOlBbByqv9LAMwFiOEvSbnkYuQlAkjTXZtD0ngzjmzqvpEjw1DWJ
	 wB+IPmJIsrglooIudh+j3lDpBVJOyXjZwtmXvW4WPvLVvRWVYWDCWsweOZLbZ7ASAL
	 41vmJ/+bdIF+siqgOujvj1/nGbiHC6hlpOu1tYg+uDJiVykAecizh+/tgHvzdF1EpV
	 SW8lwm9n4PkUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13C4C36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174348299359.7518.11397220033537202154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55932118d936008b98ed0036c0d28aa7c74576d1ff020c7375130ee61f406d0
Date: Tue, 01 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743482993
