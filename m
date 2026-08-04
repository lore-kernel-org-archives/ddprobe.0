Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A5654788
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785826234; cv=none; b=JweHDqgfkjyNCy/ySNMk03YzDGf5GTJm/MkNzcaTPcFRe6usnb0LGp+QQGgan89Xf05OByjWsj9Vzy+nNBkw5icWLDMex+3gQHF6IuMLekgEk1M9c8MCWHKRJs3m3unA1/ZfUNm+XXqhjueyNVuZJjbyDsIWUzC52EbMf87nBc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785826234; c=relaxed/simple;
	bh=yf/ILYIU5KgTmtIGE9nsEi+lZPvROEYlJesDt/3HmwA=;
	h=To:Subject:From:Message-Id:Date; b=tSKdz3DSBbsQH1fBVQNvxQbMV13NbBfLHkNYQiHdgHdMlCGIHexoxRMZ8iwsavj+wqGnAIozRNKIuU+ZuIYgmKT6Q0pUr9fms+fmEXXGiRkOII1TvHhNURTykEnETvH7VIJnd9q+FTAnUV9aCPdCYho4JHdZqm88rfKqxUeXCcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWDWsdIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWDWsdIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD09CC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785826233;
	bh=yf/ILYIU5KgTmtIGE9nsEi+lZPvROEYlJesDt/3HmwA=;
	h=To:Subject:From:Date:From;
	b=eWDWsdIodua59wBWW0TFVf1RuTKUusA26HAiQykI7Lc9hfJEYNa2p6PzKQ2UCDUi2
	 pq4YyCriznOvC8fzzQfr9Z5sgyx8kjyK0d46GZ4pBCEXSMbkax+ixLS0PRFXVo4BBm
	 h5xID5IoMzmj13MtzQ3ZIQfEckzZLDYiBGMEE7GN6jHOLp6knTYEk2NH64SQcsTxVV
	 dDKRLL8c/CzS9ypHznw7xE6QlvLmIBSvxLtV6crrekeQ/5/INN/RXFNGM6488dzk5X
	 l8IYjCvt6t+tt3MT4f6s85KY2LbWCnNej3MgJqGEHzyKBYkJihuqb2AEpcIlEAJ0nQ
	 rUDXctaNO5S/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B11C55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582623372.19924.657829238230431294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7048752dcd6f17ed4db622e28a2d20c6278ecb20f771e2b71f63d15c3e1b2d63
Date: Tue, 04 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785826233
