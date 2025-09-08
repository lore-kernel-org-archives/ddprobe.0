Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAACF2F8BF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757338793; cv=none; b=hAQ8doJawrh1Mx8hPxUWQQmQAmhldOGpl65pmWSEcJ7YrnhjpJ2TPoGtum3/ZIV9a5KZzD6KTl+pepCCAFtxZ+IgeOiIsHJGzIg4oUL7KVHy1/sTjGXReDQjW25gHiqQ49IGNeWurzXMhVOOb8zY9Do6rP03nW0kRZ7Bd5QDr/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757338793; c=relaxed/simple;
	bh=z7P5yFRSxUtbS6kJS6Wuja/6kFfYHl3E34w+NrPzgr0=;
	h=To:Subject:From:Message-Id:Date; b=MNnQLrygcZVXU5tZbKhMV+kflXeUkDfrp7maPGCDElpyApLm+yulktzm+pgFUlvr6dZYuBslCThanjB7twBt/6cwx9G0oKTnwdRWPk5cQ/M0fldEf1DSD54AEe2Yj7+W306FKPKPtY/Gke1DU+da+vVP6ufxOsj/bTlAYhdLXxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzRcKU/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzRcKU/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B5B0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757338793;
	bh=z7P5yFRSxUtbS6kJS6Wuja/6kFfYHl3E34w+NrPzgr0=;
	h=To:Subject:From:Date:From;
	b=BzRcKU/HPMBjrwbFw6WzfTY8GBnot44oarIaRMYkgM34ANRMOAMDw4GENCH8YBXua
	 e4dwWQxqXg8BU9ngTxzp0jygrdh0n+Rij34GNGQwiXbvbqRMLACzDqUjwu0tYNLjPl
	 VEsXxH5ot48TX8J01YOlo20UT+oefUUU+UlM2gY+E0HnGhxGCkC2+oDp7K5NeDGNUI
	 tkXRLEr06foTSnWrrOHjDBveam50E6lkY2iuKbeGkIYZow1QjuffxRtkvHcpOIco0T
	 fWMX6tR3v8/GolMo2BPZqiniJ3QIgcPwjlsOOVMU5rnZ6+ctkL7sK2S4AjxJIiGOyN
	 IMxP4znz0oSyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0B8CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733879357.23619.9937195851402767664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa5a0dcfad5cd2331ee82bd2eb039b934f0f430c0a64324eb6b2f198394e4ac
Date: Mon, 08 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757338793
