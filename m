Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534581F418B
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742030334; cv=none; b=H6dZwPyqI6dFLqMHlzrWOGI3zHC4bX25/Tkpiqi6eE8mCVGWX9NDXSoBeA5fDCZXC0wYe6Z7+tm9Iev06uZvYT/8bBBGtt5kbFG670rZerf0PopE1rtVSgNntHwspd+mdWl7C+Cc0/wOIhcYscSscwkQJoJV+Cz12qHHIAALppg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742030334; c=relaxed/simple;
	bh=ZIn8Q/YIt3IkyzYE5Goo9XWOH+HqhAEUxeYGLjne98M=;
	h=To:Subject:From:Message-Id:Date; b=hJHIluBHcxNp67SHnURMWy2N0UWyyhjWRlJNJPmgNQKEds5Nn9YtNSTOJ0NGa9BzYWam6gTVLCY0xvMsvJE0yopT6TFOsFOl+SCD9zUeHfKfhllgKRmd27MjcyPDodxgJJF2tZuJcb9eG1pQ+6u1e2wMXiN79ahuMC5L6giiEjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T93B4j6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T93B4j6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9396C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742030333;
	bh=ZIn8Q/YIt3IkyzYE5Goo9XWOH+HqhAEUxeYGLjne98M=;
	h=To:Subject:From:Date:From;
	b=T93B4j6wu0vtR+4km53PF9G/mrwtzMKHNcgLjcQKmxBQ0NxljD7j/JoQUdLdri9fL
	 YQaLX1uvYSccKb1/Xga0VDA4nMlaxqRTPNzSG9eE1ey7CAInosrQiioJePvMMv5ZHD
	 TJm66bsPuklqSvTF7BmkRJz9l5HAlc3BaDRpF1aE0/tts1QDMjlNh7e9vgYue4NWJl
	 gVugBWgWw2aHzVzAXEys/glB2SBCRZu4Ud/rTfTP5WBXhPMOV0ovc59PJbSyKV9gAH
	 NMV/xYJtnq48H+4fG6gxIDv1bSXEPgvpq9TuhC9pCZNXe6i6dQieO2yIJMzzoUaVEQ
	 UdXQVN54y0mFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA610C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174203033367.6138.12742326742829709315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d3e06b45026bfd18cd0965bc34d1dd7d0dec70b0ed3cd4a6b7ef4fb323bb89
Date: Sat, 15 Mar 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742030333
