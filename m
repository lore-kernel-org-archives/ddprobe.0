Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3792628D
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778395234; cv=none; b=OzMr6BeHCxYCXHYMj7NP43HqUIW30oEw734bvazmsSwUAVJ+OcF4U5ss4eE6M33zcWhNxq9d+Nay1HPgBls9Ow0b52UcR67WtcOqgdCRJPp54jSxEAhdWAcrLyi1AMd5FzWq7crD5eauA16kyFMWcUgxPQU8WGyFzvWzvhdJUTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778395234; c=relaxed/simple;
	bh=7trbwL9Em0r+zdrIq/SFIc26f2lGbxkH/U9u1kvS4mU=;
	h=To:Subject:From:Message-Id:Date; b=OJFoYCQq95SV3ygbg/Gu9O4XKm1u2R7cLlEOefYIK82ipjsJc1KqHxxAAFcoIDjAUzk0iqEUSVH1ia5YfVqYf1tsKXGvF8IZwLGnNEMFBWKU7HAXTYPKgDfNIML7fZRzWSg8gZKOHbHi99/YhqIhtlm3ob1AF6GsSf+LLKbUbSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NozvJQV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NozvJQV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2162C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778395233;
	bh=7trbwL9Em0r+zdrIq/SFIc26f2lGbxkH/U9u1kvS4mU=;
	h=To:Subject:From:Date:From;
	b=NozvJQV3S25OBjjB7eOLSBoLxwZSwzwou51jrl4V0HH/toQsKtUVVz9yMtwOzFfkK
	 VN7kmrV0wnxgP3exwDVBFv8800Q6BeiVWe7oLoglrCk3UPXEWWhtyxTCEkw2G1R+yD
	 N3u5RFq/pK7kNW9b1lhYTkI75uTaC4/at7aBgaH+ecVkxBkn6tXIfHiSemErGSVpKX
	 sQk9WkA9EoUZYTo9OV5KP2THWUDvGz6CC1ZVnpBhGj9LAKg0kSo+8hzb0X89BQLPkc
	 spWxKE+ljOzNGSp6TXRpUEolFl+lttO6EwBtc1sCpwQYQMSBNVBQFUnret0q35BbZd
	 7mL22yZG/UYtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE148CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839523369.3486.13469105411835430917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5de4783bc463c6ac8caf778830a70a6ebf370f7caba8cdedb32017f1c901f30
Date: Sun, 10 May 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778395233
