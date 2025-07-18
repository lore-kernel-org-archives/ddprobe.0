Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D472E36F7
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752809395; cv=none; b=Z9jLOVPoZq4psaNsMIElSFAtoe1vpMFs11koMBTJ5qyN7X62v28n/k5erZi2cI8LXESqTgSRZlU9pD9FcRZsVMZLAndqFdHQp5/s1K9D1FkANdXSkM5DemOF4CKcIJSSCabO0qy+uat639SEDB8e9iLu2HuH7ugOJoAnj1jgs68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752809395; c=relaxed/simple;
	bh=fraPuxiGIiOXHXWm64giyafQLq9Eqz4SIb31Vmij5Zc=;
	h=To:Subject:From:Message-Id:Date; b=XuWTNOpPxZxwZNKrzQHnfF+fspwiKqCaM/XQUsn/6piYt8d3roIj/xtwS0+E/htWeSINgtvbeZoMUy3W2yAD97CzyajkOAskMj1dGLC0YB2fcjxLmhfqqjRIAvcVdMqdop1eRwZy53G8XiS20vHjZf2Jhak4PM7SJVjXIk0vD4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6WHO1nq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6WHO1nq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9169C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752809393;
	bh=fraPuxiGIiOXHXWm64giyafQLq9Eqz4SIb31Vmij5Zc=;
	h=To:Subject:From:Date:From;
	b=A6WHO1nq31wW7kTYFdQmhyPcc8fURSUW/T0Aw2FfBdNIuBStAIE5rH64SRKhCejLo
	 gzEiq8GGjgta+9h5jK3q3adIihje2J+rJhMOzE8swi+blgObDyRn15SPeL30xHHuEb
	 Ov3rSMUEI8Esnb0GqYGFVZSOPPiGJFqbN9AGHeTHgQ213yJf7D2Q4ceHkPnsbjyqeJ
	 5+l57B7WngQAo7f4lpZfXfv14eLfWDr7yZSqa/ygSs9TRwDujQojbB6ffwr14rIIFY
	 ZUTBddNNQfq4S+YfFMNqy+opuT5c6EaAR0b2Y8ko4QCQbyPPdPjhG0ctdtsSMJAq9C
	 WpkajtsaUPtHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CCCC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280939358.26534.11742702259022791812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bbdd3ce017172f7ba5230bef25c8bbd98a6fccf8441c56b40fd2f57f9dcafef
Date: Fri, 18 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752809393
