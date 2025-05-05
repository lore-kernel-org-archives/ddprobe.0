Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2757826AD0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746441594; cv=none; b=JBKRcGm9dSth8oNRHHnmU5jBD7OIfvFP7brq/x8C9WZ7H5LY4MQlbV3rwBlLbCVHizqHIVhIYOBYklJONiPXG4ZFMAG7zFOG4AjUbDjwuYD4YeVAedX1JH+n2mCOfXYaDxRQipmHorNKyk4cqlc9rhp69Cxf3VsZdNRYdyb3E1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746441594; c=relaxed/simple;
	bh=f+CmO/To9/mumWf+zqyKtA1N3eMNX07/Lo0WjJDiuaQ=;
	h=To:Subject:From:Message-Id:Date; b=MYIrbYLmecZvmJICn5K5N/s8dgKLc9DOp7XVLg+Wl4kGBwpiEaIGD2/hCMA73lzh+vjDHWC6OOyS+uMSZ95Z6pmPXtir5EMLU3l5SY0QElCDzVUSQdtwC1LnrGQk9co7iiqrolCnRWahGYyn7d7rMLfHdczygndNjaWGJ1TsEYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fur/Jqp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fur/Jqp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D246C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746441593;
	bh=f+CmO/To9/mumWf+zqyKtA1N3eMNX07/Lo0WjJDiuaQ=;
	h=To:Subject:From:Date:From;
	b=fur/Jqp8jjewBF74cnnDcphTVbME34fymJiJLKVAE+uGp11dxpe2ZCKhZ4A+xYI7m
	 N3lsvre2nBET/d9mmHLU8KwIIh2eu1UNqK0b+NeLWx5vCpgDFpZYXDBfk47a6vQfJx
	 mC+5J5+JQQel0rKSrsETRNTZy/RtcIiQJug7qfAfr/1FIfgqn7ZtIr54Cjd+m3pjvd
	 Zty95U5JXhAud8iUiGGV1S2uHlA0y+I470IzNgq4UPlgp+OQWG6PwzcU16mvtYWqT8
	 ZaTcCiM28BFub39mJhVTylb2g/mv9SBFWW3ArNRIA5/kU9AUm55eYDtx24pKpJRJPG
	 BbC1i/RJpUZLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3E9C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644159357.11139.5065473401432744605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b0982df8afa9cdfc203aa7f21f7740af313fb22ecc90f0930f3383b9dc09e2
Date: Mon, 05 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746441593
