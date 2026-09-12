Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5655D224B05
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789183834; cv=none; b=nDaQ9J9mxGTXl6HduWO067D0jh74nGKx+QzvJsJW1eECWKvsupEzFx1hYnpUxnqZNHHE4SZY2Yj3vTswatpypAU/PinWI2wrSzPhxRWw1thTKlSzNAxLHRD6rNQHiYMlizP3eQf2RGiAHG8q/NWqW+bwa9s9dJRTlmdjeId6gZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789183834; c=relaxed/simple;
	bh=k6/XT7+wz5ADm2oIudLKlYej7Ao5tanyU6aTO3IHA4w=;
	h=To:Subject:From:Message-Id:Date; b=Yb5FkCZdssyDdILV10+AhPSgiw9djq6GJq2hG1QM5oga6A7CnAyz3bTnXQ+/IU96IOD669lyV+vwPHeqYl6W2yg4ZgVqYwkkNNB2XGsP4VNVXyGUT6+1Mm1NkLnrgCYgikNrb7PZlbv+wpFGZWVj0xOmFEmdUeJItwdqY5x9cpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5zIxOgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5zIxOgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D316CC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789183833;
	bh=k6/XT7+wz5ADm2oIudLKlYej7Ao5tanyU6aTO3IHA4w=;
	h=To:Subject:From:Date:From;
	b=N5zIxOgGmoSEajMPkvOJoQyvfTqC722MMCVjXR6sgvubnopyw5FbXvKYuhRcGKuQQ
	 s2/oLxz/KVwAiF4syUPTMmVJpTTAxp2KrzijlLAuqoW30OPwPXX5YVFLa/f4vDICAj
	 GxjoFJHbBQha+I1yMk8RHdv6L10ItW0JnmM6HT+UZABnzjoaOf1xoVekY5WIW75ESs
	 UBRk+Gos9MXbcnapohDPKOuBx4B/atae1csyM3pzASjcBKsqaK2reW4+GxVVgbWyki
	 FXh3UTh2Lz5+5ZAB9eR2HHkVbxjmc2gHggwKlbB6zyZfdCuMU4WhU9CbleXPsafm38
	 +Ul+V7bHlPujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04D0C88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918383368.16394.303484945357660591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3709e609e80344bf7ac26a59c4b1fbb64842bdeb055741f500b34d3f9edf9a8b
Date: Sat, 12 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789183833
