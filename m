Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1962256472
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774587894; cv=none; b=j2qM74+YmK7auP3OOLxwKwgxJqTVQofWMTe2xDxGP77Og2K2mGAPGZc5DNCXmal6qKYTdWkAEOpF5hBpVjuwA3uF6D4TNRNn9BeF5QxFUyD/2hefXDzcP7FFMAYt4nG7MiilgTXujx7eX/2drFIG5rk2ApTa4T90UkjwUAJoUUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774587894; c=relaxed/simple;
	bh=cPBkHvYi9nc3jtcG7u74QSNqnMMio1cettw1Pm8ZJyM=;
	h=To:Subject:From:Message-Id:Date; b=ILHgBVn/ISpzsv+39MIVAn85ZT1f14V9PA4AiKj5tZGnwsUvXwjL12ssz2bw+WTqYHoeA6twFBmUhermHp+6aSL25A6boQ4bQmU8rsSuxSvantfTjEkX5Pc8tonkVj8/Wo6rFZ9bzZISuCXjsFVq1WjfvABj/4jTjaGQ5GXhq28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apQIptHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apQIptHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8B5C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774587893;
	bh=cPBkHvYi9nc3jtcG7u74QSNqnMMio1cettw1Pm8ZJyM=;
	h=To:Subject:From:Date:From;
	b=apQIptHW1v6bYrIjM7tHSiJlNMfEsry1cxWqnex+wMtSDuPzP8/Ut+Q/oCx/NewNe
	 aDM2wCLc43U10ao+FdaJvFQOxndN+zazKO3ar1uLY0f+eio9RLN6390F4zngvi0XJP
	 bIMuFZp7wQJt712GjdJGKEIWkGhvmaiPV+wUte/oz/grWrf9fjSTRhrzJWpxvVwpU7
	 1cpFFkzOB+dNAJuheFuF48Ph6xqkP02cAUm9vn3Rw/NGsukReMaYGjmngYrINJQLcW
	 gYEsbLFHvJDAYX9gfQs8x+Au0hqt9P381/LssDUKazGYAqgaezyzcDIQ8WaEm04Q4K
	 zu0onsSNxx4aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904BB10BA426
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458789358.31295.1668935100301908954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b506b296ffcf98d2e790f58bacacd03c2597cae39d1fb51183b7ab5fe86c96
Date: Fri, 27 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774587893
