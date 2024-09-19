Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278D081E
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726704354; cv=none; b=iQoHQWrZg4AyMsDSQcm7DR7oMeQxDz4zI8WCfL4N0c+WUUu1+uEbkzsGx5KdwBoqVV0k8EuxS67NkatTiItPfV7JlHzHZqfQ3fL9jvpiawb2mJvCcdaDkGdxLVcFGphHZwFQ757vP1eSW07kLQAOwrLP+3VdGrcY963ZxIKwYg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726704354; c=relaxed/simple;
	bh=KNqe7wdQKJMAeDWUPoVaeH7zTlyhRBROKUWcg6493+o=;
	h=To:Subject:From:Message-Id:Date; b=gEdCwYzum+OXL3G1qeyYXImcrUdSv00hH1O1xpIwHHnWpxlXsj7v2kXTF4zykXDbodRjwO3boHJj2ZFVnXKDwBbdGXfP8Epg/CaqGqMxZc7CMoTJPgR8jU0zjCIOaPZ2gnARzXxqNYSZhSfbYaoHV65SAOXyFFD0X6Fr05NQv/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpEBXqMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpEBXqMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA980C4CEC2
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726704353;
	bh=KNqe7wdQKJMAeDWUPoVaeH7zTlyhRBROKUWcg6493+o=;
	h=To:Subject:From:Date:From;
	b=tpEBXqMrqwPAVU4DGtAqTRqKlqRKwMI2B5t8drzwxF3fBS1CZt3/adUzWLsXMhSG2
	 Rab5JaIOSyBfFu4XT6au8eV+C0vh3bRgila9D+sIlmmikwUmFmPyJ4IL5u0JQtyJJ8
	 xt1q92aqAtDAb9Wwc7QT1TWApNTEB6pRybmFwXl7ZbW7a3dGiMRB15ms306H8XE0GB
	 FEA2zqpgsSXR1CNeNvSItQTXHDr3Zk3oEKXm7yWIRMmKzsF1z9Zbn55rjXKuKHvWEw
	 EZPWejpurEX1HlrlZ9sgJ0iIL2bV8hSWDyKF8jeNnP64z67CgjwvHeL+DltzIb9q+d
	 c7dGzyEqqPSaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FBDCDD561
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172670435358.29870.1131715695341330549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5d75fcd1fe5e201db5d7f9e6cf744ef54df2dc5a7b62cdd6bed87c8e82c5a9
Date: Thu, 19 Sep 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726704353
