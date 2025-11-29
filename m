Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3021EA7DB
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764445974; cv=none; b=JEbupCwtEYFrT9B5DfXPXjjr+JXD7nkB9Tuh4ofrNDxX2coS8lngtpgqMC6VVwu9QHa2gJ0iJvKayLyzCFBsbvOFFC00FphOxbwq/rxomtL2U9ra98n+UTw11DqqyOUVJGz4ZaQxlDEq96Cwhok7iuiKhMTFq1JIdzVbnACnmjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764445974; c=relaxed/simple;
	bh=vd2QyvzRdXCO9HgAWqz5ZGoQXmoptxTjTOMAMFGIZfo=;
	h=To:Subject:From:Message-Id:Date; b=Dik5ioRMKNkU5yktDFS0MaTiVCJ2BbuvYyx5bJ9apXZxTbX5J2NCrHs9qlk8/IqC4zVHojSjZ/TKOwLs2JHZQqcSD/IBTw5bkqO3yYZX5qjNxjQW7FRziwqiNAFbLdaEQdehvgMYfZ8eFXbBIb2kG2RtfNTVp90HjYzqGrBz2F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsmtpwpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsmtpwpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A521CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764445973;
	bh=vd2QyvzRdXCO9HgAWqz5ZGoQXmoptxTjTOMAMFGIZfo=;
	h=To:Subject:From:Date:From;
	b=GsmtpwpAnHgqG7B0GzI1fJ5ESI6QbMQNoQGlKmLykBi+OWwYfVBLKuA5pJXYYmbdK
	 F56qo5//Vnv6oqlX9+NJFz2YA3cqn2NBcz6aGXD/zoyz5VZLniizkrhRUiNJrs7NLc
	 VNs5ySWOE6mtou/Mk8b9WS+70p0LP2k1GmAUe46tt/k5040hT/gutob2TdBh3TuvxL
	 Ce8HIFkVG5Vr59BMqsKf2HOBSwwegjCZkuLbgRYBUWWz4xSPTMAGeDx3qL5XzYdAZ/
	 wE47N075hE7T94/BETT3AS6WwNXpD86/3ZGCKsJijT6FJx7/VqWxGK6luy7qqkkq16
	 OchvEiMy2BeVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93378CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444597359.14548.4591487286650441269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80a90b8d1ec8f40c05d43580ae3f6a754085b7a712bc8de4a3867add8808258
Date: Sat, 29 Nov 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764445973
