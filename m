Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED241804F
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716150743; cv=none; b=J2vSsNyd2gZAMHI9gQRm8KX2IloyDQhkOWvdfs7vLRdctBPyw//zAbI+7UijwlsQMT1jIJvJUgITYG09m5rh2HQ2t+zInChnLl7dB5AZ8ZLuJn2TOhBibJQZxFwEV9BbS189IU5u0jXj9rYKxv5F5KChMLAd/HeWOUBj5LoXR8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716150743; c=relaxed/simple;
	bh=lHTi3ePaBeGBbHLf5AKiPfzoI983nAjAw3FRnBXhZRw=;
	h=To:Subject:From:Message-Id:Date; b=nTeArrnNWjch3DI66473a36Ol+XFI5AF/sPdOZrJGyVX6abWd+91cKfsFSfKgrir7pnuWznEdozND+Io2kuyltDUT5ageNwNgRcuOiuJShr39vTvqQvlBCmwnE5eoHbzck5DC16yQo7tKV3QIQRjlfU7qy6eEkEDSgF+sW8MGms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dd92iA7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dd92iA7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E96FDC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716150742;
	bh=lHTi3ePaBeGBbHLf5AKiPfzoI983nAjAw3FRnBXhZRw=;
	h=To:Subject:From:Date:From;
	b=Dd92iA7wGzSWROUwpFbDclQOLqpUdjKyyL+jlWWSafY/yb7KgH1Z5/cNA0RzGrhbN
	 2yqfCntOuTFizuCSMg1hWPg2GxpuvtrK6vlfXp9N25YI4v7Tg0FOOwm/UYIKsRwUYn
	 ZjVZNovMtoXm5l36HdhF2u3LwomFVehSU+G3mFSrRSr5rQXMZ9o3YYRECWw7wY0fH1
	 Zypte0vwfKeWADw5Nt2oaySLfEuB9jkNX4rCN0JBtQT2u9xSxnRbWti83iIjgf2EFK
	 BeoIN59DneZIr2oYxT3SQGWu7W8XfWsDYkR5XD8lSeRwlkvh9kFrXyeRwOdSWknFre
	 zdZoRSHGCNGNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4660C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171615074281.11758.20652607417854689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d74f275ec317e56ff3d92bc9d447a526c9cea9f724a1b29221dadb1df9a603
Date: Sun, 19 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716150742
