Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387F770805
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 00:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740184134; cv=none; b=DmxnJMJtfPStfcwLWhdCXinvSfNmYkHRw1+mZilxBVl71sPm/XoqtFvm1+o32CrMoK6SF6Hgid/UzGKhMrqudrP2km3mjE5mt3cqkU3Z4pkz2lycSYfVZXtFQsvBjJxp2J1RYS8iliCV8/ydW4/nvIwkXxwat1lYr2tjLVKVSWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740184134; c=relaxed/simple;
	bh=/+YSXR0VP4drC4DaYz60tVkh5taKfuOPuQZVaJ54e/Q=;
	h=To:Subject:From:Message-Id:Date; b=e1PHRvKt6SluXoNlyyY8jLynuiO0eXjFPfe6vTAzgQm8tIN9K3BPaymRkJy3UVeHedUlIn0Pp5KQd2AUtrsTwTfcpPdG1vYi3V51rpNNxwvnPAFtUbzJFSZJn6N9ruPp1kn7cXQGFsGjZmpG2MYA8ad8Hxve9neupEpJRYLg+T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7Q+q22V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7Q+q22V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61ABC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 00:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740184133;
	bh=/+YSXR0VP4drC4DaYz60tVkh5taKfuOPuQZVaJ54e/Q=;
	h=To:Subject:From:Date:From;
	b=T7Q+q22VmyQfeDqP5lJkjVry10tXzigL7XeC3PeRmi+l5I7nn0AXHXHLy06RKXPq2
	 hZKV78kLJLhQkOaXT4ykZRnniVnMK/GO4qL45wxyWIVZFYKaL/UehW3eZeoEHI7Cp0
	 ORtshJcPD1gjFVvF8OdjgBdM+ZwVC2BFG5yW5mirMwjoD9qcmiTFoxW4N/OJobMBeC
	 SRcuSvXfsCQ/RBZUUqcGqdAjaeTnHeM5FbyTJsNQTJSabgns0z5nHP8O3yFUO8f4wt
	 5DipN6aSZ1txYpWoTaYCP/ZrJ9pf91wrk4me9TES332cEAEvTN1HlodZ6teGCERMLI
	 U895R73NG3Wyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C12C021B3
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 00:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174018413359.6575.3565049116826317257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc74fa960677f80dc7bc8c84402ff8e630e8a379bf6d2aaefcd94b1d4750a97
Date: Sat, 22 Feb 2025 00:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740184133
