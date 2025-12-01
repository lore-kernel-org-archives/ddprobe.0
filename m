Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E96E2AE70
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764597774; cv=none; b=h7w+gX1aNXU7+JYc3E3loKUmFwg8I0efIqXyuIPxkyEwKFlk3pQZBLEVovELBTLLEotJLe9Q0PVkf8+QK6sg0BOnHAF6mB552flgY4nqHQkaYqiYFvgay/QU7cWJCc1/gxUMwsqmJc0VuF55TTEHxLvLUjOLUBX3wfd1915AHSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764597774; c=relaxed/simple;
	bh=SL4jx2xNGY9JlLpP0aOUmS6qZMCZ0pQQyviy9uDaFaQ=;
	h=To:Subject:From:Message-Id:Date; b=oP1KD18ByMdsQTqgrgXih625y/56VdGN8U3iqmPvQ01hVn9hJA5R3d5kojkq9mKL6bH5gwEHAo7DSfquNrkdJIUSN0RNuc5SzV6lwYgE2SepgC7q/qBwOg/auct6VB6+AIijUhadzRmtNBKv5oJnJgGUJshdqnCD21R7Eq+Udpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMt3NFxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMt3NFxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE98C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764597773;
	bh=SL4jx2xNGY9JlLpP0aOUmS6qZMCZ0pQQyviy9uDaFaQ=;
	h=To:Subject:From:Date:From;
	b=LMt3NFxX5BTnyQwFLsWfnthcvno46IYztpAHh6JI0PukXWTu8L1JPRtbftOfRWhJZ
	 4ygF2brN7W7+Migf3XERM4STRnAdUnvkkh56xHXSrKC3e5Wjb4jizS2zeIRdGOlMuY
	 lRJR+fProYv/Jn4B4pNQAvNmWLlWPZDm5x2Hm98c1vukhHzZfvGPAz0b8oNGAxI/T5
	 cCBcoTeAP25nasgGythTAhLrSMZQjKSfydOcRQYlbRQ8cmZ2csTyvahKKkcOz1t4mL
	 yI5LQG2zNb1zOx3se7Tfaimz/aenT60MdsHJ1Z23GJuRFXBePA/kQYc8oc8rLxZLE4
	 E9LB5DFfue+iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9775BD116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459777359.2565.12637219321335403541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46dc357677b995afbe936a3147ffde7e6f8e4e4aad452d262efacd80312ac9a
Date: Mon, 01 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764597773
