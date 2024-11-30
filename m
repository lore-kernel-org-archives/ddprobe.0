Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F71119F117
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732975554; cv=none; b=V3ymgXQriShhUO4topdc76PEDNGJIrCXQo2syUqfxCuTgeB+67cfa3inJZdKhK30KJlq8/cI3VVAuADm+0EtRbRxugcLO0RKU6zcPa5Uv5y65zX0SoAWz7IXflbTO+fziJH8jNYMvCibsNOa2mMVDadqYpYwmqkbScsWr8IMJnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732975554; c=relaxed/simple;
	bh=C/HAbEd8VkkW+JLwQdzcj0IAVHiLu09mk5wQ+fla38g=;
	h=To:Subject:From:Message-Id:Date; b=cbqitFnROudaJXmZ2npulcC+A7XTmb6nZGbBIwQ4eynoFESUaqrRty5Bky6M9lIV/kWCdGE5heimQkI/jLzoxyQYe2P7Hq3bTsB+wCRt82yYveBYzUnbusXp9YVnXXgqBo/SiLibQkouRfX+pg9fUd+IONKXEV7VziNrChG2yBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYxeU3lY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYxeU3lY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1ADC4CED3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732975553;
	bh=C/HAbEd8VkkW+JLwQdzcj0IAVHiLu09mk5wQ+fla38g=;
	h=To:Subject:From:Date:From;
	b=HYxeU3lYcmqtJeqpqX7VvnSp9/ZghjmA1co6BgkqmRXOL/UyQovxUmkAz1mdMMih+
	 UCH9ZfYtvEbNub3PSHCZfz3IGM/KUUJaqMelaKsgxGxiM3z0Jtmrq9bYR40y+bqPuN
	 zyAxkxgHQu7iOuaa0jXnRqnI9fXTxZuZBYIjtPQc9tFNaqX+ZCuRSS/KicYl8VVLGH
	 coC51zggf77/fRZDLMcIbOEgu2q5dKqGaTHEl/GAWbj4iHSjLVNhucFGI26M2DBr/B
	 eyaYfZqHq61gvsMQokll0tYTB3WPv/u5G+KUKpCL78+VK2hytMPswGUk6ZTkec2j/c
	 9I+JSvkVEJ5cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9957CD73604
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173297555358.8325.11976169771935252605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86febce8f6522b5d8fc17e43ab2da749d724f17518d0be378d8823d424e6b2c8
Date: Sat, 30 Nov 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732975553
