Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7134831D726
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773993294; cv=none; b=tlMWcW2O5u8dAFYlUJOzp5hIW6woXjE3A7AZiJAebqzMvp5TuVIaePdOKtCaDZ578+ZQM/J/9OiqvaO8hvIYi50S0Q++rEkXEI73ZbwR3MuLUdY6VaH82fVVDGbh3FA1Anupxf7Elh36fs5st7U2UD9DrKvHSmj9mLUGAS07frs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773993294; c=relaxed/simple;
	bh=Sl0xSU2Kn6XjSAd8YWHBoyNX1cArVBx3buy5do/y9iY=;
	h=To:Subject:From:Message-Id:Date; b=SeiRQP2BQUL4OPOYWPXH7eMFwOY6lYEckCGjO1+an2HxckW2jqifuqpl0E5QYgnxYBCufW7S5OmOyVbLIZeoH5qTTzh/GdwxE29vmvUFKTDxPeMEiEZfmAYgASfXA8Ed32a7o5PBtYbekGkNNr3uyUAl3iy+JvChQe8joayAEnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuwSUmZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuwSUmZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A101DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773993293;
	bh=Sl0xSU2Kn6XjSAd8YWHBoyNX1cArVBx3buy5do/y9iY=;
	h=To:Subject:From:Date:From;
	b=kuwSUmZfcGlU4pqJpIsN16sOEV0jYcd4MbmvSV41XRWk90a4+pryiILxMOCwtBPjb
	 FwW3NtlSvsJXWNaoDYNUgNkIF1nKAUHaDC9kWayYNJzMnU+WwAn/2u4rCbEhrJbfCH
	 pr6eWz9hhhudO7LOsmnTgXFU2nWOb3bZXkpSpBq7GZ2pjeIamgQ1qAWCrpRLk7dJ8R
	 8dHbH8I8/6vKvLek7C/hzmUIDDomhQckUiOhVGHONuDQ75mKMf8eq+t6SheiY0NP+D
	 JdweFr+X8DPZXKDjlinxdkvlPdRg9bdX2jgESIgTFX1T8kyHazIEGbpqHPBU5g9+gx
	 lugFygYodUM5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4C61093180
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399329357.2857.15889180479828446742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197327931904bd0b18337b78e0fd3dd9882122d71257e0118bde5ad5819b9f1f
Date: Fri, 20 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773993293
