Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2A125E81E
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744208994; cv=none; b=WE6CXRbkH4aYZKsqQBQUohGdY5pHfkwi/+yO/nhz4ys6av8tkNXe7Jq4/7wuou16ybfYFR+b3moBVoscZVBfvYECJMg7HoxNSV0LAkSUO74zH5BEoppH+YjlX/3faiXfj5sD/B8/EtWHWEobS8OxwxBLlOcbjl6SYkJO0eekitw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744208994; c=relaxed/simple;
	bh=15oQWfHxG25BeXhRv0ZPLu+0oA0UCMY/iSy7fZc0Og0=;
	h=To:Subject:From:Message-Id:Date; b=Qq1583OT8DrfrIhSi4NlVSthK6yP0JRhMv/0UUkszHJoAVxnXRtzkYIU3XTRFUuRRnPDWuz/eM8Zh2ay+lmRHoqi1sPYvsTymLKvynpg8f7EBag+BS+n9F15kujALff/jfblJLg5mjqdO17hOOW7qHTxGR6C3PYEgLO6EXsVLZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWNwBare; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWNwBare"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F6BC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744208993;
	bh=15oQWfHxG25BeXhRv0ZPLu+0oA0UCMY/iSy7fZc0Og0=;
	h=To:Subject:From:Date:From;
	b=GWNwBareXoczzlMq3/0HrtV3XnjirN531o7Vk5pJbY1ZDDYIpSG9+vBJAX0qs8L/W
	 6m6STv13gUgUXjCLcApFAAT3X80MxpnBRO6dPerru4356Ai4vxiL5ygiZ4jjiUv38R
	 hKdzMg+kPp5c+QNwKYcATGci3ClCK4QoHmcdc7mKznav2/nHpCwqB7C8fkEJT7LbSf
	 1SBSUWDfx0WmxFsULCxK38HQ3Xisf86IB1/OBMdQ1ckDvdSJMIEkMhAJ031m83XvfL
	 jJRBnXX4eRR+EpI/YMI35yf9dm6ZlipIsXDL8RI45V8/hyRp4PBtBIP8Q9tzuV+fnF
	 qqhxUhqmdEMUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29CBC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420899365.25952.10066911690997208290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364640fcff83c2701a73d2f67a51205c763a221ad5c708da9508d07dbde3b9de
Date: Wed, 09 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744208993
