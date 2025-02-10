Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F04820487F
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739199956; cv=none; b=dPRyZtFH+DraIViqBWYREuZtlEd6vk4PYCyGiqVpsq9wMSmQlaeNN/vV2JxBBIC3HkTv7gTyjV7QL8QWnO/fVT88oWe2bj9/6QKP90W8U4+8E5ySb8MMg8X1KQe8inBHB10tqVcPwOAjMvfzGH+DLqJNOeAhuzf+Ze8qu1hcXPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739199956; c=relaxed/simple;
	bh=1iu5xaD79Z5UkoorA5kubV2z7wB2yCgu57mIyk0FMcE=;
	h=To:Subject:From:Message-Id:Date; b=r867WApTynMZbhG+dQSApblR4kW8CcyYDB8gY0IZhiPcdfPFoW6jpxavk4ybqTeq//aFbxbRa3vXRBLKbpKTLj9HKEnElC4Q/XX8VTGvSZlxbEH8HFBhi6bq9GLoyngZBv7agDpSdd2lan8pwj9arbtILDCAIknSFfcKr0cKtKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vO/mL8U4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vO/mL8U4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1A48BC4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739199954;
	bh=1iu5xaD79Z5UkoorA5kubV2z7wB2yCgu57mIyk0FMcE=;
	h=To:Subject:From:Date:From;
	b=vO/mL8U41YIpWgw4HXv+U6XJqWMMOHq6EGgi9K07HUwEd9HHHf1pkIa4gKz8jLRJB
	 pg+WNZCt9RYTDMEYo0IZKs6lUNaHRee7RLPAvZyYb9oj/2l7+tKv8onan3I52hDygW
	 qumnFPkYrJUGgf9LKsb4BsMjidb3F8O4uxvGxn7ArlgV4ItxdqewlkpsOMBSKtLC2s
	 +s3jtDUcIJJJ66Hh+A0TXgwZ8R+jy2/A00WIzB3kShnHtg0iBBA9xmQpd266fCVRCW
	 pwvoXJFg+K97aieAEA/feyTVcj4uOlXvtJr18XUG4kYNaAbE04EmQDjfO8UDXe6t19
	 5vMby1hQJjXCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFEEFC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173919995382.9187.15610801509508250134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eee5e098c5e93bff2b0433bfaf837662aec45f3bba1279c9bf16b448ba9f8a7
Date: Mon, 10 Feb 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739199953
