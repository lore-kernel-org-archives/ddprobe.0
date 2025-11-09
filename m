Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186E21AA7BF
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762706994; cv=none; b=lHTQjVdcudVWxVNiv353q4CBcGjfXHV4cukI17y4GTgxhtteTftOEXqTP0lEbIm59yAocLgsEONVShE8+xkXvRMidffUcFPp0qx0sAgm8qSuaDBHrBrYaVoaMNuOjbMZOsmd/S2k5qulh4d9dMqiSQWY3+cr9ISsuPgjBDTnHoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762706994; c=relaxed/simple;
	bh=h9hosNCpZ2XnL9pCVT7txF0XJHp9C8/MAaNikGomf+Q=;
	h=To:Subject:From:Message-Id:Date; b=dyDiflXAa40beTtMbnuFrL0MJ8mEOM/WinPor7aWTX6IkUdvp3fKTPZSo9LkDGLVFRXtYmr5x0mfZlwXFR8NVhGeX015VJ+IiuiUxLvhxmjAKTSaaP1M7UL5w9rcsbsxJ74p4rPjpUZi30xFVx00iuwWrrUXK9ZJm8ISORnUexg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWP1+Ykw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWP1+Ykw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9763C2BCB1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762706993;
	bh=h9hosNCpZ2XnL9pCVT7txF0XJHp9C8/MAaNikGomf+Q=;
	h=To:Subject:From:Date:From;
	b=jWP1+YkwUkv/RcazzgSlVOgl+HW6cDeRFi5BIHlCl81Vop8VUnPSUHnxKzwuzIi81
	 uJwqlwLK4gNGprqxSSaqQDFAIZ9UmkcKf8zEueQIwps+hynd0jPjRz6bqdEFZR4x1u
	 uc7J5kla33E3JLMWqxLoQa/wo5P3qJWsWbd76jHdGVPBYqLUOfUAGCqihnYvOy0S76
	 9tlkaI51GJhY0nwEFT6rBZJJH55dCf6nM65FT6vTEmGRR+MZiNHM9HkuiwGmWTkmNh
	 o/aNAb6a6pqoVtc+P8QniAnNiKDEvFDU24j84WafC41B4Vz9s4e4CbFrob0WHI0joQ
	 +GIwu5ATy0+rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939D7CD13CF
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270699358.9097.12350526775593491785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c85db0a7f9e993086b7d6bbdf066043127af81a34899d004b71d1c7bb87d20
Date: Sun, 09 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762706993
