Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2FF2BB0D
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723824353; cv=none; b=q8AzrWR8EnJbKI01pqgyy8QT2nA/Sc5YcJv/UAZXPcuA5TzOmmSX3JsDwOyi6K3HgbjBwPHeebe0MAfbspOt/8ShuiNIaoHx6xHvc2JwRI1qBLMi6jk6qCNraCjmr55SV+Vd9Sur/E47TQETw6VWLgtvQZCzP49HaERC/5E/0oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723824353; c=relaxed/simple;
	bh=43taOxQB1RJVJksoRTSTQ4zHnjitZYeCqKkfWqMzRzs=;
	h=To:Subject:From:Message-Id:Date; b=vA0Cprttyqr7cSS6s44BfSlLzrSHxXUphkkpnWIlf5lRXdYB1ljkkJDGVTTJ5z8WsBPcaXmQkCkl9quzDx/yiqSmFwpMghemhoaToBvE3DBV8RAzqmaZByzJWBXwyTsj/HLRH8dZLcMMFyxSzv0i3HQ/JPni7/5vXfMOuLqTJiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNy9PJ8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNy9PJ8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E4FC4AF09
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723824353;
	bh=43taOxQB1RJVJksoRTSTQ4zHnjitZYeCqKkfWqMzRzs=;
	h=To:Subject:From:Date:From;
	b=eNy9PJ8l3mEOWpjTkcmQYRTdcakMh/IC+xn/IsgrDchJvew9X569r0bZnOgkGRroi
	 pTV85VhCBl95FEYqf44CpnxI6KKO4ptUCiLOOj5uzN3/ICD7OkXEDg+NHcAu6jkqM+
	 VZAyIZvWshcVYEAcPpURSv8QB1BWwv2gQzfpu0ifeICo3HRwYBew51SCohy8Soclj7
	 i+UwS/9JHXhGW/qfKiAi1wLjTuqr0A5FGrUW9asSKPQhQW7mcOCc0GSClnOYTvuhB8
	 aTZKXVyKSfnaueWu8w11N1FznioGj4OrPwXyGFhwdsRc5uiC2xElGYYYj9RDL1WJem
	 /7A5RsMQkowCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99403C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172382435361.21771.9668553127900585722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d139040501a892f8156d6eb3474934af01d61c5bd7766124bc6cf8ae6fb4c79a
Date: Fri, 16 Aug 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723824353
