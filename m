Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255A419D081
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766778234; cv=none; b=DZWT1N0hRKxaB8XU3BvohZOFLF8Uq9L8RwB98ceJcmGXW9ZWUbPg7jeFfiaSwDYzZbCkpdcYN7R+2oP6Z04M7BtG2Fkj7nq0UNk6QuhH6qZYGSqkA6aVnJom5D9eSYIhcWIrWQYwwyv/VvfKoVVdHiRUShvhWXMiG/YhGHEys9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766778234; c=relaxed/simple;
	bh=fpE8KHK47WRJxheqTxZtQMuYnba4wHwhvTiK7K1i0GU=;
	h=To:Subject:From:Message-Id:Date; b=DM8O/y8SK1BpcdMV6BQPvd5vxs7zWLmN9NUc4cDwbcy3RAOS2cqzwANF9Bzb8DoCjKC2vnwmVqhtFmtEKwI1vOtwGg6PIlL2N3XFL+zn9N9/3CEVgCBYybGuG2BbnIo3MUau44+v0WCGNhxz2LKQ2tHsBpytjTMx++6PQRuceSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxSKV4pe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxSKV4pe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3005C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766778233;
	bh=fpE8KHK47WRJxheqTxZtQMuYnba4wHwhvTiK7K1i0GU=;
	h=To:Subject:From:Date:From;
	b=sxSKV4pekhQ9oc3U6bazwVwMNk/ptAN+jAYi3qyvDB1gudk9vu+xxQcK0iYshLrYM
	 RTb/gr+2BWGMlUsNftyXnzz0rPtNZ7VXei+cVpiRRP7sTaOy72cXiS95FZMdSZ3zqc
	 mjhPcWfIgScrODpeJ/PRa2Bzfv1lZXt+Q+5G6f3ec6tZBI0w1n+tNBpnn6V1kUrDPe
	 4en/UFZHK51ZDvjkNOHLyWLyrBXhCTAfgCS/wbYqF+UpH0n+ApeU4qiRbHXRYFyffF
	 tHUKCp9Jbs8jix92ibGMMWuuqnbSUBnmyb8dMBRfmcv63i6ELbPAEy3DB1ush6q5OV
	 lbbk9W6rXjc1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FEEE8FDAC
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677823358.16290.14183067617602760949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00544328974ffb8cde85359b2ed3e2f50810f2c26eb19cf2df664e6f4f9f0f5e
Date: Fri, 26 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766778233
