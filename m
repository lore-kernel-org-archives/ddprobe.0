Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D33E84A24
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719031943; cv=none; b=YUUXo+e1Px9Eizs4ZKbsKfugHPo6swRJ1aIUAakZgtw7ZczOt+Wh/Vq9/pNQ3Qecu4zk9BZHH7UxDCJFXERf0JaD4WBapXK95i0x8MzDxjpNgfq94GmN/fbxBdH5KOFS2NiQsdi5uaU+bCcFkvEMfOCML/tfJ1ZfowK5WuvftCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719031943; c=relaxed/simple;
	bh=UQ5KVvri75isxlmTbKb4o//MhuIEe7TAUOdjsNqohrk=;
	h=To:Subject:From:Message-Id:Date; b=New9f7gBI/enaLUtljGAkKpWts0+rdWUmKVWUGLA+zYwuQm9IXzXHsLPOYV2A4zwn8iORtwdZfRLcAQVyHW533mBmFLwOsSex1qHMN2nOy1apoC+tDa1lYK0S7etiqHo8NkN7tlnmfH3MMeCMU9J0wrDrEX6B2m/YouJiJqRMEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRdCZF5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRdCZF5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8442C4AF0A
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719031942;
	bh=UQ5KVvri75isxlmTbKb4o//MhuIEe7TAUOdjsNqohrk=;
	h=To:Subject:From:Date:From;
	b=ZRdCZF5VLuGE/RQcUg2jtMYI6LGEM144JZw+3dhUNsa+wNVdni2iHK2xtHPA+NT0o
	 yByj5dE5A4T8TyZpHL8dngEhIK5DKUVmllg0phkqSJGzKURlKvJlKHSk/Dk9NckuSF
	 0MDtbGEAf8iOG5vsYXtY3LZUiMlfnjPQl19ZKYm5B8Jhr6oceMWJOYwtrLmDGFCdpQ
	 nY65lQgTEuUM6Z7xPjQHs+gzKNNX17SFXqb6yFsMkL8ho3I3p86ljjNced+5IUm9Ka
	 rF8mdu9e9k5rkaLvOddkAsGHP0KyezsXVA0A6ojjMZN5rIOQ3xpGKN+dljJUa0Z373
	 cLB/U+MoJSggA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47A3C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171903194279.29519.12107503251114990894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c00b60c553df4019c88278db38b2763a86ed28ce1404b46c730f4284196a5e8
Date: Sat, 22 Jun 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719031942
