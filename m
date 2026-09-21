Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B423457E72
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789980634; cv=none; b=AwV1cDiRDrjuyb1lsw/idEhJ1qgHY3uFYJUbXLPqoao10xY3uPb7wiGDgacKgALQFULqvYlN9c3/vciggthqScRlQwOur3k/IYnZm9iKeLUSAvdjzL59Ox6PHCXS4n/8CqWtPUOqCF1+Gk7NHK/1vuJ8TtPI3XYCU+/lIxbJWxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789980634; c=relaxed/simple;
	bh=RPFja/1sweSdExUTc+Ox4Kfbe74rp1JI9CMRYH2qpOI=;
	h=To:Subject:From:Message-Id:Date; b=k/NHbmpz0GDa3BG8U2EhLGAXCLA8OcvA+2JNCQ+GTXPb+Rt+GGt+1qZ6UKKN7bOMqB6OqjK0wTsG/OG/Q+C9Mvp6uAAUgzuYrZ1czS/xjDiagEZJj//59fb/ziC4ojHQXa+Lxx/T0/DHRgZwXPNyBlUbs5DXXCxiO1FSWC0/nbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkXlNWV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkXlNWV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E14C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789980633;
	bh=RPFja/1sweSdExUTc+Ox4Kfbe74rp1JI9CMRYH2qpOI=;
	h=To:Subject:From:Date:From;
	b=XkXlNWV9ULsbCOGwkyIkDAfN+jEHst26+06mfETuTFZs54zqNj2lKPqFlE2vef8Nj
	 yN9AQU1CqCUoQe/CtH1UbfkJKFRYMfSO4HPhONwQpx+w3h5AeeqkC/9N8cjrFHht90
	 qrd+uz7nmKNIfcxULabKPw6RZtmVnoxWzy32V5kfEFCJzEFdSn9tXKbpr5vpql6O8K
	 RQDBIBItORdrm5Q51SA2nhsTBA0heUD2u747dxTXrTqvvAnQeTQZ3Mc7TQoBI8w8Gn
	 AEg/m+uwPQJ5JpRR0jhazazEQX3Sg++GBSTjuPw5/cHP1nzFZ4TIXW7i1L+k7wsmrc
	 30P1FbY0jF3ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBB0C982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998063370.22645.489028842684709809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c260e02bd2e7c507366deaa073124b662ef257f8c47fa5dc3e4d9576e3e6945a
Date: Mon, 21 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789980633
