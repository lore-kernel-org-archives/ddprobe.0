Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B6023C4F4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746527995; cv=none; b=A8i9eUlWXWtHQCV26FwzRyMujgI8KO4Sf0sCB7YodV+Bu8fX2NnG5zZ/e4mwyjpVomzvyKHLWvuNGnM+VslyaCpQr81U8GjwLiPMmBnGWsdo9glNVtFHjRJ8/d7qj1EZjvzfZRrEvI+DR1CDBKx13P1zBAOwFpiXfJWWsUfHA6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746527995; c=relaxed/simple;
	bh=2cCtBN+SU8YZQBRc96E72WdfIkGEMujZA1BS8mi37A8=;
	h=To:Subject:From:Message-Id:Date; b=rwfXJNL60DJg/s2KVru1el9qBc8vhlcASWSTbg3iNKaYJuqu4FLlyXRebhmsk1dtuJ6z19leP8VB2qlKCFzKy1RbiqZu5GUXZnUn/GE2BJxWEwsfQHybWJ6KogUBZybeJqSgSkgASq1osT7dcF3PpgHDUvOX7WX5U3+SWFOLDwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQs9SHBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQs9SHBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D842C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746527993;
	bh=2cCtBN+SU8YZQBRc96E72WdfIkGEMujZA1BS8mi37A8=;
	h=To:Subject:From:Date:From;
	b=tQs9SHBwTN5oBOsAuCq981tyBo1DnVrLNyO08FJ0yDb9aJkUnbnZ00RROslHhUCnB
	 H/bwjiRuDQtS9iwTggwfdyhrxUdcLRzleKotEMnrKMJQKPEYXQtBfxnEH5DBs6sd1w
	 S/IXIOUsiAfrI8oNsTYXoIHBCXU+l3BGSlKIyOOj0zZ/uRWEr6jWFuM4IuAzegYYko
	 c7ecDOHoN8laI7y0WkyNfjZMT1ilOtrrXygss8+CP7nTGSCmqC7f2vO2JIzUriPq1C
	 QCsvBhWKuM80BYiqCNG31lkAQbgG5TZp/n4YUljaejUYMHXoeZgl6JOT8XYTl3HYuq
	 eSK33LG8QJT5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE23C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652799357.4590.5010263118345519746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12c1650106ec9144bd77dbae2b964aebf22a750a2131ab0ed8eebf1fbc573e8
Date: Tue, 06 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746527993
