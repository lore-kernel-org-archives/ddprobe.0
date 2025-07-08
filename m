Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BF018A6C4
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751978393; cv=none; b=NLcxmQhBQbpc5OoWM637R6InyRWqn2Uo0M7sOZLcCP4CEskpkZ2KET3pmC8nRoONSQA93QYx5VSFbxBQXg3Yry6pE55cX+1w04l7Sdnt6risJSbOpyR0uvbz4QBNfzlcdMqzuHC2pUuqtCMjZ9Mo4gJv7OQjH1VpSY89mm4M0zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751978393; c=relaxed/simple;
	bh=ensLyShI5mpznT5D/XYOvICK6u7GRhZuC0BbFujPa50=;
	h=To:Subject:From:Message-Id:Date; b=O3PQuyjguFa5+QnF0DcpS/nfb+58khbXqIJWaRLMVV3X+wxrD6tfd3mtdiQssf5DpxxUOAHhWPGJWtp9xEsL9oO+TcZZaPe0unuVsRgmWACFjUZu639+NoaOuj/ptXSxgzNoYQwZNpJpckFyNqb96w2Cz5kwmURpmhmn4KTmbbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrQAHsvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrQAHsvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2469C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751978393;
	bh=ensLyShI5mpznT5D/XYOvICK6u7GRhZuC0BbFujPa50=;
	h=To:Subject:From:Date:From;
	b=QrQAHsvA5Wy6YjeKOExf4YVdHRlKB771u7/SkAqv5QrDxKVO59pnOZu+ovsbpsRR1
	 px9EP1FqUDTE6IMME8glOJ+To+0Ban3j8vDgs8TH0BRnuCVhwZIb0oa8rA2RIBeahi
	 0S27tGE7T6mHBpniVYH+ryyihRUZO11U5Zp3XuADY9Cz0h/lBw+l5ZxKX7aLtdYbFU
	 FydstaPYtgGBN8iOhkl/jR87uQzP27bNmzmVo8Min2LT9xys9AV8WqtwIFHVl0bLjH
	 8ZV7MpKK1ZMQxnT9fjnN6UgCQdiV5MWsJrQ8S5Y5ywilAP0C1F0WaOnUpjAGFERD7r
	 D3RFk8GMk5rXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E99CC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197839357.29641.4820837522631337401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e57dd9266670c8f03468cec919892f0da23f91e17663d28d5534fcaac362837
Date: Tue, 08 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751978393
