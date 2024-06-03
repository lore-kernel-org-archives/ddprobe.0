Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162FD391
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717427123; cv=none; b=XnYBjIuJRwfeGQvKYzrHZDtSo6/Ci08RDkFRLXTydcYje2eOZnwjYCcaVEePAIX+hs+qAy1uTYjTs6AYsC59MlI4C+d+8zh3i+mzCQcG2QYUhO92LwRBBeZ/8JQWqnI9ndQ7UVDvPgUmk6C4SmGb7Obbp5HhCEigrVSqb1mehwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717427123; c=relaxed/simple;
	bh=ZMeev04ufOt4zb5IcDs38vPpXzIEj9m1ZnzkcLftNCc=;
	h=To:Subject:From:Message-Id:Date; b=N05/gI3BRnbBDjCXQFhtsUsY2I/BXhTzr48YTLKKI7af2/2s+rfHocPHsab6JiF8yVN5RnfkG0/pMeR0M88OcX0HZY7XAc5I/84a6sHPGmucBsdn/BagS2A4cZjNHLiQW8jVbWGzTMHlpjKuVrDVabLWGJBggJp5HZgsb0wdTwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uag0YF//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uag0YF//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9D1C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717427122;
	bh=ZMeev04ufOt4zb5IcDs38vPpXzIEj9m1ZnzkcLftNCc=;
	h=To:Subject:From:Date:From;
	b=uag0YF//rR6BHjOChvOXw1gJiaBJ+Eoxa88n/1ecBRx86FuiiXxb9knsl7T51Sl1+
	 8DUYM9XlRHKTJLLp2ZkrueIfVbnG54LGZZPbMsuDcGgD/G/vp5+he4VwqDIc6mL5Hp
	 Lr7Tb41BQavrvvdzucX9TqG0OMjjT5QngxIKoc3Go2W5slcuVuP6F/gomS9DmBxcoI
	 HtmisxnwtnmecYrQZYrCFCh06JSAp31VowIqQSnJTA4EP4XqYLvvJaT4sXVh7jSBnQ
	 /46Y7sLmq4dMNIGKbU1ZehGkcDjpjzYZpwloJ1QiYkljssjCgJZ6PXXuGk839b00cw
	 JShZaWnpMDjqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5073C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171742712279.2781.5263698840237367436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb9e822804e66f838c54e17dcf042a0bc98868134e002ac81c7be0bb90072d36
Date: Mon, 03 Jun 2024 15:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717427122
