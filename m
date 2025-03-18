Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6575209F2A
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742341194; cv=none; b=BXNhL2jb8vrEHxGJJmhmSWNN9QQ9mXLjF8XDy6VfDquApXWXyt3VjGpkqROMXCU9pPR+KFMGh4MHMlYCctPJ0s6GE44T6uAH+2xQdDpeZcoBS2UYBUXpbQ+VmVXRwVhfGONhQKQFXIC8sx8/Sazj6g9c006tYkS+rt0034FfRWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742341194; c=relaxed/simple;
	bh=xQcf3yURxMfNgfzPBjR522Wrymkm2Wan5rTQodmw3Zs=;
	h=To:Subject:From:Message-Id:Date; b=Hwh2cFp66wXDUfhZ2Ht6VRoiGgNb/ovk9lasP9cdIp350NBM4oJFRYd5Fz33REUUNH1ZW8O7Y4QGPLE4ZEBRiwLQeqhNwO4YoQVVbIZMnnmw7jJ91+p02XEu/1OjVm0C3XGy3hUxOL2z3RBBL9wU90ewGIVUHBFhDvjIihOS36o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8BZ3E1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8BZ3E1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDA9C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742341193;
	bh=xQcf3yURxMfNgfzPBjR522Wrymkm2Wan5rTQodmw3Zs=;
	h=To:Subject:From:Date:From;
	b=E8BZ3E1jG/8trJrDj4MbMPAM5vziNDR2SfH+YCATQdyPoXTTPSm6sVHf+W0AL7Jc2
	 BDJsPnBjYgswzrb7EN+ZhWAdpndWM7QxDbhbETP9vsDPH+5QPHQk818PhXIsfwQUIR
	 fqsRAVJam+W4XqaIIX/0vUNdTlAxBvA994oM/ofcfT2i3CKgA41g0AQU7nmJPFcYHX
	 EIu1xDJIoCk26raB5VyvU4kZzk2+b3A7qnXgf1UJZNEC9ip3Jd8mHcfyh0v09uqYDA
	 MJtPuROZ2hoxT+i6hrAEi4ho3o32yveMhpp2JHaFeSQpdU1ms0JUMi6RP/7xeJRhBg
	 uMIXdMq3Cfz5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E1CC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174234119365.29679.1507428206057553192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f0967ceb410079445d22eafcc53efd1560fe43adf47f4661eb4d920a8a801d
Date: Tue, 18 Mar 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742341193
