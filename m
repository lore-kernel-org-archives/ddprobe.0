Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D098930F938
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785900034; cv=none; b=ujNJexOhUfSYXANpKc4oOUFLRT7TWkTGJ62g+QhnDKO+gEnU2zyhFtPHovUY6LI1tPXuD2FMH0tsZesQO8wvHAh/u9TmJx0cmdKTHx+bjDkqyWkfLO9sL3Mju7PMzYruMswlUjBTinD6VOvmQwddx6RsiXa1TH8v9xKY8QGjY7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785900034; c=relaxed/simple;
	bh=De7riuca8FXeKcwWdOB2BK8UyzQSLgz7vjkskbEMHwI=;
	h=To:Subject:From:Message-Id:Date; b=j9v8iubLP1RfyTpGzB5nRwuvqQ8AAfctvLlm5NqEBrfOlTKVs5COOqMI2PiyGRN7ZrrJ7aer9UkocHNcq+HxkBRDJx9L8cMhekuQklI3gY1SyS49nR1WZ9QzTOGzRUs1uiRFsQb9jrTlyGlhC7shTveFa1ApqxEa3857QGrMxTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xg/rfBHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xg/rfBHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A6CC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785900033;
	bh=De7riuca8FXeKcwWdOB2BK8UyzQSLgz7vjkskbEMHwI=;
	h=To:Subject:From:Date:From;
	b=Xg/rfBHYd+fGB1M/w7z/WZ6zgC/SbiiayZn6RkcDZfRYY929YA7wnwMRJ0iIvtUrX
	 Ca3peF4urLq6ybRWnMrPoFQM94vEj/M8ZS26kYD6PLRbru9sM7OjPHa/3mD1HW2IV6
	 2yCswKQQGpt8IyGFxwJqXiKze5qHHzTTwxtbgWiTfoiikFjydT5l/cPklICNprnAli
	 +nabfZNijf8p/S8wmTA5p4l/sLZWwg1pco9Zcq++NYjp4jRFXRQ5X5SaKLadnb+t/7
	 VFARghGtXl74ffQ3wakPmQOgDhKylLKREUthp9ZYW4Nw0Lje7s2A3NJz1Sie1qjPfB
	 KA4/IROH30pYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF29BC2A09B
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590003369.15534.16241228269984197049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2223b968b110af1cc3747f7f0204e37309546b629a5ed3e860a78898e1b1a4b
Date: Wed, 05 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785900033
