Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDDA372695
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772572494; cv=none; b=Jhe+j4Sb1RokzHA24Cf+ekuD+GSBml2GzAJqlUuGna5i19OWfHIxmlhFH2wDf1pgMf4+ltrBsaYXculq89scBY4ejgFfTT4bC0HLd2gzVRjXabA7bH9SZCadNgKPLI5TPQDFBmvJmuSw9ey23JwXF2eFZcD7ibDLa2Wts5FMIyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772572494; c=relaxed/simple;
	bh=k++L+5Akww/c+9B+cwx8vaCe601DEA7VHhZufPj0YzA=;
	h=To:Subject:From:Message-Id:Date; b=qRLY8N+DzdGwFe69vK0jYsq8dKwFIK5MJ21STD2hJqgn6x2oBCtwjZbWuyLOdlEfEafGtje68kWoyvr6LyFfrI52KkZ4ekrv082QIHTwN0wv3vYgtM1C5NxN69sZj8w53OlZWfPUXRINX6UVQa9pge1n/zWkaRJr1013ZQr/hFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2An4sdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2An4sdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18A3C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772572493;
	bh=k++L+5Akww/c+9B+cwx8vaCe601DEA7VHhZufPj0YzA=;
	h=To:Subject:From:Date:From;
	b=d2An4sdrILUTzlPD9euaLTkpHh8zU6hNT30KvWssErQ7ShvqbLgdTxZhXG0jCAlJ4
	 iaPXVBLQwv5a3lPqJHzfKlpsUyPKP6PcUgs1TLma9s4VTMnoDbUKB2tNorA8r5jYzP
	 V4aAsqzkGPOSDvnnFNYum95Z39GJ+2h28mTNm0B3g15jGEqWswZcq0NJOn3Tt0YNai
	 whLEUlRirdIY1zTDBVhwkiInZMr3QaQwf3wGOA3qeyufuAL0csUZFywcj1L5GsejtX
	 A/4WX/e3oNX5ivXAy0cW1qFgUMzimV8fCqbq7LKCngzGEa+XQc00C1tdokb4VWzltl
	 rbS0cZWUX1BNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B05FEDEBF5
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257249362.27629.12254050628194680727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28276d9db115d5faf4099dba0be34657ba2fcfae63d82e8f4b0df1df56cac95c
Date: Tue, 03 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772572493
