Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3CD3019CB
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762247394; cv=none; b=XG0UP86NXlvw2vtSbBu8wL3uPdS9KV99JGxWL067dVI78595fzwqt7bkuuljVCBuc7fFUfqhp9glnpaAsVBAuottXZB3f6lQZ8H/TwF1VT/+48RB9T8iuQKYzgFJDrHfl0DkLLMWYNMzhDib36zD+FR5KIMztXJHm0uQlZvK1XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762247394; c=relaxed/simple;
	bh=C5bbGB+t/DRTjB1p91TUD5bVMAQ9g34WwRk8D51i5uw=;
	h=To:Subject:From:Message-Id:Date; b=oZvnPWgVfXLHgOMZMIh79uAmkIEtqaPgtl6buukie9D3qcM4kxmhWxQJPt1lsoxQXBdvlelSzg7q0CDIhguMQR7NhqiEHtar8thHU2P54aats3M0XZthz96AqKF4ptujncQ8iTWTptotPAUIRAoWFyptGe7gbUipcvRiMOTdx2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VISZV5ly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VISZV5ly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2515C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762247393;
	bh=C5bbGB+t/DRTjB1p91TUD5bVMAQ9g34WwRk8D51i5uw=;
	h=To:Subject:From:Date:From;
	b=VISZV5lyr8SSTu99nqj2DYBD1Qh9tRxY/MUUHALUwFSky63WmILBSTFB8zuZNv8F2
	 4TMavTuK0VTgJ/EUjMySixUYwp0vS0TmbRhg6S9zN5pGnqSCR9xqDhO2+P0i9fuSJe
	 R/1F3fehjz2peZW5vRdXlKEMQVU8QzMzHIVXjT7ZlLavCTgcEIMedSRbuihOYgAZ8Z
	 eTx71udz6+NGybVannGkPJi2QNipOw5vrLZClu9mwiOXN9S0In3/dftnhT7gpO66Ni
	 8zStHCi/vGJXRJRtF6n2IKSFc+I+D5FZoEC0v8ESOIcBQ1U42KQKea9lU1J/4JfY9m
	 sf59lUGNDgIUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8D0CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224739362.27944.7799269819079259347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7719faf3616ccea4fab7ec065a8dbeae6bab454e23c4b7d1b5716d3b68454fee
Date: Tue, 04 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762247393
