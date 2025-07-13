Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B7322A1C5
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752440394; cv=none; b=YCv0YZwxa7G+zFO8GEgf9J6uyVqniI/2wVGDm2P0DjPxW2Vi4BaML12HpvvYRELi+eBBXWnf/SSs6TKSC45p13JcnpAq6cYrS4B369qUtvzEAfYqRPLj8BmOcuv75r7HucX+SHPYAGs8AVFrlPRUbe1WNuIcI4Ku+O+hMMj4W8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752440394; c=relaxed/simple;
	bh=/SOLc7b8NyjCSBETLmd0JiUcOYS9wwDUiSj/aAQSZKI=;
	h=To:Subject:From:Message-Id:Date; b=ZrDir+dxqb5cT25O7vVEzzLW6DJXxohgOoSEoYJ+Z98kAfZZisKQvlJgAG2/C3Vz0/W01uSMuSNIdkWck9YBVD39628A0heRg63dzPpucBlPffL8DTJHnTr12W2lNLrUHf2uzYYJDg8r2mZFCFqALnRud13bOy8z54Rkp1cy6jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMYA6X3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMYA6X3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F748C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752440393;
	bh=/SOLc7b8NyjCSBETLmd0JiUcOYS9wwDUiSj/aAQSZKI=;
	h=To:Subject:From:Date:From;
	b=TMYA6X3xR0hzHsdNsv0JDC/RIvk3aK4G0R+rbOfTWhIh7s7aeA1KVWLX60JGXRt5W
	 Vf0owQ4lSd8mS8VRbuHHoQlpWqQVQ6BTg1grkcf4sighwdGmAlz5nHRaa9X7wHky47
	 J7RAtyAEST+ztcmEYGTmTDllJae7OSfOt8fFm/YfRz/bxEEeDFEznhKcs1xFovt0nO
	 EIqHOISssTSYrVjYUMwBwuh91lB2OBZRNYHPPr2hDEwDOV1zWlIiYf8u2wrUMytDWU
	 wA48455Wr4/41UgY1QzNmvatzYMivJezrIF0yLjnvoLVoRlLylzAfF6EOqjIyUANph
	 scr426WWtSXUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA63C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244039357.3656.3389807768200079778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa10d346ba60d05262737f36be679cfd8a823e912318a7afff38f19133975ad8
Date: Sun, 13 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752440393
