Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA932AE8C
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 02:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741055934; cv=none; b=tayHvFrW3ytoCcuKDyi1FDHOUW5nVkfChjcjJCdh8ytjWoXdIzIDQlF1eCKavx1p0hJWvA8Uy2naN9KQYTHnwalOczcXp/Rok9HI6LdIw83ybdx7iNqZGdHFYumrrWw2NTIGwyD2zevUO0X1YhD94M+f2qcguhb4T2JxB/FKfy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741055934; c=relaxed/simple;
	bh=mVbKniRUwzLJtAZouNwmZ8ZhPiSKwyoO1vk1pbLeJiY=;
	h=To:Subject:From:Message-Id:Date; b=ZrtCGn9vO3zfd4cUMSMDM4exIi627znxPLKuwRYUwyyFl1hCciSJvViXDAkiPbYn8viDDPvKyK1wCjDi0sLSnMlLAhnLlSEeZO3zYmqGCyGEkqjaM95KvBT8z72ggtMTRSl6ZBVpt61I1Fur0Ynndao7eJDk5K38djiznJ5R/5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nkq9VJBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nkq9VJBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE2BC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 02:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741055933;
	bh=mVbKniRUwzLJtAZouNwmZ8ZhPiSKwyoO1vk1pbLeJiY=;
	h=To:Subject:From:Date:From;
	b=Nkq9VJBCK0Jqqsy9FP24cqq9gZU0Gf6N/03aOBK0HzPU9tN3L0VgS2Sc4U53LyHea
	 b8aoatM2DEGRBZufecPz8I5K0KB+agA6spSnGtHSva90r1P3heo6xAVs/Kr3LIOvEi
	 9yLbNylSEvzsy0kmjn8KJXrRy18FTHKceUxAYHvrchHkAbhUfnVDuwi/wRo05BK3N4
	 JamB3hyOP3hypfxAH3jSmpINEFk9Jga9NSJhtNbzgs4W3jjzw0mo0PAwC4bYMyj8d6
	 irO4xHsMkebUzby2i3TzsAwerY8abjvx0FFuf6OO2TgZzBN8etjsxCbxfg2liB3lWO
	 oUeUc+GYQ6MrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C20C282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 02:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174105593360.17731.16080171721269169043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660073aa79c8ea15367925e6d1561f5036c3287bf6505cb3dcebbd069755555e
Date: Tue, 04 Mar 2025 02:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741055933
