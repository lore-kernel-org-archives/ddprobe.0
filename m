Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B70F148FF9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736619954; cv=none; b=LKBNyxa/hxQVok1FW8Xrxn8Ms/iyHMtCe0CEb9jbepKo3S1hSvMujXQiMOoqKS6ItpZvRcy7R7vp2DUbAT/rmkHJuNwBnIG4BCMD2hz5z3aB5fIGgrvW837YYuFxjjpkRDtlQcSJfOsfgu1GlTDF60PVOO4EmDIhEtQNruFScQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736619954; c=relaxed/simple;
	bh=xNPnksBOu8BU57cLmBwUZaXcGcIJAwePzWJrDKQ9wIM=;
	h=To:Subject:From:Message-Id:Date; b=IWeAuLQzhjjFisvLhSG8OsQVEBGQLs3Qqk0e1qgyncCAsgOEFxjw7rc2EMjPQcX8Cf0jHcKedr5z1fKnnZW63hnb8CBLpX2Fu91lrwUU0MJRI5z93DbalREmNYgUyj4jxXYaRtRJNeOdmAclV2twO3lgYqigoIviRfvf96Bq1rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktb6POL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktb6POL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7C1C4CED3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736619953;
	bh=xNPnksBOu8BU57cLmBwUZaXcGcIJAwePzWJrDKQ9wIM=;
	h=To:Subject:From:Date:From;
	b=ktb6POL7qW3TZa3AwsPCe2TFX1b4SLL1L+R67KsQY9VDhVIjNqd1AHVsDssI96/BD
	 Tx1YQtmTeGWlD6NyZIHSFqr9GzGaxmBX7XSq4mnHAaPPoQUr/0FcZ1Qp8nSnePf5Zr
	 xKhG2RbfN/zjYNoExAUe1ESjjdaKa337eHEgWXtTmQAukFtyq++H+4wrvWXToPAQ9+
	 AWkScm0HWKCqM6aKluK1zeofDn0rvJsyiFiu2uARVyDkPuXOGBmXYvfUTWnab89WFN
	 s8v+oPKVkVRekaGxsRUnA2Hr37p7QMJqoT5SDDczcQWAmBxGOirEHxjVBwi43yBP87
	 9gtNm6VFTCDIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CEEE7719D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173661995360.23692.7158130333812527969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc19df94304d777793a31e176e31342ddb3e0342d8f2ee0e45c9f475ec17a04
Date: Sat, 11 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736619953
