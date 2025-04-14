Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0581C3BF7
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744659594; cv=none; b=XfDDYyADHifEmiZgW8y+jO1qCgCSXvth955vb5+U0zjE5WtfxemqQw9jBQhUbGT9Zmp389VlUonXITNNovX1P+O0UhP+HM0/x2iedQ856dGg3duP3HyK9f5GKIEqe39DTa05MduBi4zFE2T1SONn43g23bq2DeEFYN0Sn1TZLTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744659594; c=relaxed/simple;
	bh=OgJWY2x8GRdlZoYmso3PsGloSNcrjTmWpxMAOvELeXw=;
	h=To:Subject:From:Message-Id:Date; b=YirxWSSATEQPRVe1MwNy4QIfXthZ7N0fGQJ8iuzVZ02DtbH1mWnijKgi3groCTc2ETCTXifiW4x/FzBC7Y8b5FxMMxJuyl5SuSDljzUKSnPYms5blqO9JyBrk2lgAKzvtiS7ZSUCHtZcK3xDo/Hz+T/t/8KGldzC+EzoTXPL5DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0QSl556; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0QSl556"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5D7C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744659593;
	bh=OgJWY2x8GRdlZoYmso3PsGloSNcrjTmWpxMAOvELeXw=;
	h=To:Subject:From:Date:From;
	b=o0QSl556VsTjE1fOnS4A1GVPDVNRFv8orB1Ubp84pqUwSs6UGJKSkVwt2rka4iVqN
	 d2FN1YEbqfPvaO3YaQgtWCqo9O0BgfQMpe3izetLm6JWDnP67pNGU+knKBciB4aZ/p
	 5QifEQcVTplLvBfkxbmCHDH5fVv3RnHKdY99JEBoxhZ1wmMqMkjhYItkEkHoVf7ZbD
	 IStF9QW+QARPWAdOIcG39g69mtjP2ASfkzvawzRkM37aBqYejzUSNz83gaOekPZ6Xe
	 z57u86/HVqO4ALVRj/15hxAXwXuYr/GAtlQUPDUfQYssNFcYs51Ij24oBNY7nzuBub
	 4YJVIm8dAXYdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F599C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465959357.20371.2095240315703732109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b97b4f212037c6a7b71978e8276fa34db646cbe10551997a606ef27dcb017e6
Date: Mon, 14 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744659593
