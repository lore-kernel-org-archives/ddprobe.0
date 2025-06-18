Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7C32EBB8F
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750264794; cv=none; b=Ur8atapQXkMqNALhkw3kZW2er45EJOLoV3uafl/oAgkNhqo5QuM2p0JIcigECGhaQe+Jk12Iw5rQsoFKv+RkyH1HS7wYdovFWir2SBhc7WbEB69tPVgFzPY3PQZWO8uMozhKeYAtJmSf3dP7b6dv23oVcMHL4INgEMhF/++ZPzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750264794; c=relaxed/simple;
	bh=TF3Y6JrViJxJPsjKAQj15++YvZJv7eWJ6cmyq5LnLVU=;
	h=To:Subject:From:Message-Id:Date; b=lnlRoZ1JdifoDeR5NUAEvFLNRJeMQ+6s2fGAw6vJB5wv/U8MM7j7rurMrZRJOE696qdVX3Xgaf5NtYE6THljHZ+r3CbBejUM+gdyE0V/zRUf7JovtzQ45GOTMCPA3bko4yMulXE0CoV370dmpVuFTCeeQzWSoL5zNTfzG1nPJrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdmwM+l/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdmwM+l/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57D3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750264793;
	bh=TF3Y6JrViJxJPsjKAQj15++YvZJv7eWJ6cmyq5LnLVU=;
	h=To:Subject:From:Date:From;
	b=kdmwM+l/B914j6P9E2QUuZA84x4lYZCcZMjkiEPn7XuEScK9jcOMIag49jzSIIO7j
	 kgspQ8tlWi8vlR2KPZ7uA7lfluHnP8HI+kqXCrNcf3eCGLzh3xc/7Ld3qXx+IHxt3P
	 jE+MK265N5WRnBRKpGn8CRttyn5PNZlQKjW4aAqap3c9Ym/UzSobHQDPwk0z4l7N7d
	 GTAnnfBmJaohCyWiUK6yJ1AccYAIbyhkhHH/yVRRRGV0mYmBS2R1AAeZ7uEQq6nw5a
	 0iI9E/1LmjD+LrPyRT6TQlbwIc1TYacnXVOSTFrno6zhnRRdub8Iln4uDOKJqKQMHw
	 1ZO9rD4zGsx1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9044EC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026479358.5057.7249620603634176956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4dd4af206894bff203ed0d0415e1517fcfb670642df142d3ea43301b7c8307
Date: Wed, 18 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750264793
