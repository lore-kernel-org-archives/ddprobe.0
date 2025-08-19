Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD09264624
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755585594; cv=none; b=O9Ywy3OwlYL7HrY9YLUaAKFS92qtQ5fp937kUi6tWYb2B5wtcUpMvwcyeDy3QJbmWXXtwYA7pD6md621Xr6N5sjKGmk1WsIK1fzhKl4uSvmVVB9LGqTMxerVYq7e2L9Nd/1+REQSyVhuBxF6rN6QXefTZXBBxQyYtFL2zjC+drw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755585594; c=relaxed/simple;
	bh=rO2P7QeiPkC7G/Yn8rDlWd7kYTs5151h1bCGXqLpfAM=;
	h=To:Subject:From:Message-Id:Date; b=TcXjyNBVMBl4AmNUIsXRToTqz4sovhmExJXttHP4nfKw1uWWF9CIsO40R6t0vsQSIhb1Q++NX6Z8Qd1tT0PNlsPMzdMPnZvNJ/Aqa78Z4P7Dg+Lk2+o0uBpxc6yyu1F3dnohbyLFJK4wFd+Sqeivi+D/dIK2Pq5z9Zaz1aQVvCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUVXcKNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUVXcKNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D929C113CF
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755585593;
	bh=rO2P7QeiPkC7G/Yn8rDlWd7kYTs5151h1bCGXqLpfAM=;
	h=To:Subject:From:Date:From;
	b=LUVXcKNiYKPhDyuK1KxhQ9Hv/sK6Ek4UogBsT3fIUeHmkW+MMP+aclt2ASVZ0NYno
	 UMEeuMzjEfyLYxSNJQ1hdovJpK/cvsq3kQo3hV7OTGolZdyAvoGrSpFKvaexc5hXBo
	 yIEwfzMzCOXjHOtkACKLCb+tWGU+s7IbLpkxvSjO9cwod3z5Mb7CEyDJhu3z8VSr+Q
	 0d4bUQ6+ITbYWW1NeZd7qpeTY00+qOD7L/ptknwA52Fv1b1TovfXxsj7u+LcKKCh/h
	 piFYqlP77+Cw2FBa2yVnyeZIkWOPQ224QxCZb+6DnDsbq4lk/XxwHv3HXjUAP6HZSn
	 2+ec4/ye0OJeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A71CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558559358.18247.2470359891383097123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de47034e576b223601ebdf0c1836450acd2ba8af5ecbff5f693dd8d93690f95
Date: Tue, 19 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755585593
