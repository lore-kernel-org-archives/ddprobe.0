Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49218126C10
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739618935; cv=none; b=FCy9Z3qHellGPJ57Dtrr/gapZNjUb4lSBWANTQhP4djzVBxJXnUFDGvVAhDS+u2UCjZvrjAQHRL6oy9l4LbFy3VRKkkp0S9PmApSvm02A1ujWullPwOiFmF8fd9XqxQaxFby14tWfJkzY7ci+W8LohV0Jqo3KGQT5ulwsugZIGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739618935; c=relaxed/simple;
	bh=zmUZIY4j9qtNZ9+gcS6WwyzP+M2i6no7SdTPGHrHJ7M=;
	h=To:Subject:From:Message-Id:Date; b=B3ykz9g5nXrD9f+Y9/vBfgqaSwPZDz9tHQLpWpO45BBK/tD+9i9HjUthS9JY0Pb9q3XAZnAiR4BDdn68B6JFZ4q+A0yidIXj09a44dY8XKruOL7zQTS8cCwVRHPEBO5W047MQGsJHs/qnul49jpFqay/ZTMPeR4ZQSCpmPqNjq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vG8QBBoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vG8QBBoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FF3C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739618933;
	bh=zmUZIY4j9qtNZ9+gcS6WwyzP+M2i6no7SdTPGHrHJ7M=;
	h=To:Subject:From:Date:From;
	b=vG8QBBoWuTU3Y0CWyfZiSS9gGHwnvB2bbeEHhCXrPPhkMOeg2ei5My/CuvfQfu8ES
	 CzublVmBnJhV5ew/AxFyPoFDeqyXnCH3Eai3d4Q0ah2cowUM+cBemz8A89y7YyqpqX
	 UI02gtpJ1rERXu1cDwKggopNyWN+Ygr7QcmvI0pjqwYzNkJdfXEOkfh6fW+g5o6pGv
	 fkCl4vd/EI5ehN0iaCFolIFu66PBt6MPEyi7/ub6aAR9Pue6XZoTHhtwrEa+B50sQO
	 BYk+qaOmpf6d9BY1QEIEoRx40YD25DHOM2aJBmooqzQf/83qS7E8S5KO3k/S45fQ5l
	 ps/dO+a+5IYOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE65C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173961893360.28583.10413264723769000317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45fd8ff115623ad7aea05aaaff13a2ef17e2758c7201a4a841e248594225eca
Date: Sat, 15 Feb 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739618933
