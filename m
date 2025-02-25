Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C144430
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740498535; cv=none; b=Tr6OJI6Hc0rXv/JvDQDuNZ6sTyUfwzSWHQAd24coquSLBfgKN/sa8EquVCZ/I4Gtp+DhDTBgv/A0+zeP9edsHbKuvYsiksDMExOnAfSA/90E25P/oFBDWF0HmAG4TiLfZsCZGqZ9HjsWq9VLdlQfjQM/b58K8xDkQJqGNqQlLMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740498535; c=relaxed/simple;
	bh=WgEk4mnV1b05Tk/Iwjr3mzspPUoTsAu4N26eqnoHiQA=;
	h=To:Subject:From:Message-Id:Date; b=s/HVhahxbrE0bIuAwxxDNqUHG6UhvHOOMpvT97NbRmZZBOr/knX0GtIlBagSTmZJjlUhf6g/HmHk5Zspm0PjCjhowADDYJoSn8ov5IUhg5osKaDC0g537fT+o3KlPU1z+s2bhxWW0PxrPERmNJgTIejG4xkvDzPH1+SCodP3vD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiWXfTnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiWXfTnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DCAC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740498533;
	bh=WgEk4mnV1b05Tk/Iwjr3mzspPUoTsAu4N26eqnoHiQA=;
	h=To:Subject:From:Date:From;
	b=fiWXfTnwz0enD2JCoaf0ys3pi5imesDtP/0bnyPgWpscJIAf6XcTzk5L4mD2QOJ9c
	 UOxw6UZUaDgefS5ZEbNQ0Q9kE9E4hmvJ3ZO+3MA07+O/R3uCh1ESbwkz4k4IBOtGtD
	 HXEEBOAXnZaHXTWBqIniM2UhfIYxaCwtFPsaLqxUEtmUvAXXeLBLi+6TzBO+st+ouI
	 z52FcUkzSfd5x5xu689yAFSFizEtZx1bSvRnytHqIt1KmROWFgkGis2HRJLo/zrO/C
	 RYiOs97OAeLQbnaXJvnq+CziLCU8RFJgP5mUV/ZW9rDEZX+hFaW5k6SKPxFlBHS6yL
	 1ts3/Spf27RqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A187C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 15:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174049853362.26114.14834025308676093026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3afc8c50c24884468bce6068037c0fb39824d19e531d4f22679cfbde99c16c3
Date: Tue, 25 Feb 2025 15:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740498533
