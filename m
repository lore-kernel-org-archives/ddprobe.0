Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4451170836
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782589114; cv=none; b=eW2b/whwdTKzotd9f+BZ6XpnujbTAV7dIcXSsNLtyLaPMdlBzsWpgZAqQ0/zFUhzFtlfhVyOoIMgkYySCQqRnc4QwBwb6FEYHbdQ4xBRFctkcIjyFLYiuJ26A9YayyvWxqHygrXZdj8cD8XClCdazEbZ5tStKbXNYyyMU8vD5PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782589114; c=relaxed/simple;
	bh=jS97sHkbMkT7HAuQjNKoNnFeIlgO2rQiWB9ONeNgwFo=;
	h=To:Subject:From:Message-Id:Date; b=a5UO8aborU/asgkXDombFGBQ5m+pC3nXl1i5PYmcLV+Rxru0TDUqdVbnSmSnIB1SthsT8Q2IhEyv3QIg/cCKFpwWhOZcUq7KQQwxJSbNiElwkwIlhff38C3syKCOMW4UydUdGd3qG5+8CncXZqS1Wdy0W8SaIPIsNm5LmanVUFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBBeVWoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBBeVWoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FAEC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782589113;
	bh=jS97sHkbMkT7HAuQjNKoNnFeIlgO2rQiWB9ONeNgwFo=;
	h=To:Subject:From:Date:From;
	b=mBBeVWoHD94sYfTiSQAo3BHL39ZPLHaicp8sAvKIiiEPE3zezFohq5bbmDouMswCf
	 86kNOrsgog0esI2HtE5WxLAhO2rpRZeHJyaSv0T9/pgkIkl6rBJUYYpO9MRop+36Hb
	 jjWxwesw/Val75BMXuruWbUmh8IyYmRmf/EbEKCkrd+BX4UWcYpls+KHXCEkCkRgSu
	 uOdEkVCb3FK2vcQhGZkgISqYOPm02F2W5KnPSoGOglaocXz97k4NpPLxiuof3Gmy6+
	 Dpu0bu5xs6ZUdZhrCGfwlJRYaLHvUSmXYVoojwdHY4XXIPJJRBnOFVO3+Lc2q0i5BZ
	 8WjRFm1f92gIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3324C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258911369.20345.17401614085064741135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49ec00fec67de634f4657666c9a08effb83aa006aee836819c93ac4c0a2533f
Date: Sat, 27 Jun 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782589113
