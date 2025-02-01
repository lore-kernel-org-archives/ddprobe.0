Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BAB2B9A9
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738403155; cv=none; b=TYkyT6wYFoHGKaK9xkbpX+1771EwumgBZT6sO7pS3OPw9xzFUOPllFgTlSr/EN5mWmeYdyTK6IITdfjnmmHIlB6Newn2XeBVNkReVqEbOFTgAZWvtG5Z4DF0eQDujY8AuZH8e082FEWsqYPgY3tOyNojVuqIZmQmSeFXs6w8Bzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738403155; c=relaxed/simple;
	bh=fMf8Ju/JByWc6jiIPR0pnONWwKDYXw3kJHWVb/ArFuQ=;
	h=To:Subject:From:Message-Id:Date; b=PtEqkz5knYAiF6v6Dy8INx35YlI2lIkQ6sWPn5Yd3mDYWptD8ZfgEj35M/lWfI2PCrbzRCGOtI4N1BHAgZURuymMbs1L3HRwTOPcbs8wXlKtMKybqTMO1gnaHvHgESE8fW06ieK/NcaLD5FOQTFi7hNAdutu10JDHb+249whAC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cijZJAmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cijZJAmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5574C4CEE1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738403153;
	bh=fMf8Ju/JByWc6jiIPR0pnONWwKDYXw3kJHWVb/ArFuQ=;
	h=To:Subject:From:Date:From;
	b=cijZJAmWmfp6ho8ZGmcvnTt8y0I+KjdSegoLT0knnM7rx1qNHhZQTezZHmcCtXqeS
	 JPj8FgRjdXf+xkGbwjtL/YzajsBesh6mY4QIrdb7O+GO0M+uaYIYpB0GOuWBDZtZYO
	 eGdntDZjgcKo747QEG86KZLtjXAhRum4KbJPnBb078AzSxNgHg5fcSLGBagQEex8Zm
	 IQkReTQV3+F6nbQkMBPaEZGwBe3g0tXsggYapW5EWoypjxoQSDoWPr0XiWQjUUF+nR
	 Cif2qAjVFTjkjMuEkQcoEsRenwx7w9+G4Y/OJLuKFhctZv2ePxVJ4qDUNjrpfZqfP2
	 Miw/rshcMYcJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED19C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173840315362.30330.10591850249802859654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2270f516553d5f3e89fc89611233d5246d30b90736515c730b1c9eff2a232d70
Date: Sat, 01 Feb 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738403153
