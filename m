Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5E014B07A
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747977595; cv=none; b=KNob0un2iuAyKLmJZNFu7ALilTw6ddDJDjtddQ2zAwl9DGBiS5l3pgpc3CWNtRiXgcyXP4jHYdQubripSvMDgVHZFjMON8aTZnd3YvGL79dycSlMWyPTzjaJ01Epdsl+R/M3qeix9oJNyzr4+qHVEAVBiCarZ+fy2k1ofK5/ffI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747977595; c=relaxed/simple;
	bh=EpkPMLNQ7aYgVdrFzzvqyudqt7rV91Ge3ehaxyTutZI=;
	h=To:Subject:From:Message-Id:Date; b=AbDKfx89/6gOSPdm9WMJWS4BJzyRYQmxsw/lb7G7g71eo261NdIisqmTZJcdWUgdNuPT6surW4VonjKEpF3uizrS4CWWCSrwHamAtprI3YUnHNYJwahZKFOltDpQ8Lb1lC3rHHsBzTgYyGj5ysboJZHpN0qAImfP0jtLlQbAmsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/RXwjB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/RXwjB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7A3C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747977593;
	bh=EpkPMLNQ7aYgVdrFzzvqyudqt7rV91Ge3ehaxyTutZI=;
	h=To:Subject:From:Date:From;
	b=E/RXwjB8CLn6d/bct8LMDKOsHryUy5T6cRhEHcIgcaGaL0k7PzUcUK0PK1DIaIZnk
	 to6SuqSn6HlvZsVW/yDhKbOVnxq+Ee8mX9KxZumfYaMj5EPy8Rk0oOy8BY93QUGzVF
	 w1/QV63YzIdMokbTbIQFfonySh/honfCjIlUG4hKFS4vIxIa1O+6Cv35Y0FnZUKwUu
	 oCWU9dhpRem93DITZm/ne8qjLqAprpYIYY7QDVqSVLMQBKtXoRCMzEBQaDvFTGrfSm
	 4KJhOaH6yhwY44G6ONjjA/YnnMz57hIei9EUURYhSBty1PddRKSg7ArZDynJ+vjwao
	 KoH/CjXMYH5bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F66EC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797759357.7201.7986197272005515183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c201bc89dac0e9caba1596414143c7e5fc7a54c538ce353b4285495225cfed0c
Date: Fri, 23 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747977593
