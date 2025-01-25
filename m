Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB764A0C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737845154; cv=none; b=PT2uc3II1W4AEblO5PBXjz8fTwXZGfo86SOZHnXdyM174sSyJPUxYTHaz50H1MOgCqiJfp7QXO5sQwlfGqTlviR3Ls8OfYy3S1wgL47P2O3xEgmjF/WKJtyxuw+uz/F+xbIFm6B//UcNFAfZilD9ioLjF8zT2Wwo05Z7e2Fk7fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737845154; c=relaxed/simple;
	bh=bSX4GrH5hxGZfVAmXGCCedB/79e/4vLXMdHAveGxCVs=;
	h=To:Subject:From:Message-Id:Date; b=RzEcbmKkzUSUBpN27rJNkA4kZ6SkbCKvU/Mh1w3qaoFclb6zHrEWUl8rUncxFcDqxmnxz6mNNdtsK9MFatP0h02RK714vOBmzP8ouuNzvnwEii8W2W3iVyOms8Qxs0vucGpjf9gwI0wktfywRynPX0ry2wVo7EHXRiLWXGLS6G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJMY+QZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJMY+QZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0457C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737845153;
	bh=bSX4GrH5hxGZfVAmXGCCedB/79e/4vLXMdHAveGxCVs=;
	h=To:Subject:From:Date:From;
	b=hJMY+QZkeUIntlBqAV3SspgW7qZv7O3K7sxFD2Up25l6uH1JBy6gwxuS3dVIXijSa
	 qqzwyYIgqB3wnGDENQ2sx4XrYN7VbDnqc9z1TcIsEo6OpzRqfy4f/b+vf4Tt7ccVEl
	 tSttYzLDWhFVNzv9QXyqTyk9d0JzVGa6kNmqNC2aYNTj2O6kr8fhfnaduFzLKnk8Ul
	 527uFT8VWGH79++YqS7mfMy4Eqe/+jVsMX/R0qB7LfAw12sA3k/q05w2t3UoYzx+8S
	 gQ9eKc9+LwCI2ZkUg9BfNuhtIh5HSNWOCNZ9x3cOqLHCczgbKNcojRr+LReE8n6wv7
	 rgrH1wIplkDig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E769C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173784515357.16867.1217139780466014892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6012eb039bd3d4a036bfe92b7aac4f1433e56d4c2f00157ef6c3cebb51faf515
Date: Sat, 25 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737845153
