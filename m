Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655D62C684
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718860163; cv=none; b=j6RNgptWkc5lnebOwSL9NGQSUNGX/1nEZ8a1DVNrNqqFJbPme9juxPA6RohNcyb5wSUGmZ6QhbIvQg/63u0nTwGilz2SAaf/KJky5GfOhksv8A1YhFeCn70SYMlFIz73NWkC6qqA7fxUOzrhziag0RXX7HgmMBK0PwTxVhYz8Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718860163; c=relaxed/simple;
	bh=r21BbY6R6mbaHpvWPvbfpP0b1VFgY8/GpXBREpAD3uo=;
	h=To:Subject:From:Message-Id:Date; b=Gn2tqCUMDgimUKmnDdeQ9DwZUk+jNQSswQyEe8nye0082tx1burElzg6x1YMbesPgS/zONT5gLNriFOVam5to7z2iFFqNcpzPURgFOUN6Bw0RReQ6T/geho/TBuWFpJrG5xXb4VmYjbnVjCBZNX06bcGmQbP7QLv7jP1Rn6wurc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LND+EvL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LND+EvL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E65D5C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718860162;
	bh=r21BbY6R6mbaHpvWPvbfpP0b1VFgY8/GpXBREpAD3uo=;
	h=To:Subject:From:Date:From;
	b=LND+EvL0R2d5+CZEyWuZESuBKkkJd75KoCmUAKjIotpaemWfeOE5vW8ybbVUm/Sy2
	 GmYD8Fwh+kYE1LmGMUdkS4qvpKIMyv24ZIGflrSpb4c7aMX/y9I0X2Cewp/OscPU4v
	 QU0/z2hjQRs9YnFI2p2bKMjfhDJH1NRwWqy36b8ZqQ5fYbk6UTzAfF6H2nail0MisK
	 NFwJJucDVPOAWpwWFxqJzho16Hy6tklGLi0meN2yZxziAliBIbeX+d6mWwhfDVxVA5
	 UDFXK7Ori15mK8OOdL3m5KO0vzijKctonkqJy7zIhAw5CjBl37A/M0c6eCXF1o45wY
	 X249euJZUxIxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0FDFC41513
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886016280.3102.3852893939762158420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5015a1f1d980cb4116e35324df3ac0cf95daffa5d54c98148b98806e3711f9
Date: Thu, 20 Jun 2024 05:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718860162
