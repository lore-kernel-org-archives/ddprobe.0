Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D38C7174F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 18:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723748154; cv=none; b=KY7rqLZBz0lFJ5WNOE799SVlRlSVXVj+odLUgDRkSGdneWTduEf/R0arrahTWuBaSoWpLQnNljHzZ7nUOSqxbp/5UndvWB6hTUGGxe5Vdo/p5ysZOcMIHFXMy9fYH9Dcl4jtL5xHZAJzk4g3gXZ6GQfOxxe9OEnBMJ6GPZkNuq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723748154; c=relaxed/simple;
	bh=4OoO2N5JpUP0FCe9RUZroaYjQiXV11ss2RQJrR73lbo=;
	h=To:Subject:From:Message-Id:Date; b=BvbOvgb+nmgsgfOiHsW8vBqGgSL3/pPmNhtRC7IYvdc6PKyKsznigTAD+/SYE9xudpOsO8wm8sen9QJcmbcWbo1VE5F6i3+jGQcxWL4iiAaguumzm1mZdu9I89CKgVJle4jrwfe68uc9eTo/kTZb1QfhBDbWqi02sianzXU+TLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyfNYz37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyfNYz37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECB6C32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723748153;
	bh=4OoO2N5JpUP0FCe9RUZroaYjQiXV11ss2RQJrR73lbo=;
	h=To:Subject:From:Date:From;
	b=OyfNYz37/M5/nFacfN1++EhXPM4E9rhTrGUdJsDj1byWsQ6BopoWwlIe/+OmPE5p3
	 m7MbSUisRndww1zjNNXBh57XqmkLht+YQiY5at+wfqsKESlFWxqcbEYavfgnQ9VaaH
	 eLMGtA+z6s/0fWEt+6Nq+PTLAY0GyrEUYxu4wylFAJcA8hpbGxtTfj1381nu6mhehq
	 EntWH+BOBW0G9/6aJD7oW9HMhqutQE3/NUluBOH3DHz+Rsh3SQwO8zFAsR+gM6FR9R
	 M6RD7dJz0UhnYlk4HJXq9N1/kDZ9oHhL2SA09Sh+BTX2OGLcegyMof1Y9K3iR1kkkq
	 zN4MAkwFk6jrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FA7C3DA7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172374815369.32194.17290539650193548863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e430aae0b27ff8a632d2db80144a96af99f0b9a9ee2c97f0da9aede3727c4907
Date: Thu, 15 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723748153
