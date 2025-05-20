Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A2E265CA0
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747735194; cv=none; b=WzU5mk9oHNDPoyr9t0jLDBcTgYpGg9pQ/O1LaJQiJxA/zBskUOjjiyq0SHd3hZXG17htVD3+DsxKPF/PvJm9NMYJc1K+3+QTEVuajhRxVxEKrN6RAiscO1Jk7gFZ1qoUAZXGEFDXVI9QL+shRKp3wkxz55KzIx+sca7GHE7wOSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747735194; c=relaxed/simple;
	bh=jGh3oQqdetEzw4c8qF+O5Sok1U7NQg2O8O2wqMGnHdA=;
	h=To:Subject:From:Message-Id:Date; b=O+aHoaEp9S3oTQrEsvrVn1PcMx6M1/vgsxyGde7AVgb1bApGmR1oX6JaCAk040La0XFtygDZqAlp6PZcPJkazLuRDVs/7X7jgWqe5ynAjgQC0wmvYF2sspm0nmONVld4YZYo3uNDso7l9RbLy6Xr1Om6kupizxHRzT2cGL1jF/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nG+41yyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nG+41yyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A427FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747735193;
	bh=jGh3oQqdetEzw4c8qF+O5Sok1U7NQg2O8O2wqMGnHdA=;
	h=To:Subject:From:Date:From;
	b=nG+41yyzRk/1jUg8i4oknBQTEdkOvM3VK05mt1S7TwR2+4mO9Mkm5TINFJRqKRfez
	 KrW2JE+yDVKaW0bwnmYbG+pHnGd8y3VWAHRe6nvlrvk+2aXDh1QhsiW6LueKR7RweI
	 g1VrcKsh4tXl7C+yTHNBpCNxcvLCFhYDktVlQtUIZBjFixkD+Q5tLcai/IgC4FENuf
	 Q1iSeDyJmZdwpZbY+qL1/WxYch9Ml7Rqhey8Uk0VohNqH5HXoqRVkzu6xjbCi0M8Ar
	 C9sLisWPEiZKZjELNtZ2bNHRjVNNjKhTvFLrKFLtf6EdueI7+ancZxrTSOv0G9RE/0
	 PFXy+IwmkyQcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E7C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773519358.30162.15099597858096909424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d81c2804431d4c98471348a35f045097b1380438de2c9eeaeeae95d835af23fc
Date: Tue, 20 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747735193
