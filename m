Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283242571BC
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749794394; cv=none; b=U2rn+wpvrNCKCPhrvpIQFPRv/Q468O7lpL/PdW8ubIU7IEZ9vva1fZYwCtBeNIQNQu8Cv6QKqVIxC68x8JdaDoCDb/XS3u5r7QpcMfzczqDyljYg9tHvPQhXYOiV6d/i6a9881qKlz5TU2EdaWdJAuzmMsvVzoweJUJ3icp5eE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749794394; c=relaxed/simple;
	bh=C8PknrMNi6T2eZSKlUwjOA5Xch02L03qObIe/nYo7SM=;
	h=To:Subject:From:Message-Id:Date; b=s4Ps6OOUQMT88crkraC8wAnYoI1UeXvVeNhOTH71RjfDyHH3xKCe8A//rpnVouc1As1nErJBGCGBSUnEkxEA+qVZONvbYMyEGkmvOKqXvL2izZ5tj9izcBy8wfZTw/kmD2IAP2JngBoUKoFOo/7o4AK0Ugzv5q20igUAUbcbSPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i79WiTK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i79WiTK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA433C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749794393;
	bh=C8PknrMNi6T2eZSKlUwjOA5Xch02L03qObIe/nYo7SM=;
	h=To:Subject:From:Date:From;
	b=i79WiTK5b1trZkoOF09upuxv7aP5kx7jJqc0rYfmauvuX/UzS2tWe7EF8Aj80Nm98
	 7dktDFqzHfv2BtYYPmJ70HjJnqRu4cu4uQNFZSkpVYOKN+KJFr/+OkRqjS5gxkjQK2
	 LSlBa4QpxOfOADYHtlpSgB7d+3zE5Sd3zC1BEK5XFyoT+q8m46e9raoMwFsnTC19ce
	 K50yNlRqyD34snL5EWjjt9WJQNMQrZei/ETG7KNeV4kVbpTDEor+p6ezbFSenoIKUn
	 0hxNDp0LV3o89pUtTCXtdm563A7lm3XyBO2Em7G0kx9gxS6m8gQo6llg2ZsfN3WhJm
	 3LgXl5vWv2UEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E8AC71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979439357.16541.15647022443734076975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48363dc3b0c9857578f19a17b56c190cd200f116108d7da4305638a49b91094a
Date: Fri, 13 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749794393
