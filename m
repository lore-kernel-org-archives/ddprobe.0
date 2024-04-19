Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0B212A14A
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713534623; cv=none; b=pIP8kmDme+mxiYKDO/O5eBnguomgbitacodsW8dvSGBDIoIRKlJQNf+vwHwbvXx6ouZQNmhi4i4d6qVAa/Mc6bm7uNIGMkmkKHBjVvMLzQPDEHwm3eOj5+pppuUY+/Xf89kUOuOvSLlI+WzgTjX9tV0C7qHUCS/4n5uWD7CyfJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713534623; c=relaxed/simple;
	bh=/Bjf1hlkOz0Kf3HtWCWFguUAifPx4cEaZBlIKomZ4ok=;
	h=To:Subject:From:Message-Id:Date; b=FS5p4ufp5XT4QsUEj3TdERrvzhRgX/5OPLf9204tj6QZ2var1WnU2CE3HP9Z7k1KXOaRMnL+BnfL4e6GDFX1dnSMeMCIZFsx5u2nItQC6vK7fHyFa0xMawgPE7iPib0NA9AQ4kZf629AuCKdHzIp+d/kaeV2hpJi5pZbgjLDcF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWsNmC5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWsNmC5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACC8C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713534622;
	bh=/Bjf1hlkOz0Kf3HtWCWFguUAifPx4cEaZBlIKomZ4ok=;
	h=To:Subject:From:Date:From;
	b=GWsNmC5qGg3l5LZrfghghA+Tq/idsU868aoa437xQSXeow1RE/1ElfkLtu/TPwnNT
	 73UDT/D+OlKIgyWfJYmOW6J5nPYnsvnCN1puGO6FZlUbBut2vjXqoYe2wWCsiEQsQN
	 AfodgguDkJCilQXhiMBDh5AGiyD/e07FKu/VRJaiQu7Ht3Mss65+X9w5F6TNyXric7
	 dc8+h1byffB6amF/m0MM8PcuohGH6M2+oN/Q/DtC8LUS2yhWWBe8ozMNY/rsZTKNde
	 jRR6LbQBoCB/zlZenwiAq9Yc62c+3qu4ds0lRkctP0p+dWyfHsYQX7Xx7KyLftmMKN
	 zKyTFs5+blCBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3777C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171353462278.11184.8893922340320296300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f2c68b330635c6065bb94490f052d202c76b35494c1a8c6a9a5a036d653d58
Date: Fri, 19 Apr 2024 13:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713534622
