Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B99F1581FD
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721826954; cv=none; b=fQaCsHlzkT2a3z+Lzexr1sc2gnCGhxlh5ugGWm5pYM0wiXJa8U6/Q3oqLols5bOVXZifx8eVs4blhSMaLcN6AjNfILnExqWX+Ijis6S26TRDhEKVb9SfcBbuTyrLGNfJpyME7i5eohcQyR4ZLZ0hvTfNbdPmQIXnhQ8u2WhaT2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721826954; c=relaxed/simple;
	bh=m6YCZeaS/IvToopGfS0JVMi758VANlF2BeoDSBJehD4=;
	h=To:Subject:From:Message-Id:Date; b=moYWbm4b+33NGFOjkXmbl1B9ubbs1+dNnZxytSFesrSQvnev/DWw/9LcsWWqV5x/L+wZuYQCLNgXExmIVAIknfm6g6XrAvlzW8WiK0GV+5hAvnKXkR8JbXl/qXvU1AQe+4M2yUcpsIt/tJ++jl5hDg8GvusfPOYaQo0Te+CYRio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAFtxJQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAFtxJQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6868C4AF13
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721826953;
	bh=m6YCZeaS/IvToopGfS0JVMi758VANlF2BeoDSBJehD4=;
	h=To:Subject:From:Date:From;
	b=lAFtxJQISA0StBZJ07FBfWPxr8GoMUFiKHnq9gqYuKtpe8JJ2y2HnoaKmjZGFQeDZ
	 r1GiwozdNSCoH05agi4Wm6iLHxN31ZOShRKd7SeSxw0mJRr5tQNw9TwYQvxGfr+VtH
	 MF2+LMBYg4CdDyzcjEdI4rectua9c2Ua2G5/0FGuuGFUlJnCl/ObGG4D+gxMLZ5qLw
	 RTVa7dYtRNdPl3cVnskoUUB/n4Df5+vRfKGkOEvj8LHzlZfN1hA0sh1cp5bs6F6680
	 YgGQD5AnYwZalMYcxCKULMjJora7hYGhFH7jE5VmF2gfQgeE55PYWGhU3GCBGUGhWw
	 tAOpZCjVESE/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B94C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172182695365.27283.3436227917466432773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90aff75035bcbb32eee2d47fa76528e45a3494f4d1fb0dd6d98502231ff22d7
Date: Wed, 24 Jul 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721826953
