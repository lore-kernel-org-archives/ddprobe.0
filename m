Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDED173357
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729082154; cv=none; b=EXui+Fq+1N1uoUMlG3xv26Xp1djNSLI5ZnyECKrO6unVRKIczjKQ9XkuQz2MWyhuw+QE2soXOk7kjkdteyNllC2AHk/wd4bGoC3NblFMdKyeDo9zn6zdZoM47pr6AsHj5EnAlwyAYe2RS0T6Bx7KwmRyQZWSO9olnf2wJx+b4Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729082154; c=relaxed/simple;
	bh=0EGkmqwUbH/rS/4dZPCOVKIBEHZHcP7cW2W3UY9I/bM=;
	h=To:Subject:From:Message-Id:Date; b=MUmHXXWYTYQenAapLhqSjUhDiDvEmZxjn1ji3o1nigB02JLn1pzw8DyJEM8rOkCv4Q0fAf5bHLpeCf20ZqiJRFKyb3dHjoKj1eFpdoOl+UDtvULRc0yapwSjj4PX/jmr4ifZk80l1DlMxDC2vgqUtfJ93j0G5ZklgGgeAZXST6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbLRc8ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbLRc8ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC04AC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729082153;
	bh=0EGkmqwUbH/rS/4dZPCOVKIBEHZHcP7cW2W3UY9I/bM=;
	h=To:Subject:From:Date:From;
	b=IbLRc8ao/F+sZnX+CIgnQyjnNphyB8vgwUSp5WZzI4i1iOcCRIdiS5bHb9WSWA75u
	 um9ZMMF4HZ8JqaSxkpxHzxxPhvBD7Z+mes5gAmHvM8gPeZgpuAtNcWDUGPNXdYoHal
	 F7Qbxpo7W5f59U6B8xFLGT/2yUHq42eTlGLpZNSuyOTo3EXqzTloE+3beU7IYgwmkv
	 bakNaJS3jvwA4eZtaFgQxnqJbGOBXXSQIe00HOgXDQRhY0hJlWpc1vYS7E5FcT3j8L
	 XNjg4hZp9HvKkRuahy5QqO6HkZjx0feUsLzS8k4wBBPcyik3Y9RPfhUzcgkLFp+Nvl
	 tLnwz30f2eRYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AD5D1AD53
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172908215361.26287.17087676733639942399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80a90cd7fde7661d71fbf09546b3303507c8fb5117f97afe217b521cdcb8f25
Date: Wed, 16 Oct 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729082153
