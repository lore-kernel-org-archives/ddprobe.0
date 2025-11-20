Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7CF2C21C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763673714; cv=none; b=O8wPtW/OmB6gwqAb83F3unDYoiM0wgQNIxVsDK9ticTVt0ZoZFcJfMZYVLChhII73+Z+/xlCwN7erR/M+KI9lz5NBtVz+IGf9+5443TvXvFSccZ7DTDOA/8DngZBw0HmWSy5QjT9LjkDzwJgd85BOtgl37FjII8Z5zK9XqCxLIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763673714; c=relaxed/simple;
	bh=7bnMxUNwNoKtOjDEEIK0zhnnIIlwcD5Lw0Z7vZs3Xbg=;
	h=To:Subject:From:Message-Id:Date; b=BP6xKeewNhuXbjuq9Rb38x3bIJSQfnXCk54l4UE3Dgsgxmz6RzuJoJJu146NBVHI7cTvZvZBo/v7o+tDiXXWs2SIa0SPItV1fDYbWxd0Dy78d4ewH3YYQUSxzh2R7cLDkEKN8f1Z4IAUJHA5VI0DUyMzbkwjn/bt386Sgw4dvTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMw1343i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMw1343i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB6BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763673713;
	bh=7bnMxUNwNoKtOjDEEIK0zhnnIIlwcD5Lw0Z7vZs3Xbg=;
	h=To:Subject:From:Date:From;
	b=GMw1343iW01ptha4pf/TOitefrBHLcFnz2TA+1mjuKf7SXZbK+a9KE0X8b4fqKfsU
	 3kj0ZIeZ52vskIWUgH3ko6oan0Fsup2k54BkKoK6d3jfg/jqtccSBncSOuLwZt/ZcH
	 29jlldQdnrJG7wENGV9i/hfHVz7P1sw0VBJBj8DAKOqo5micRmfBKbW/UzagoIkUd1
	 ZwzyqnnPOd4rNcc5YruftMBxVzttVjyYjPO31gcdek9STGOd7/xRldb4F/lLw6Qmz4
	 eN29md7s6tciibiH1PKMeWd7D0muIQyEtpiEJZ+vOYXtAh4oZ1GMtw73dvHTWrP4EG
	 t2h68GJ/EWYVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E56CFA441
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367371361.12133.17991345766533313651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5be259447e656c8f7f5c9adb9076a91b65cac753c8d67cdd3fb4f267885c0c97
Date: Thu, 20 Nov 2025 21:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763673713
