Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336C12E6CAF
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756900194; cv=none; b=uFBt4Fi/2fasdh0JiVkOGOicoF6dukacumej3wwKSnEFB8bGpc0tqfdpQB6UyzyCc5RuArdZwzd4qSercY64T49i7AcZ7wrfTMOBjii09m5PLynjkooLCxYf6dq4tA+gDzvcvhHuhI4M/Smt0DJnfosdsnwBJ+WpJYvwjXgf9HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756900194; c=relaxed/simple;
	bh=CPwAZfkGsTZ/IYpQMgIxtfjCLKj3qrjZmpismfWFcU8=;
	h=To:Subject:From:Message-Id:Date; b=q0hnZu4R/MdZGXR2vp4+27AdUmTgnhiPmLri3C+Dwm3Be6lOmiRFnR3v7AG+VZGglahofjlEk92IJn7Q43s9ixJk1GChYfGc/w1ckJbMXvioJxaXzPWbslVvwKsX+dcFhP/3xiW5Uw3Ga1iQY5PE42MX2xKF5v1DSl1wu2LWQ2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSgJfLX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSgJfLX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B03C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756900193;
	bh=CPwAZfkGsTZ/IYpQMgIxtfjCLKj3qrjZmpismfWFcU8=;
	h=To:Subject:From:Date:From;
	b=mSgJfLX6CWFLk9qPOA0CzPYpYyNiymz42fqoqdzzVKKUnCPfWoyvnyleowCZ3w7T+
	 mdsExCIW/2wKafV/l5upQD6NnR0zJBgsVMU635+sOzjrSBlvdppK4euQZX4x9v6YPZ
	 cRfk+nt0XhvnxvoI/xYJm9qshAGYWl3r7nPcsQ2A2s+BbT+UHks+7fgKpO2NpwEZtn
	 CWZ6Ao7hUF3sHUSQBwfXvzZK4dFsQ555iy0k3ILkHzWWH42RdXJT1AONW64BBo1PUy
	 6IZknWeuzIzUe5vw/Cwidz+H8vPHz7xyD4nH0mo5BYuPf8HIcCRdaaJC+b/igVe5Ay
	 eMSdJ3FfZwfmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F30ACA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690019357.804.2763454526273581771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732b836451af5ea3093a10587527e471b1664d49712aa060e6a1e73f8544ca5b
Date: Wed, 03 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756900193
