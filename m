Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296F5286280
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 22:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740003534; cv=none; b=BHtI4HBtQ5yax3Kc6D1E1y+8mZh+7MfJcgkq/k3B1AMlmC6/B40a/f6NPWOEUSYoEOqk2oPYYNRYMWg3cKj/TTueN2hBBrqd4EjZ0c71//DIAOnNUT7seesOr92CvyZ9CjDffoa5+13w54S9vAO1ZQ6YsPbAmbkaGGkJFx/5dv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740003534; c=relaxed/simple;
	bh=0ZGFecn6LJX/ZTMxjBnzBHGq0sNWJj6f20Ys63Wpl/M=;
	h=To:Subject:From:Message-Id:Date; b=WULHdHejAlU2mB2W2+f/onPA/3uO0crRsuQ3uWzm5HRdYwD/ICcd1jRtlXb5+buNZ/LVXuWIOhkKghDjXuwZVwA/J4cV7DesiV1I7TZnqKLfJqPphJ9l7eqX2Olz2O4t/nGZe3iRV0d6CZVwF4avWhK+QwUCtG0fdN4IWkiKB8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klmLTnz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klmLTnz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A655DC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 22:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740003533;
	bh=0ZGFecn6LJX/ZTMxjBnzBHGq0sNWJj6f20Ys63Wpl/M=;
	h=To:Subject:From:Date:From;
	b=klmLTnz4yGmEIEEowNr9IJNrEbTuzh5GQKz8uInRjEuB7ZO+lpjmFRznhujo0PfSe
	 gtINycaJRYT1X/Xidkmo/bHeqkrLe6vtR+eYykKZp5myi/zC3nbdHU+3TY9psMyGy+
	 DPuG4w9kqsa23rHnQp6hKVEPg0Sm9zqXl4Fdb0NlYMe0WS5HwrhD8w6rvSOgNgDJqB
	 I1+dKr0SyIkJKa6uvWhAZlW037wmzogiGbVM7+GXIyIHoSLNU4sAX5U76OjbhJTPoV
	 wZj8XLglmDpX8oR6W1/6/eMXLiBpcamrwpZxwrBjAvyrzW8o+0UVBfmqu2Iv66mGYZ
	 b82qe9PEZh+bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90117C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 22:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174000353358.1747.11168256393153464961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d417c8c2821aa7fb7c46a87df923a52b0c24a35c252b0ca5b7d0eeb1e60ed59
Date: Wed, 19 Feb 2025 22:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740003533
