Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5C724676A
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758964194; cv=none; b=rJiVbgOwHNn5TN7ud0NXPe7UgB5AR933o4pkGlApMv8MO1DAD7XFgpXibhyXHExzCiCyPIMdXhp5RhvS4VcaTz2heVSAY4+iscmCpbi0NlhIyZUteeIyC/kmYnue4A/UZ/WqUW0thAz9lUxZnOeWCFLts6j138Jck0orDudb10I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758964194; c=relaxed/simple;
	bh=0+oVWGkMmkS11pABxzOzwEYLQ9cIDJWlHbJJ0yx/SdI=;
	h=To:Subject:From:Message-Id:Date; b=UkbvhoqGNpBhZb5xP9h+x3awY132Cobw2n9mbcCUxxUpaJ51UWhF6+Xr2dVuuXOsiOh62PWLJUjVq0F89TKKFBBdku139GWDyLzblruYjJBijkAhP2L6bTdG0w0YOLlGmy/0FY6ym7fCWUOLHwoWAIMMkkuHWzhcsbFo/X3saWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWRWuLyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWRWuLyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39B5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758964193;
	bh=0+oVWGkMmkS11pABxzOzwEYLQ9cIDJWlHbJJ0yx/SdI=;
	h=To:Subject:From:Date:From;
	b=mWRWuLyJgN2xDPZtyYWCFWekp2PQHIR2jEkwRq667K/eO9soMlSIyNVTwTzYx6yxT
	 sZQcziffghiHo7TwLXxjogI6erdtXtxvjSgMWSlwra3WYa/XkA+XkrPtWghIht0/j+
	 rhu0iCtAHmB/BHlmDRsQf8vqQw9tjtfvZSbjo9w4uB4cEtzcr9hcROeLjc9OIlvEkN
	 AV9S14Jj9cYmzzaidvxqv4utPgN4FFZ8ppXwyhZaDeKYdbADXO4P1kAPuzqEFx/Npz
	 P6AEG2y810UzppcHRpY+XljpxKO9Zy2wPqd6JUAmSY2he0Dt+r3w8HvJyYg7wUC7Kt
	 gLR4SlzqQkBkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BF1CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896419361.22485.7582814588401173340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04138869d4c03643596d95fc2de43f7e9e30803fa9181c7f5251b1d932796f03
Date: Sat, 27 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758964193
