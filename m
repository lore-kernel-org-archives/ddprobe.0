Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E51B1DF754
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744123194; cv=none; b=VGPV0gObrcDc8m1ocdVlzRy6JXoP/JI4clagIdYkm1bzg50Yyp2sbPvP06men/+3QzifN9SSi2Xg7ykwhFkh80xRHMW3kprChcJ6BoqrC2Eya/65d0Smx0wOUN+YrELGRgS2F5x9j7a2C1gceHHgXswXmBOcGqm1jrOdvJ69nR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744123194; c=relaxed/simple;
	bh=C5MpXaMf+TtGITWYFH5R4Ihp4+zlzj71BSvznN5kuJM=;
	h=To:Subject:From:Message-Id:Date; b=lpASoZzKB5ghmOfHQ6JBNxl3ghjVHk/RoSeE0inuV48JtA0sRDd9AtQ88LGSgbOGs16GQWVy8bWyenyEu1nUq4eK09GlUx9NMj8EU0o4cAuo9Aw37YtkgeKdZDrMYiE0Y3SXwk7p6M8meQYV3r2bX9vpj78utyMChB+FZ29zCQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8vduqH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8vduqH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAD4C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744123193;
	bh=C5MpXaMf+TtGITWYFH5R4Ihp4+zlzj71BSvznN5kuJM=;
	h=To:Subject:From:Date:From;
	b=G8vduqH8Oc5FXkfMtzxwxzPSo18XznNJtf05ZljKvMADF/PZsglLI7n291eDjBs0/
	 JZz9k4+FVKgOgnGSqcsioOXrUw9IshOyktc6MSY0t11zI4ivp0iWZrFpa72zZd806n
	 Csa/hzf9mC6ilBUdITZV/EWOeyCTvZUjaZM+f4YKWGIOhhJWce01mUgz46DY6wimxV
	 NJsrVUdyjMl/ZfuwXTY+/TQ/e6mYB5w5naLhsM506bSUulHmC+RSFosK7oJSKJuuQ5
	 e87LWJcN1bvpjCmixRqQUI2gYzPtw7aBVxybnoydxXc3dk7aL5glO/0oF9DoEaycob
	 4NbJ2syO4lDKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906E9C369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412319358.26650.17769014721102079202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36127368cf3fe4291c8cecf8689e7228d549a39e2855d663636a668050ef9b22
Date: Tue, 08 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744123193
