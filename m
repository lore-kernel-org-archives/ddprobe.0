Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1DD535D4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719836123; cv=none; b=Cbc/DgwKnkdvByfJQ8g6eZVGFq+Qf0B4+SReX7I5JQUr3lERqPS8CPNxXnxy6xAMvDDrDNwZLuGILXUKnwpnVBPWEPVkse8Xi8jM4o7Yvc9n19uH4RdHPwhLV5HSugRyZEZKPkxFmuwJ3D9w5s7WsSQAhKnklX0r4zBxvqjU9Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719836123; c=relaxed/simple;
	bh=wJNGh9v3IBQiI8P17n3RZTWtbhrMcg2pP7LsQ22jutc=;
	h=To:Subject:From:Message-Id:Date; b=bEXOwujgfdNb0MKgK70JcuWltkS6mhb7b+dLWbGiyTLR5TWEeBmmKQXfw42I8BZAqyZ100GR4tsrXKOj14P/KuEueEei72dk4/exPgQiM2B45ChYAT0PteXck+8NvLAryO36fDaDPj3OoUrYHjuX7J2iW/p6zMtrT1FmYZ8znik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkdilhyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkdilhyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AB3C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719836122;
	bh=wJNGh9v3IBQiI8P17n3RZTWtbhrMcg2pP7LsQ22jutc=;
	h=To:Subject:From:Date:From;
	b=XkdilhyUrIqp63impN3v7SyzoShVI/Jp08w9oTIYw04m30qYPM9l/JfOnAnHvHW/O
	 ihe8wvWvamZzPkkX16G+68yHY/d6F5q95iDgLSdrzsyLiNQfVXdj37HNNIuodtiVU4
	 6/khsbz+YeOvHUPYdD0Of3oJHpIzotyhI8H+MVmjwrVJoY0MihPuYiw/aNLRh4uBf3
	 Vmx8cEpf4L4Ez/WcG+toqJXEWfqfxZVJIQvlY/aG5i5mw8FSG2q+dFzK15v0yk8OQ+
	 q35in+DzMuAqhRwCYk+4eZpHqlrfh3Se7ilxibFVXxjbF3qBtPerZRTiTFI4BK09LE
	 x/B+zFIQFUeFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2743C30653
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983612278.4379.8191062667646809386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5c83220e6830ca7c70762824db63a1fc5391cae4d6ed583cd327ed41bf0a40
Date: Mon, 01 Jul 2024 12:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719836122
