Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8574A04
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744031394; cv=none; b=EO2TtUcez2QAIdbZ6qjoTNAD2rC110v2Zg4nFKm5ndzyoV8uQKN7hbycwyYhVGMPM17J4hsiZ99jmtEy4W76Pd50B0VRRAdMiTzJjRv+Z+Me2oy5XGw/tJxNKryKlZnzRKUEqG4fBUmEsP8yg0S4fzO3RAHWPegq7UMSlsvDVzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744031394; c=relaxed/simple;
	bh=8ID8xv0kRjWoSbgw12ad+HiOOl6oHwgm1qCcAUKAIXw=;
	h=To:Subject:From:Message-Id:Date; b=EZ5PQDyD6jJGHJIB+UE4/WqubMi2NEyMhPN6TIum/osC+EbE6P4cbJw3TJhBekO3Gn5mzMcAbrsY4mDXimDdo2MyDIBT/m9a1dmk7ucRYz+Np3A1rhcYHn3bO1pOTVWQnfVbLzz6TX8NiqGF16Jl0e37TJqwq+hx/ZRC9a6P3sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0Ch97tw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0Ch97tw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4901C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744031393;
	bh=8ID8xv0kRjWoSbgw12ad+HiOOl6oHwgm1qCcAUKAIXw=;
	h=To:Subject:From:Date:From;
	b=U0Ch97twc/H5HHpmPdk34ReuRWduh2mvV/hTcrLT3TMZiyRVlL30Ce1VW8+R5DFcN
	 WKDbecWBz1ysgJAYuhl6L7bpehsE0TQD0/5oUVIVmKRWgMMRdSgD9Pm/qA6MYtfzwS
	 UfawQAcHYBHpJx7wqLliz84hIusjs88wpmMMsJnxOAgcMVtYJFC27WIKR/SOvEiKj+
	 LE1exUlPZulMj06Y8TKteoKK724PDsIeE0VIi9qEtoP8gBxkHcVcbkYOXOIvsSt8Es
	 GljWoy5A10uWo2Wfw3a6XhE4UqtnUnEPzN+wZSXoFBorriaZpdo5+Nj4urRY4Hj/If
	 LAA4g7q4L5Fqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B2C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403139358.32192.4328077214342379146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1263c81b5528401f9b470c749a93f094904215cd3bcff9774e5239a69b3d92
Date: Mon, 07 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744031393
