Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C1A5479B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751149794; cv=none; b=IA+uJF/ZlbdhZP1aBxuRnXRL2feBn2ziqVjByqEfqmwPu/bfGbtu/i3DebomY2JiZ7HTEvxiQKsNrBMMt5Jfp69SLgBxzVTKB9C9mgkvI7zCKa/str5PXBoQYUIw8XKQoppO0HqPWovxNSsro82BbARpqLlQ9vYt+wxFQEFWmkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751149794; c=relaxed/simple;
	bh=V0DS9ISDR2IQUijSXLIgOSQfSylM3mJ1EvvJrQpWXu0=;
	h=To:Subject:From:Message-Id:Date; b=YgOJ4FbYXSV4u/7if4fLQODKN7QrQ5gqluAvt6bKINaO9vWgOUtHVv3ULfqzV98rxxt5PDCSLAtftkstomYzLw8XTFpiFWepK4Ol6c0sZTHMJhjmSEnQfV2X3TVK8PMii2egtwDyqLIQytSOXztG5lYFlHawiRIOyZxv8gH1+Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBwvXP8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBwvXP8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A334BC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751149793;
	bh=V0DS9ISDR2IQUijSXLIgOSQfSylM3mJ1EvvJrQpWXu0=;
	h=To:Subject:From:Date:From;
	b=XBwvXP8IyMUDHTJdMWuASMje+ACIVC8uDozkFvDSruO0qzdIwH5rhTTVvyO7thb/t
	 NrKgLdSZSBO+btJceqRaojEb07D+7CCoqCcaOBGi87Y26vvdhTpUEq8uD+nSGa5TBM
	 heeJp9mkebLAWyEex5724rPt5T5O0/8v04i6pkMbJn4qbcjRwtLwpVXSK+hN9mk72A
	 zcti17jWuJildNI68U+oEmgJwrIlpVv18paNAP3b26tdKocwcEXIDak/EfN2qYikRA
	 ldxPyg/DXf5TaSC1S9mW4Y6BW6wOGk5Sg0AimdIQZJqjFxKWU76a8SlX7Z0tvID4Uw
	 FU/qBZorNCNrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946A3C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114979357.31417.13574106716499091747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b54d19fd7263d082f8e61fcb69e1d4c982e1d18ab3a20e2a982a29b6bfbe202
Date: Sat, 28 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751149793
