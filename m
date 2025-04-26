Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403A76AD3
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745697594; cv=none; b=amFoXqE45vWu9Hj6Myjrlkc9utFKJdKnoUmsPRjfre2ZmsJjCPIdudSvi/peIb/K5xAKgQLNs2qBpPW5Qz48A+CkagDvz8WJSCnL8GLaAbRllJuei66zSmI2nU4S96vr/tcSQrd0MHiB6Ob5sW8Qoo45+ixP/7nPdQu8P1KDk+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745697594; c=relaxed/simple;
	bh=/EobLFMCDB90Om+KAKHbyk+l8FVSJK58Zi25SdgcKiQ=;
	h=To:Subject:From:Message-Id:Date; b=mkVSLRjc2FOi7y7e32il60HaFGV8jmvQkb/DZ0HbCEw+58+BRWXZgAaOjYvya1Szsfkh0CiLq6i9uLxiHnSC8s64+ateOMYavppaJU3VKj5zkkCZNp9DhQsJBBW7GK8dj6nvP+bJC5r/R8hamX4lMdXYJi9vxoOPafyZYkMPw4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewyRo2N2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewyRo2N2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1042C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745697593;
	bh=/EobLFMCDB90Om+KAKHbyk+l8FVSJK58Zi25SdgcKiQ=;
	h=To:Subject:From:Date:From;
	b=ewyRo2N2A/8cYSl9liCcjeVculHgw3SrJ9bq7crw3Df1ivlG5mZGgAWV86UYR25sj
	 8Taiw+VikzBeTW/FsRyZ8qLavGjkfQDuchjZl6I0RlRoSz2q53te7pWpnsHagK5Y3L
	 z18UUlOqmfzhTzXR2NYU1ivxfiIWtTBfTYW/x2gp065YAqjPrJokhK1yWYCCRtn3SY
	 TJ06Ql9EJycp43GSLlKFitR02NhnN6xIDodUKPTA+A5Swlds+u8KXJSX9SieGL3Np1
	 SpNafCCUVJqPhIcXxft35GT0Kcy07yUzOFnzpkDQWayH8VhiOwivwO0SfAX1sAYq2r
	 UWwxv8GI0hmQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC7C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569759357.15467.15823614980291340084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7948f2a2d32f19e9d1ee0975274566e0a8c0e19e249290397c574d044c88c94
Date: Sat, 26 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745697593
