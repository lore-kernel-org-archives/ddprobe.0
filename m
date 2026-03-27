Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146F71DBB3A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774586094; cv=none; b=G1hCZJU277P4lRUeCEEUO9zPJJ33tlPGxDvMJqWBHG+KfE6xFyovNjyxNfiyifYZ8wd3/WoYG1WPrWOErTgLoWokNCHFrjuaTXWL0RLVOISW3wB2/CZ0xii2ZcBs8tFaSHlpE28cTkH/+375vtAqxgteIYHf9HHwiHq9BHH0UEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774586094; c=relaxed/simple;
	bh=260L4gMj5P9obuxM9KWfbC43DPcSgZpmi0Mquyw84JE=;
	h=To:Subject:From:Message-Id:Date; b=oxZsiwf/J51OxcsVG/muKdPp+RBcZcDB/aDXQhnBCVwtRS1tGKZMfdZhL8HOr9LAfYO8szowTGR2OGUZ/KBcYreLF71NgYBTCEcT9DE12wYFvOy/kD4gkV7xVkfj1BvrG6YLtieVFyDkoH3Oj0oy4GWZiIeYPyrJ5ZsD+Qthrtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWiX8X+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWiX8X+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A795AC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774586093;
	bh=260L4gMj5P9obuxM9KWfbC43DPcSgZpmi0Mquyw84JE=;
	h=To:Subject:From:Date:From;
	b=GWiX8X+bitFqnile3CRPT+TFSYAsQGgeqYuXqdwEyM0pYJ6QlDY9mZqaM5QyQLgu3
	 ouZvd0qpJz5uTtIih9TlqOXhWwdsx38no6s/a+0EjrRXcu5bmXockZE5K0hm4jkLwX
	 PL7749lM19vIw5R4vctYgZduvv3KYi5hBTjY7qncf1hz7JMxFTV+962DFw+aFTkIXk
	 dkybWGm/zsuoVBrWUkSNt2EgDeQ1RjHeIqpal/clsPb/D6BH5kY/hubkOdBcwnwp4m
	 p9nWbMwdhP2PC8zFj7UDOsuDzKt4sLHrTYIFf5mPvDHuZUY/WFLrSbZ5cbXgPQyM4w
	 EphoDY6VXYuzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C61F532CC
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458609358.14664.11070671415941470642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5268fa277a37ff929d6dc160d2108b2e93a6f9322787a4beaf2e7ae627b479b
Date: Fri, 27 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774586093
