Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2922E54A0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762522194; cv=none; b=KCrlhHSyaVSkXUfjb+JjGDjqdmvtywAAPM6ru+dAl0HTHV7zX7r0Jk+Yytp6d1x2BwG71WOVonhHyi6WEjos0Jb0Adn92lNVNWRK9LTdh/Qt4Dv0DbiOo4g1HBqqzx86p795aik9I/hJU82LXmbh4IA+G71c9k4h/IqPfL8Y0gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762522194; c=relaxed/simple;
	bh=tj4eZOxDY+uyYx6FEnIaUnEifjPntPg8y6HoOoCZRxo=;
	h=To:Subject:From:Message-Id:Date; b=QX+ke7svKhlVxttAMhWFi97mGHH6UhzAnzcTXHGhzB4zn3pw4XkJOc6DVT71cDScJwo56UOmCBBuABOCdjyHQt7LMwE608YxOz311p0wJjedduhmnf/JYCt5VgtidJZsmYuvWbjYKG8OCgSNzXEhn1ZtjnkPx9treEYqZ+a37ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owO8dt98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owO8dt98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0355C116B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762522193;
	bh=tj4eZOxDY+uyYx6FEnIaUnEifjPntPg8y6HoOoCZRxo=;
	h=To:Subject:From:Date:From;
	b=owO8dt98rO/TnBvmj7Fgk86vvcQuKFvgSKG9wYWb05Fo6yIaLzraUMZyT7PhBhPN3
	 gdF/C9b37TM6wHbQs8Is2lnCHwvQH1y4VwkWazbB9jkx69d9kIjchmjfjO/9/X3Qiy
	 j+MY6NHoVG5JPvoMVAdxMZJQcy6VFY1V8en13auanB+I8XhwFeo0d4LHQOWUTRWa+s
	 SW8OJLizZXcdXq61JwerpWJxeaeOlR/VRUMds9DKmd9wAS7tjNqkn/wayKGXeZu1Lm
	 2oCr0cWgZ053fyxuH/rkM5r1a6YnqEFugdrLTHREJDZCoKWiI3k4bUaE9EDxUY5adC
	 lZ1yjiUbKb5HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926ECCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252219359.10184.3035030888367114275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30389e1c334e366c9dba87fa52d08194ba488b7c2474d7d2e1c606c9f977f236
Date: Fri, 07 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762522193
