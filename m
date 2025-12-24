Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DED26158B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766563434; cv=none; b=GBkjs5QGosnZhO7tjWNG0YXp4whHuK1/oVEdsN/OnMRN5QSd7y0LM+6e4sHBmfXtpuDLes4mxXDCf5MLHb3yuE4aAeGf/ke9TpaksaZdRMhQph7PrE+GH2XgjIM2j6uMaAmYS/9FVDq070FmmD2IBHEB2FDZ/Dnix6EJ2b5lOTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766563434; c=relaxed/simple;
	bh=avkbZxNA9LlxfnqLvXuGokRvPTRwWtjAjF11qXVVjE0=;
	h=To:Subject:From:Message-Id:Date; b=P9SS8wTWuo7QI7FxBRhoLuNMooMpRd3Ix00/Ja7rdQJnYz1e+KlS3ItON21VrVaZmSv90ANY1fOxabKaUeWvRKArXpmdqdYJGsUD5Ad59uXrso3Qy5bEg9xS8OYC492fTEpBmuyUnFvWxXQpO99wrg+fAMo9jkZrCezTRmscTs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLh10+Eo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLh10+Eo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9C1C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766563433;
	bh=avkbZxNA9LlxfnqLvXuGokRvPTRwWtjAjF11qXVVjE0=;
	h=To:Subject:From:Date:From;
	b=TLh10+Eoin1QUdzALvmtg1y3oqefGoB7HEpCimciMESL4ptstuScK6k4T2uMN6BXb
	 U0hyzfniz0fUnWsOJBJe1PWtSW/xKUUbsfp8nZXw+ySdutUuARFQPfyuQQ737S/hCS
	 Pu7DFG5uAmlZb0KK/fZOvdlgYZpk+MvVEqBfZc8UmVZGMlKha0cbzR1nX2wnscYhRa
	 A8GWdK9Hc56geIOGmR1RqIFbxgBt43WkSB69mNTcEADr6u6isdL4P/e6u42Uc/2Kto
	 /oDpatwLSgLy+NJQ4ia0ucvHNUhA/Cp+YIzIFSkO6ugJAxkVMKRyHlbFP8E1WLczsY
	 6J457RbQeeGRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E83CE74AE0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656343357.8901.5359344265320625154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66e596d3b127d4a8cd90950f5dd61b7b0d3b4043d62978288daa7046372d81d
Date: Wed, 24 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766563433
