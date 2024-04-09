Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54EB136E0C
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712677697; cv=none; b=gz3QtuMVs8koU+BRXw8NtdWWE84BBvHuNjiJTe6KDoBdrsMvtIErsX3Lz/EVjoFbKZ/R0nWQN25FNTUDUdag+YcdY56Pvt0yohhiJk1GLeqQjHmTgRwNEedC6LIcjObKnJsIrqk4GGO3n8Pcv+nzVzGrei0WJDdy6PAbZuKiJDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712677697; c=relaxed/simple;
	bh=YD0skO+4rOiar85nOwnRDMsdw7vclHcjOItbyB6vKdk=;
	h=To:Subject:From:Message-Id:Date; b=J5OlrlNMWKRmIeKY5C/Ci5r2HmORdnyc1fH+saeFDqcjcktaUfD2eb3WFB6iYol943gF33srCcE1AqmFqnr2vX5sKkqklRdaDUvrdfJHViWywNtYKJ0jSRYt5DrwgWmjgXHUywS+4WPPtRSeCruryrkURb+QymKOv94CfbLHjb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2i9wA03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2i9wA03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88532C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712677696;
	bh=YD0skO+4rOiar85nOwnRDMsdw7vclHcjOItbyB6vKdk=;
	h=To:Subject:From:Date:From;
	b=U2i9wA03XYk+W0d70epJlcTKF2+8OpaEycWm4JCtZMxfi/YyywUR5rpmp6REf4Il5
	 1qjPn0a2P0GFtrZUmyQWsLimt+MrSyVYHSCst27aZns7TwU9m3/OThEdKPlhizQGlj
	 CY9kDewEAIHtpejQe5+9iVPScodrhDcWoS9r2iic7VchqbnEBYXC33lK9jaS//dSzK
	 s5ydgnBIGwpMywSya9IIsuH7JRnnLfbgxxaDh2bXKGmVoNi9spXERKG8YYQCwfriXG
	 LyqxYp1XCX9V67M/ZxYnCzwB2Uhzl3fuDJ/7tLgAxtK27xdHizwxzwtYL5JuA/GcPM
	 QYmVu6dEepthA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76520C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171267769647.24538.15431155901086883795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f251801cf6e61ad16341334be1e7ce8d7ffebc7b1a5059ee5164c020df204749
Date: Tue, 09 Apr 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712677696
