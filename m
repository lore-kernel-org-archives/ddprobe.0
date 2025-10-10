Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200121ADC83
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760087394; cv=none; b=cJDP7yHQFZuoBaZ+yCH2FbT9OAB+p1SYSk8Na5lE5KjpEcZx84aNQaA6L/Yh+KoXnwax6nKUS1GRrjoHSWTodHLQUNX0Mx87AUFMjkQejB6Cfpm6pb7iaBDwfyYABNM+NRdMpToMmM+8R64TmYUeQ5edxaGmEkEd8ebbNd1JE2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760087394; c=relaxed/simple;
	bh=TqDAz1zMjIZxS/4VrRzkbdfo0/kgHuhi9iCyB+Al8fo=;
	h=To:Subject:From:Message-Id:Date; b=kANoLIQJn/TOwJB+161DqS0a5MQiiNWa5k0WTdBrXMPyVWGXil5khFx5cTNXprYTd1e2jgn/kNZHcT0b+WajvkuLPkgjnJZTVfK3Uu6fbMVYZ0Yn5fWS8MV7kJ1VzYwDvWopOs57gXw3OMc6F4PKqeA7H6tILSnG0DGvUpESuYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKBV3wc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKBV3wc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3886C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760087393;
	bh=TqDAz1zMjIZxS/4VrRzkbdfo0/kgHuhi9iCyB+Al8fo=;
	h=To:Subject:From:Date:From;
	b=vKBV3wc2R35iEkgLoVFr8o4ZpS+qCF1JJIW8DyDJxYLjjbHymzvpq8x8HO/nmM7i3
	 eVN0dKwj55N5oJIsqWMpXAyjKa4uwn5LgBgdEeNWh36XcRDgqrdOqAxCk0gPVbXnYj
	 hRTUTe0DnHE9qHD+wU6s0IjoKTm4DPB7J4nzTni1Js6K7eN6/VT88KR+Xbun+hPxAu
	 75gDVqofKpRRAjH/a/efk4xwltlwZ18lgHiBsvW0EQOXulGbiCF1IN5/5myMehfbJ8
	 fw3qQF7WXu92lP3iJ6MPQaVfaPChCB2xQiMV9AeCoQNnmSwuZC5k8j2mufjAiOoxB6
	 W6OsXmmj40ovw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F804CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008739358.20940.12231597580643463857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde75e3ab3cac047f76617ac42b328785f2f8edd16bf9aa7ce19bd40a9ca04f4
Date: Fri, 10 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760087393
