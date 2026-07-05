Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF5038D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783217914; cv=none; b=fabzer8wEWNBCV6YY3OWKB49G7F3wRWunMuNf3J7bkDGus5x01/DDJZ4GcC3TdiQt/AwxGSxm807PvGH8gneM6gmTVRNlKSRlyiYh9FavZLDZEFXKl9ux9eYyOXAimtZZNcKg+IvDMeRGuzvLDYnYkcyMeUoMjQa9wYHEl2zDjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783217914; c=relaxed/simple;
	bh=qDsif7Qs7hVpxfYlxS1haFjkRNAPSMC8IvgV0yWKguo=;
	h=To:Subject:From:Message-Id:Date; b=Gw14oGQ6jwOBnagYDyQI2d8KveZjcguiL5YSLI6HKYhOzubrVF3829/2JqCUf9nIbCdntRovBDN3z2PKvTJte59wwBpLSJjejSC1Zk1dItmkqY+VfzSsF0uNpg/k75Me0UHmg04oVsZpxZUn11Dgwy+f9vnUUJ43/97DM1CwpzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJEfRpnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJEfRpnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58F1C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783217913;
	bh=qDsif7Qs7hVpxfYlxS1haFjkRNAPSMC8IvgV0yWKguo=;
	h=To:Subject:From:Date:From;
	b=ZJEfRpnUq1GujYoj6par8T57zWSDk6eFaSDJjglFtxfQb+tqSdJHUlY9pZ0cIzppj
	 bGb+cLuB5RmIgzi6IystTJKlxyYOWTcTdKDOe6DIJnwMkt+fJzJTgx98CdTWpx/aUA
	 ayCUs4uzriwToZ5n6yU3wUpAaW0PivA1eYoKOBXqR9hEWMX+uk/TZ2zLiY6g5ERKQ5
	 /gnUzaTMi6D9cbvaVP5JznWCB+REvyxZAwnbhp9McOzh3y1lDIEsv21jNSQf679ZDH
	 OVaXP4lhvtPg94ZQE7027JHbg7Mwz785ZroiKE/owTyV5FyaAX+tFiZ95/9du3f0O8
	 1IJnhsqpKsNWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF14C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321791368.2037.15806038854080535468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ffdef675db9864b1a745db39330169c8922de7ff6de8dbbe812124d1d0c00ff
Date: Sun, 05 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783217913
