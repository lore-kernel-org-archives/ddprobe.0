Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45355916C
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709076497; cv=none; b=ujDWf/gI9RcWbGe7wa4xTgezyJbgDfqMi3cVAnJI2jQofVWN8zz8oB1JGJwuZk81tzjxXMWVTBiRs+nLBwK6xBoEWQOBToqHlO4XvLtXXGXATAHtyf7Kvx61CUwb4ttHOGsnnZWyoOmYL7xPuNwJbwm9l/NEeiznzgwSTnGG1gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709076497; c=relaxed/simple;
	bh=6moCN+BMRBeHbu+mcKwupJzuVvojHlA26osV4jz+QlQ=;
	h=To:Subject:From:Message-Id:Date; b=HIXx0mnJKsi67mta13kuByaNGSAmDh14ZtatEUb6EOyEmnWVVSbwTITMYU8vX9DvOZQC85x76BaoB52nNW0JyiMzYFnJp9BvoWWWSFwJs4ZU0g47E24mSwlANErsUPcahe9DOGuee1BKpBfTTC7ImzsiWU1Vt0MuR4uIjTP+07s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7vGabTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7vGabTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC7EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709076496;
	bh=6moCN+BMRBeHbu+mcKwupJzuVvojHlA26osV4jz+QlQ=;
	h=To:Subject:From:Date:From;
	b=F7vGabTPqJudqHDCmCUwJdUe8V1IIIYBh/LnqchWDSnJXSOJgwBxKqiUYMxdXbz3t
	 RqOIkaNI0D43skdC0d9mAocuCyxpC00wGRIpo+FM3sqe34mkO8U8SskdL4bfrBwxdb
	 KcanN+ADnVr1ZWouTfoT41yJ/EMh7frukv3nLztjdjgPL1gWeWEyB+uKJikXKc7gQO
	 oh+2w9o2W0Egba3FR4NQfP+ErGcFZDWkt4EjFCZ1URjn2rlv6JuTigBYSDsJcg1FGq
	 PZs1R1WfpzyXfJV0EUpNfTgms+Yvu1H/cZUvJaAwiykHDeMUW3Ex8FEp9Bu2Gqdkup
	 rJfHm7k800xMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6114EC5478C
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170907649639.18231.9945362474952346040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b717b411f10e1413efbe2c9be1ca4042017a01826d042775717e7582f156c6ec
Date: Tue, 27 Feb 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709076496
