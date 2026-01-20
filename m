Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA1F2F6910
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768951434; cv=none; b=rqJsW8c+IDBEVVkz7cYOWUyqJv9sGcu+gQ8Qlu5vEfcU7bgkSFa3XrBKQ2KGZsv7lpJ4aJx9NGKUmG/TJJi0GwTKggYl+jxqnwAZJKJ1D3Cc2B8hyH/v5yPhxffZSwIUCJ7H93Wi+Vch+IZ92FourAHFurhbRhZ/k3IxDAeBZNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768951434; c=relaxed/simple;
	bh=J4h4mI+34mymFP0E5eJnnscmeA2A6BXN4qAQs9z9Okg=;
	h=To:Subject:From:Message-Id:Date; b=rWeGEly0l4Po5qhfiyL7ESmY3VlabLPTP/muPnYgOVUEAabLoFwmXaEkxhNf/0+lSjXHaSG/O5uARNOVmzVutBvEL1Pi2RdBLcjRGMleDuwN/jAaFiIBiLrQWWAmNbmnzsuTRv0txtGchpijlmkTDrqR+z59TU9ydKqkZq9c1/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz5156pK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz5156pK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4AEC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768951433;
	bh=J4h4mI+34mymFP0E5eJnnscmeA2A6BXN4qAQs9z9Okg=;
	h=To:Subject:From:Date:From;
	b=Iz5156pKzFWkcUf3jfQxEQhn3zDo9WulQAuZrMwSJYqc9Nk6hUhh/vW/nxjH96h/n
	 jnhhHAHOWlBwtzv8Al9I6057hJL3pggNgK5smcDegc36J4ipyRaPujwT7IqHN3znbB
	 u3MMgei3hPhGoi7EpZfCodBjcGRBY/fGtanPv59Jr3kv/VtaMlm5Eqe9PWb2xDeIkD
	 EfWbhfeIi378NgJ1nm7yI0oAyOyfrHJ7AZPm16Om9abWgd8Qr+1ZY73eScJ8dHr0mu
	 AovFdZvSjVn5OPorIV450zQ45KR12U0vrh1p1lLhVv03m5TFxOiwfPOPGCDasNJi+Z
	 wPx5CqtOabszg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9047CD2629F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895143358.27046.12733907364362243214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccc54b4cca96f91df494be6493339b30c2caca7fa93b1dc56fcac34f9e279957
Date: Tue, 20 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768951433
