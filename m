Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C852288D5
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784525914; cv=none; b=AdrQjOYHThf+M8yoImkivkSdU+Aj+8o7Y0k2H4/W4fgYu0/NMC5dDTqzob2BGk1LYoRWqLqKvnwl0uAXOfc3/9RiOFjGh4byNjvdYdgiPV1XkSzE6twHx4+v4j8joXFGgvRWDLhIHw8EDhg6DcDk/soGok2SAnzaeo+xd8F4e4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784525914; c=relaxed/simple;
	bh=pVFnkw/89/oovbpGuBdGQDsRXqWVuj31bBrqUhWkcbk=;
	h=To:Subject:From:Message-Id:Date; b=cGaPfvM/WTgyaf545Pk6PUYKEw7T8SeTmJE4AlIDYxAGHxT5J3XiINsslXNACsEY4w8wP7GIuzkMkPJvQp7MYoV/jmn84G+kQdVVYGcT0DIVzG/BzNih02NgF3nvs9wEG5W00wUe0SgPuq51Ry69t7uQDyUezjvvE30Cx5MGERc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6YElLvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6YElLvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7C0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784525913;
	bh=pVFnkw/89/oovbpGuBdGQDsRXqWVuj31bBrqUhWkcbk=;
	h=To:Subject:From:Date:From;
	b=l6YElLvJz6dNGuNrAk/afvKCDqrB4q4jrefv5ihrB+JR4hQK7j6OcryKlK3S9CprE
	 Yw1I3rW0H76X7st+CoRxYaWHONpxJuTUe1s5Xa5EflSwbddm0pbj44ImvsQcRRz77q
	 DNE+ROqeLwIXaGWVGwvTV+UiX3ci1jpYoYvdxv6LV2G/07DbH2sg9H3W7esNYNmxYz
	 4HrNongum1edhskz5fiGeWoO7Kq7MxdgiP0mM5lFJ1Ul25QTzntVmnpG4S5Z042VwS
	 yOlowb/hH9z5NGi1QHliXKLIrOKCyZ6AZdSkntX6oBAEnXTvVplo9RR1gZwx2pZzhW
	 aMvjvkt5g+dZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6A7C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452591369.14583.8907013416657693884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53dd147ad7d607a707c4894212889b9487642bc2aee0f16df873eb5654813d68
Date: Mon, 20 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784525913
