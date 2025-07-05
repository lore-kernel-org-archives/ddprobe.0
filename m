Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3554E1FCFFB
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751704794; cv=none; b=j249HwlULqqEfCJrHrfqQ7WyfZM1/Esh3agCPMkokgJeiLK9QlcttqJq4BWeBOLuWJAyc9RaLfYaYTLhqDZcctGiogjTxfkHVrP8yChHjb2wvnhpuLQHHldvn/1uQnU7uDjk3EXPTMsqycQuEXITwJN5uV7Fv+VAwNdzBvNVGfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751704794; c=relaxed/simple;
	bh=FqG8uO1N7vC9fx+Y0G2VVOGqfUc4yezoT9ys89MvjHA=;
	h=To:Subject:From:Message-Id:Date; b=Xr/VrMmR6G1t5d+/mWfsx2Y9VB0MqBuZ1oAO+IHF8m7LY2IZmp6lrifJii2WarM4NA2JrzpyczR6bRsF2HxLA2rv4BWtFzpnB2MQEgMeVGDEybbn5xYIweKmct8Wf4vONfbFXGQPjhSzTcyXwnrJYu/8/7bxdHT66449hM8YQxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHuWKHfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHuWKHfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0219C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751704793;
	bh=FqG8uO1N7vC9fx+Y0G2VVOGqfUc4yezoT9ys89MvjHA=;
	h=To:Subject:From:Date:From;
	b=BHuWKHfRXYDuVDdRA2Q0rwlehsTULz/pUHNVUCh71RcfscSDyYOBuo+hUZ/B9R7oh
	 2XNcjvHRPemsmDAssEgkIYibRhxSYyIoByHdsuOaJaZkwjKZmFmSUelZyp/TbNJn0I
	 TR+yNf9ANIkNfu66ci0ix0ES7zNIlSy9NF4T7/q/2Ti2sNS3n6bzXVbyDRzZcZvvUi
	 TP9Xa9Cmg7SbxUkbHSfCbUINahcw4nkqH7uFik3ipmicmur/SSNZuIPT/1sSIfnerK
	 xs9BlSCs5Rtuw8G2hS6iwJ4XJ6Y+TkdzMNbHi+UKjN3L0iEZ92lCfy40st2+56wYDD
	 EtMfnOfwHk1+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1C2C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170479357.5343.10277392969681920106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebf7f4102c85e335f6e4905bd00ef0099a91113de38881775a6d5f560a42aab
Date: Sat, 05 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751704793
