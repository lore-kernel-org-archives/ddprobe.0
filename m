Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A141F9F8
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738044954; cv=none; b=bJdWt9Ghrp30FN6BW9ZdPWU8BEFDIK5QvWnE1tcjSPWTDT1ov5tW7V6jgk28yZaOu23oAEfPols3rGOyGXo74s/jLYqLnBRqvHKycU/IpktU3IjcR7OjZCYa/RF2xEu6UUkCIpGVHzuh73xPOaolwvIeMQgKUZbkZ4z9t+tp79g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738044954; c=relaxed/simple;
	bh=yn6be5xeX6u3Y5mL8ds0LyCiSEdyi18HArs1DS/yz48=;
	h=To:Subject:From:Message-Id:Date; b=etogE8CCZOeC7FNHyPNzBL4VAmnk4tE7HNq95uuVBV6LjJWqjBWmp1aAar6rZ8YgCij5/hdtBQHUhmt3JX/4vV1YK6tOh6TmRHD9ZDE6OmG5p+i7IhvMnx2ee8bgTCqcI51rZe7UGrlL72LVIQAfppSJf1Ctydyh7xcKZRVfa6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shzXxbYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shzXxbYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D7C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738044953;
	bh=yn6be5xeX6u3Y5mL8ds0LyCiSEdyi18HArs1DS/yz48=;
	h=To:Subject:From:Date:From;
	b=shzXxbYDicKCN0T0rEUsX5nQAHLaAFPCNIriLm9wDend4j5Kj1Z6hG/isJw4zsUUb
	 ZO2DeM548bichQeW2XmSwXPgtGQDy1kpTTjNty75IfA/zXoHu9OFdQ5PO7pwbF6n4t
	 eT3wLbSRG6mU8XSlAdMrue5jsYnqu55CvYKNvLyc5UvGKbdgf6JwD1/FTKQxg66cLk
	 lL6pJMqzAuICslhJS8xYh6O4ADcuzb2E8GAeL+VBruNjq+3l3t1kzSZErgqwxoj/jp
	 wQShfLVRv8vDDivVztwpKLj1K3FYT30AjxrKIINU5AGVAgUWfTamJu5VYvw7KGF5w3
	 y6AkhTDEIY7Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9325BC0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173804495359.32417.12558534825527605421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbb7db4074ab7b88b05cee126af192f32d60b294e03f2a3b1a72d75577d2894
Date: Tue, 28 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738044953
