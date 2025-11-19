Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354C827464F
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763587914; cv=none; b=k8qLbRIqPv/I7A0ifI8k3JxVmbha9sDS8UskdA13RQSLhjoPIG5qdk6iQKq052+n0qzVtbsXZBHQ+ou9fYhRxakPMu/1EzsAfZYv7Y1aI9TG2MqegmyesFTGjWf21CNjoamYzlxQ6ADdAT1kJdkUO35FnBq4eWY6eS1vFX2+a4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763587914; c=relaxed/simple;
	bh=wrTX+t+Od+VDAUFsZR4y+cfQwKXcZAZLGMrhbM6HIRU=;
	h=To:Subject:From:Message-Id:Date; b=ezRL13vkAn3aq8A/GE7FpPTBZuFbTFRWeZdapr79nehUd6u60eeK1a8uvn7dirznlVk8o7JmHR548efEde9051jIh4ma4ZHO2xi4HqcDBiCpZBQOhCT7zx9gZq5FwvjDVqAHGUPq1IA7WmdEdz1YZYq7xK+j4/elJL+63uRXNqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVlB5GyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVlB5GyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A494CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763587913;
	bh=wrTX+t+Od+VDAUFsZR4y+cfQwKXcZAZLGMrhbM6HIRU=;
	h=To:Subject:From:Date:From;
	b=BVlB5GyXqvU8Fuq0seBIFwnY80/3XDAHjLCKRmJEVX372JzztnlqrwmnbelTLKJcX
	 kri5JMTS2Bo2/MJeqXvtXLDFwRj2muWYVWZSn+jC6CNM5IMvXyIseS58Lv4o9EfxZ0
	 FHyqugAVrjkY8LpuK82EqSF6RvrPvuxK9LI1Rhp5BcFLLvZ8nWS+W3eEhGifdv+6r8
	 7HrXnWL/CU2gAyXczOhPiULD0Y27rgBcF2/0qL7Rz3UeJ3WERl0+2kDIuXZmjc9v/G
	 g4tJZ2OSa5hGVPaYHo9YXyojOEgPRnmxkLoDzQNSgCxmAE8//xLeLc1EDYfYJMzDlb
	 Cvo1lVO3jNrvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EA9CF6480
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358791359.9566.6503387655536217509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926ac8ef97567c8a0bd3b5cac5cb8550a1fef18ee2010d9ab70be1508a22522b
Date: Wed, 19 Nov 2025 21:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763587913
