Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315797260F
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761441594; cv=none; b=rw1Mb4+A6cLCeIL3mI1Gvi9ARl+aPA2GbVn9jO0HCDICQuFwXSDW+oJ4pUYq5zq6UZMQbdMrsFyDNIJJHRWsrfajF4I+RmsAPaCDGcChYpY3cxSCsarqd9c6gjIVJgb+hMLl1KIkbHD13WKvSFJaNxS/U4SlQHaU8dsJs6D1nfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761441594; c=relaxed/simple;
	bh=Zi+jVQQS3EUbchAFCqjpBqrJe+RmmcKWO1MOyl3QoQQ=;
	h=To:Subject:From:Message-Id:Date; b=PAGxDuq5B5j5ElN9Fxob23zPw4UhbMp/6y186OMCNb1jZmPKbKDAAHUS8o+ypE+t1x78BAqChEMzbTzh5j167PQAT/JrAtooqp34DE+ubIO5BPNoZSNcYlhHzBA+VdYM11b9LTPdqropqRepE7TPpCI6xEeAfULXjxvnPudSjlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeU2F1E3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeU2F1E3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6775C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761441593;
	bh=Zi+jVQQS3EUbchAFCqjpBqrJe+RmmcKWO1MOyl3QoQQ=;
	h=To:Subject:From:Date:From;
	b=EeU2F1E36+pCcLZ88BpY8aji/S7g95WnfZMkJsDh1CHaBGdQUKRy/CMEmMK9iC7Ia
	 A4CEwCjSAyyest4y1JzCIO2ts4PkgWjpyuTE/SdqE1L+lhMTsRI67/yiZLgzF6bbkW
	 3Ce4JClQWRlMAzxoRRVxvk91MkIwSdLhH1vpFmEKWNnv8Fm3WI78wg1MpoxG96ymnW
	 1pKuIPAno8sc30Yb4osY8wb7KADdtu21G8GNv7g2XKJTRfDid28zNfwbydZ4AKYGdf
	 kewqKftGhgG7NssyEOgzLkrK5cqbdITUlXFV4Qk7TU0pubIHJz4xR0obRO0uUCYuGv
	 nTaxc+8z0lYxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BDCCCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144159357.4609.17133355770299146625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54323e6f18379c1b5ef496ffc62a6c7dbc4f9140c7052da9d1e4525d93b17a5
Date: Sun, 26 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761441593
