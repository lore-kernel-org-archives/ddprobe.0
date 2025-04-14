Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445A41CBA18
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744661995; cv=none; b=HinOMXi5+QtD0OX/RFtHDMSDybl0OO25IrM2vUDNZd2mX31AWGyuFVK32gXrL6zexMA6Gi4I5638/EkP6RynyFbQV2fzlsjcaN1P4m2YsTIaMxvD1K5Wt1J6o/71saDViNTUc97KOzf8+cQbcNztJGJVDsCxAUqfbdDA9c45F8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744661995; c=relaxed/simple;
	bh=6S6cMe9f0wr9cyql8GOonbZSSMoazxDUwSjoT/7/KT0=;
	h=To:Subject:From:Message-Id:Date; b=h8lHQVF4TYFAWRdHN2vZdmUvScX5EkvRRR0jvccduby6+aG8KjpCkkBTat61QWANNzqX2aTCyYoiq/DaFkH+qJKW8mkDhaH2hfy4zJkUltchkXFoF9c9sL6q7xGBBzlMRmH0e8gZzug4OlBgk+c0JrnPeI87dyOiWnvMggcAnNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDFnnCgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDFnnCgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F83C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744661993;
	bh=6S6cMe9f0wr9cyql8GOonbZSSMoazxDUwSjoT/7/KT0=;
	h=To:Subject:From:Date:From;
	b=DDFnnCgzYEMJl6OujEbdrhLo7Bvcazmy7Cce6YkXKrLUlLhbx7UGoNU+Z+onufpHj
	 AUP29Cz2ifd3Q1IaoaXyxxRgH07yubAeKYKboIluTZqhoJYmn2pXJp7s3htUeqt1B1
	 okUe7a7b00veXpwy/Q2EvYHl+E1X9leDWUCN2U/b2BjzLf6Tf3B36k/4J7pYMXc5T7
	 3Ewfg4s+H0lwJSX9HWEzKey6X8NYgDa9Xgp07Wey0nE2CR9gqHV+GZWUxoRGlrseA+
	 3iZtAzeZnxZu3dcMPcxCM648NXOc9tIbolm2QIcKaSKQ1/YlmqxujoThDbJjLq33zr
	 Q9TtaLHzBYPAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95372C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174466199360.9456.2581013617919248199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa55836b0351900667f089e280a0cdef074474b31e86d25f7aafb63d5fd1900
Date: Mon, 14 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744661993
