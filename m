Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B93921360
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715544143; cv=none; b=t4IQ8UR6Cobm6fA7AB3fMYkUer+0iXelfI+qaLkJIMDJqv8EY3CnaS6Qt9ikEZsMOEVyUJHowd95FYzIPFjTuwRz12o7jXuFz5EE1OBpSH53Q2zLARrdIszeLNZtiEZA4IppSTXSjr0B6kowLiQJO/y/A4XFGoemlMYuIRi6BfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715544143; c=relaxed/simple;
	bh=RODfq7xmios4MgyLdWB4UbhxA83RO6fjZj1oHpxn7hs=;
	h=To:Subject:From:Message-Id:Date; b=Ozh/6lD6sj0UlSLxAMAqLN8Rv5+QVTr2Uo7RoKbhNANxuQRZpeI9LvluCxAMUCZTpvfyLbQzQIx6IcRg/raQpfyD5YvixXpYsdQo6lyeT1E38JrSeyeR9Y74og6R7yLJ4oZDlD+CDP3MNOsuSs3ja8oQF/6FDrpw1RfmNfJRVXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbuTgEtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbuTgEtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC42DC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715544142;
	bh=RODfq7xmios4MgyLdWB4UbhxA83RO6fjZj1oHpxn7hs=;
	h=To:Subject:From:Date:From;
	b=gbuTgEtPhtHB9HJVYIWFVzs5LiXuqsnDmhbaINHJLa4OeSBM6x4t7HXozC1nRj5w4
	 aOXiVBARYykcBDGkvcYuXzlxyfBNW20wNotHhPuHxkuYokH8PI414KJcJy34AFzBw2
	 NmwVYUhi72MpJdrB8wFLz/B1DHBsLSagXRVFcTnotQ4QKAf5OJVoJ/EB+503ukA/to
	 nd4Jacr3YdDlENybEVMnWaBNpBOoaokdb6CUdVb51txlwXnp61fpLKsuDYkWBco5ZS
	 49Lg7iv+JEMG655uEtISIFhszNrd9cBWR9kJ5EVui2MUoGuy1vwTxqRlFbnrmzCji1
	 HveCaJGHclwjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1203C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171554414276.15230.2638099741507632427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2cf557758e230d1b4a76475d984617cfd3f13471bcd77b585818068483bcdbe
Date: Sun, 12 May 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715544142
