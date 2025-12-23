Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1859B3128B6
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766522034; cv=none; b=ZrIyWWQ2qBLEYaAbRTYsj+2cpOHA2wh/ItzBiBxD01zsNPJ9xJPuJ1fbVTchS1S/ETVuVXZ+MXbZ1BGVE2znWLvNdG0EtiRnizdzYOuVQbYVhC9UTL5wDSbdV4sFUdsUrdOHJUfzZQwHQRns9CupZ1tepwsLCuFnoUXUWxZkBF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766522034; c=relaxed/simple;
	bh=Igzi5lHhlPLIVggKTPZIF3AnTiMetWdpGyV/up/yU5w=;
	h=To:Subject:From:Message-Id:Date; b=ZjWWWAWD2FCLYK4rkZvZpEuh1uPnREKDtpZSFVWsCPPs3u4zW21Vnwm/pZkJMFqBzB2fB0HT4p2irPorWSwjhUdFsMGKFkZKKNdp5WD653jw/0ql3YNxKBwYCInHsleLH92XasZ1FGGu0Z4R/Doy5hSZWmV8lLo/f86Wp5Cwxaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTnd+9Db; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTnd+9Db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F1CC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766522033;
	bh=Igzi5lHhlPLIVggKTPZIF3AnTiMetWdpGyV/up/yU5w=;
	h=To:Subject:From:Date:From;
	b=XTnd+9Db4lv0Gma1Ls0lAmjY5N4/WMnA8/90c2eJGN1bCS425z7dHFvhNiexqaM4e
	 tHRU0jSKHkLO1l497fBhYZNgbkK6z4+LLs4j+49IxYpNvir1WGzwue7uPDOjiT5FRo
	 SsgdK75vS+rgdI4iSMRyzb879HNgzY0HJXee33HTqpr7xoMkHRn05CWwoOlmA+VxM3
	 0bSuclRED7yIH+hfwWAmHXCzg98SRqFbOhiDVNMDszmews9dmiVxUbE692gG2JsMFZ
	 GmP8xEj5GdLIsdW6foSpWDDyRt0z08eEDSzTcJKqHy4To7XKmSj5lMdp3N9FtOXjD9
	 R3oEaqXnMTUFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AC0E6FE2F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652203358.22285.10019874929179804837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae06e9f5e086719185af01aa2a96018ef527f37e10590efba16386c4c3406599
Date: Tue, 23 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766522033
