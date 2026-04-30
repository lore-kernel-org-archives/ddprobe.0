Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5E82874E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777582054; cv=none; b=hIVqJ0w+gMTg8EX9J1kKKSPP05pzY/IOCpdkPO2/QnvnyGr2CNzmSCMxImM6yTJRU/KU+RtUNpLHiLSVNUcUHuwSMpc3pN+IowuH7i0BoynYqgnZmaqzlgwUNwfcTCTuquANoHWDIvTd+2mK3rWJVfwGzlfb8DRI5kGDOrJhJJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777582054; c=relaxed/simple;
	bh=UsDScD9anZ7ohya4C9UkrUOctWo2+jkXDK0sC6E9K0M=;
	h=To:Subject:From:Message-Id:Date; b=eUmhOoJ5yGsV3JzZt25seWkWaW6Shrqsc9DuPC0WkPA10MjaMyltTsYE/C24m7q3eojywJYiWY2tKYRnjFApUbGM5S8a1l3v8KgxTU/5fROLrBpW/ca0+13lxMQVjda92SdIsEHX6CQFeKVWi/jiHII6V6wWh9iRTOWoOGraV04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfnF56zQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfnF56zQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC77BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777582053;
	bh=UsDScD9anZ7ohya4C9UkrUOctWo2+jkXDK0sC6E9K0M=;
	h=To:Subject:From:Date:From;
	b=WfnF56zQWWvQp9T22pr+KcV4YNWc7SjivA9rZaWoIKhl0HiXD40GHB327UELZw3P4
	 VOf9X98oEdiDyIkTH+T2sWd4Pl4F3VeEJzOLTjikbkQ66+NCTdKBQVGOa8y+UwrBQe
	 /OM1H2uVBHSO6hLjJax6L+hP7yOxF66t7YAAg+eultvO5xGL6uNsdmYIYulL6C9uSx
	 rFftv33qPA3rQGVE/PPcNhxerX2T7jj/BZgK3XIFXeUZjlZjNh+LuWHEirN6uLHDYz
	 Qm+ImcNdbHPdXuCAAQjNb/AY3+0SK9MEASdHb1jp4SHfm9iMfUyfq7n/HLmXzLZtKE
	 f1yZ2+XpGkvXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA666CD13D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758205368.19002.5138753326306960623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e19eae3b2607001d2f098cd4ce8e0b8ef188832a81b37f696b6bf309ab0ae5
Date: Thu, 30 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777582053
