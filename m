Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200311A3164
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739836134; cv=none; b=DCaH+f/K8tFSczfGLrVxTKkmsFnb0mrXrVSp2dDzZ74KQb6OZhhQ5ifvg5VqxS2/kvSGiGqbMxU9+bigYigmWfSiqVJCWjsBkYarvGKvQFuwRgmmgKzP7ZPyP5a22pIakHTNtM1EmGNMA6vQK6RHSVQsg7cBAVB5ErDxnEnwGCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739836134; c=relaxed/simple;
	bh=+Ug3VcCSKTwzXMxn0Ro6g5g0d1M+iZWh3uDvzWD+azM=;
	h=To:Subject:From:Message-Id:Date; b=tEU1yWSwoLRNOGrSz4LM8FNCbvokIA6C+P3LGzD42LAApA0UyQYfh9SM7Ss2O19Bw7wPeTGjfebOrRvv8t+gV39gSFBP8OfUJflnU76qanMHuQBgcfkD/hXRvLE/+1Fnr1X1wHQJSdM1qUPsNwK5n/NielJbVxNA/urr5z34rfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7WlvIdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7WlvIdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C36EC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739836133;
	bh=+Ug3VcCSKTwzXMxn0Ro6g5g0d1M+iZWh3uDvzWD+azM=;
	h=To:Subject:From:Date:From;
	b=V7WlvIdiLvyPF67/o9OrnhZ8ug0c+quKgOKfArP8rsgCRNiMQePunL6T9LTGbRSuZ
	 me+c9eQ5e+ItjIB9tZ3if98guFG7hY7CZEYyO0uqOG7uoScv5tovRsb6CaBS81MuvG
	 hOcTc3DwICxZVhqK75rcfb6pzvw1voOi3o20TnmYxL+A+1oAEbOmsBTlsyF7Z1y2kE
	 MIPbFiOwqt7DSLJXpiOGTksGrOwvStEyQPYkhn+KwjyaM3jFE2PBvbIlgs8jXpnqeV
	 b9HwEsnAFPF7a3FnxLcnDqGeLeNCaErQnemNdmn/nKIhOqP9AUvq314L2UxNhEW7gC
	 h/qEquD1ZHVhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9286AC021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173983613359.25036.7673794596207886781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b956f249ec9ff5ebac411a6ac935158fe9bc9995fd4e879111db490ce5774d
Date: Mon, 17 Feb 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739836133
