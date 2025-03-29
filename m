Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBAA19CC33
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743241195; cv=none; b=AQHidcPvfGyrlFUtTQy5KKI0cTzm56Y/0p3sykcdqDMJqLw9ZdBJGabOLYJFoqgLyiuEL6gBrukLM/WthOe9T4bNRGeAfO+COYmyWOEXmuP9hqZ7DHUEIUQEdY4qeXqUrsx2PMJcrQTy3qygkCLYwGEd4a2ZlgCeBwAcWLVIddA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743241195; c=relaxed/simple;
	bh=Zyu+dA7sjQHh4ztaLAHhPftwLsZNVj792EfwNM8Qu6Y=;
	h=To:Subject:From:Message-Id:Date; b=khP+Ej5BLlp/RA1fZIe85TK5Gw09p4erh3SyPBOLJuCbizyBYKhEBMqeH3cAkI0wSbfdAbjntZzA+S00IQKgT9yAgQNwqb2yVZhNlwY97dcj6koJuEzCcRS7Znm+7YDTfTu/exg00ZKryjW1kz5nrgoMAJYHwE9QezBjFFglzuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHjQpzlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHjQpzlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFE1C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743241193;
	bh=Zyu+dA7sjQHh4ztaLAHhPftwLsZNVj792EfwNM8Qu6Y=;
	h=To:Subject:From:Date:From;
	b=CHjQpzlKcp8OO8Xj1CmYwYX6hZazWrUS/egvX2jCkLFN9f7wI6SvSd1sRG7v9V7Vz
	 ycbtIr7+TTuurphoFjRe8S0cL0h3mZulxpIeeP8IzOtVfbUbNDXxzZN6e0RYSFpl6j
	 dmO86dR6l8PMqYlwD9ciw4mEF2ykrtUXlM+acdJJgHKbEZjg/pvKzyHaGekTZEKsAp
	 LZL6Dg+RR1JX+VSA4RQMaDT0lBcUW2L1I4KJANpoGK0w6mHIHoH2uJnfs2N5zEou2V
	 /vXk6T3zpuZQnDMzeLj1N2tb7S7iT+dXbrpF80OLyNRC2N+3B7QzUn5XF0FgmOj3qz
	 uvv5t7C9GhM7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EE0C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324119358.20814.13946142830287887604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a25b3af6e1cfdee99a01d7f37551461279082d4aab7481598f1b8b50bff912
Date: Sat, 29 Mar 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743241193
