Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567EF1DFE25
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738935354; cv=none; b=cCRyVspzwa9W0OATkx1STjQu6ZgGBVUI3GkLNjre+ikS8av+ZU96byjB3MMc0w0C8Q9oDnkQwXVWfiShRFzvYfQ+rQK5Dc5PPjPDAGBehm8519UZpNQeEv1+T3zy14EspF79NYPyFnG7rBoOBdFDc/r6+PVsLCQUrb1/f4EtXII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738935354; c=relaxed/simple;
	bh=b/N3/zThyZnBz5J5uNifo7hJsg1QUJghx7N2E6dhDaw=;
	h=To:Subject:From:Message-Id:Date; b=uKUQQcT/sSUmPQrHGLSnGMUp1NZImtGFkQ8TvKBD+kgn5QKy1FWK64EYVNX8STXk5SrfeLm2uPEHLGOuJkG7DnQQIQSPHq8ZKAK0etXKlR8ewS79+FqtEO2+pMIDwy7lcNmoBjzxQTxUzAsPtec0i0fmism6OlYCQ4rZTqp2qFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtssuKSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtssuKSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFB5C4CED6
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738935353;
	bh=b/N3/zThyZnBz5J5uNifo7hJsg1QUJghx7N2E6dhDaw=;
	h=To:Subject:From:Date:From;
	b=PtssuKSsjLhFdopQW2PcTS7UucsuTUOcA3Q0MyI0CEYnJO0GEcdgSDDHasvhnUACq
	 OhCAk7p9+Po7S7AjheSqN8ayUv7onbhT5SG0qpHY76kNgk3EbT2sQ3ycKJh4n891Vn
	 61yIlq5tbvBRkZDUihmIim8c9MoQwT3g+fZvMZ8o+lVAieadnJzdIftgiqa6dmtg9m
	 XT8lVdVZOU/F5xlgCFgFNKnbrf6L3T8n8eYkLS9RraeMBXeCFzSMF/UTgwNjLcOuZT
	 n0KV/VvCAWz/7/JkYtwlzo5GrcrmhmQlHZ7ehSlMqD5Q3KHIiMSZACh6Kb6ZqakSA6
	 E9p8rURQVH2+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77C5C02199
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173893535365.30750.7619142829542272639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c240319c92f7bda7c331427adbb0697aa4c58dd6324b99654120090a3450d1d9
Date: Fri, 07 Feb 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738935353
