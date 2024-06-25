Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632DC1DDF8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719342203; cv=none; b=o4REsWgv8IbRHGn9+qo4bSl0U88TDz4mhsL5dXz5jhsozZBsd6pzsB42tL8sy++Kt+0L9t9fZTX7fegavS+jDkVpikDjc3X4byJoavlPOuGogfc0RXINXPvCjzJQXX7dGFDgGItAfUZWAr4L5vB+IZLdWf32eAVG7z61VhY4ssw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719342203; c=relaxed/simple;
	bh=fcJdRJXnSaz6nu8mEKsmEP1uR4nb/kKLHtVJtdCjRcE=;
	h=To:Subject:From:Message-Id:Date; b=KChylV4SwvaMi1z3ctuHnELaTfwWanUaZ1w7bvU9y2emwjTSKoV971A/SY0u+9cW35Ax9bhcXlwGMGBnNFCjvS8L3lIGVI78HQ4WWTkPZrjSEXqXjY5ly2rwMg1ZZqzaQBd/cUviKrbdeAjAJHaaAqhWQmJh3DGinCh7Kz0bNaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWN7K1Hx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWN7K1Hx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBE9DC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719342203;
	bh=fcJdRJXnSaz6nu8mEKsmEP1uR4nb/kKLHtVJtdCjRcE=;
	h=To:Subject:From:Date:From;
	b=uWN7K1HxFBWXA+k4CRanSl1cb7HeQ7BgN3qNgICbY58pjbxDyptFzliLO4kOJwzCf
	 /RF4LJi5flzvLaf27MRJDKsMqWRPNJYmVePmet1BnJA/T/0gBGB4rMqd2i9zf1P+Nj
	 to3HXV4MN0xHiKju7w4+c+g5w2kieWFAj5F5zDJZuH46sX1Gkp01Mp9oHsySt3wAA9
	 oEQrim/VzmcHzExARfskw36dpGb++kUA2xJuQu+FM4qHT3EWAg/22qDfKm/9K3OfEO
	 4nLXN4R4ZIMu5wXuyo63JCk5f2eQAkVUz528UIDoSO+z3siYOxo4lp/n1pJfl+Gk3D
	 fOL5nNHfK4iLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6697C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934220286.32346.8239538299274918836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3e884a7bc9e431c81916ce378ba8fed7c818dce2b746a9a238d183257e3c86
Date: Tue, 25 Jun 2024 19:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719342202
