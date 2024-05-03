Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5190413957F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714713143; cv=none; b=oGdIm4EIcoRdxvLGy2yQkzSDFVWMOr2LmICOcbycnsOTOX4v9zgAoO4l0YDhj8YyA+se18Mxg72WnD28bREwSkFMEv0XZrcSeq0VRap6T/Yx0J2Od0OBW7VXs+AAuav+dF/FYEcy7UVQZo2j427/EiZWsiJRDWMYYluFgbe83TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714713143; c=relaxed/simple;
	bh=B95zlC0IP/bDw95H82vl8UD6lcCJeyZn2nu57t5fp4M=;
	h=To:Subject:From:Message-Id:Date; b=UWuz2l8zym3c8nNusq5oxFJ3F2F/f4h7qi66gpg7WX4Q1pethw/YVQMDsI1MryiILjVCbS5kcSpb9JVbR3VrTfaYkji/1QxSNUcZCpyFmSQUe7jdSHIwDaYx0wxkIaMCyZfxxyTEmEhjQZ1RgUhSHbMx+ERAuOhebcOV1TpoqNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jR2z/eTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jR2z/eTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C02C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714713142;
	bh=B95zlC0IP/bDw95H82vl8UD6lcCJeyZn2nu57t5fp4M=;
	h=To:Subject:From:Date:From;
	b=jR2z/eTbWOGqDcaASQzoBsl8mb3WhNc9WD4c8ylfsAH262jyTGwZ+THrSzc6SFXNZ
	 1RRvzDn9h765p/u903qYw6ujlT1Asb4jzt0CIpu3edvyRAFyGcg+giFiYkxB9XxAfK
	 zf62HeBDvLBGiqD7R9lxf9OpMXPZ2hh9VzFbBpNsH+Lqko6TvYMjGabmkfFHabRTL2
	 sd52iXeE59IIXrIZVTLD3k6vcJyDOHH05h9NSNrZmdsaAS7JfrMV5xE1lQkykJY+9s
	 x0OPxNXp8J5DufhvpOHEbOFh3n/E0kTI0LisMPu4u8uzJ504+T8oWTaAOOE+l84DYB
	 KkL5M6WwLjQkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF693C10F16
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171471314277.3073.17529753388830447831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554c323df59429753dbcdda3122bde568a9b5854c28b7b8efeffa578007af1fc
Date: Fri, 03 May 2024 05:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714713142
