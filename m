Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132B11E570E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736247354; cv=none; b=Re9Gmyc5PTL7DkpabXswaLOHhlqG43/gGvqHuc04xOr/Ro42pvzWpJwyIK5JvXEvubqRO/wCFWThxlgZqmnjf/BPPP/Eoz4AWGUTfPElHgxw0f3LOArQrdBZPFIaB9i0fid0MQVEaaGUUGXbtPTkRKaUw64nXB2Bq5oVws9dofI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736247354; c=relaxed/simple;
	bh=AO681pgqKOwxFOl1O0dTmXCTLjUj5T5bD4FcgoZDeg4=;
	h=To:Subject:From:Message-Id:Date; b=DwXe27//40SDzevDioaC+DblS13xzGwRY4T6Ohm5DRa0Dlak9cDNs3L4PBdZdDpqMdudF4vPZTgdSyQwrAO09C2NAj2adC+IamU6Hnq+Se52fHyfJVhKwgAmNcwU0gBHZypcz+sP1w+VclzwoJFJYNQa7lCi7jBXQu0SD0BrTH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVkvnllE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVkvnllE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A636AC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736247353;
	bh=AO681pgqKOwxFOl1O0dTmXCTLjUj5T5bD4FcgoZDeg4=;
	h=To:Subject:From:Date:From;
	b=KVkvnllE4p7rF4cwyzhmEotGGXCyTJnE1z7wZLRjdn5J3q4AJ/RE1IskKD6duvMf/
	 ovhjZ0IDnM7gzyYx9NJmwLyr4vD6m1kLan6Fsru8SihLF17NNzyBhmhWPB+Tm3gxjG
	 o5zY9estqDeMRWBjACAeuqciC5hp97wo0UBbizU/lYkuYWa+5p21X3vjwG2uYqSQtl
	 caJl8/OH2Of7tSQKTvTlVXpKkAZd4xqRzJlGFdfgMSWHmlvD84RWKH6paBdvQY5FFI
	 EGg9zWt8iUInwXpbWWDqHlP7jT/YFfwTWgx7HvV9syANRlmMOdF2qnUsDspxBN5k59
	 78Drx6o02QYAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B7EE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624735359.24735.11780624412121415318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a73600c4c1a1eeda37ec7518de0ef7b6786c5a53cacc2a16280dad35b098ca0f
Date: Tue, 07 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736247353
