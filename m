Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E39238C25
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752147594; cv=none; b=QFx2SefZO9uWJPlprxJ6eDwrFuSUOqtAwE5kkJ15RvgGviZJt3MUs5MHzOAJCkXQ+Apdt5/HzEw0qQPScw9fu5S7oVSVblJZsKRKKwts9ZsbsI3tkzS04vbIF5iuiUcq8ox5/AfJX6HnzvZX8TtKZT3sBUumGofGS44FGTjZjOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752147594; c=relaxed/simple;
	bh=fyJD9COdcZMyBI6OR8R3BtJtimFSuBmbmGbfaelhcyc=;
	h=To:Subject:From:Message-Id:Date; b=iunhvxhOuDGaB6gWQrOXCjjWobFQBFleuz1MZl7aQYu0mP2zERkYu4XGZI+Gozl3ObLZJxeBSrLr98ruh8Is1i8cG61l76g0ZANqezUYdSSUOjcIl+tTC/fLJXOTpUEWxpWdjmoVUYIwOBtFxbeN87cmgesmDDRYsiQk2Z/ebJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdAIHx+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdAIHx+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EB8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752147593;
	bh=fyJD9COdcZMyBI6OR8R3BtJtimFSuBmbmGbfaelhcyc=;
	h=To:Subject:From:Date:From;
	b=fdAIHx+DvpYnNv2XlOd/y/QuUhfQkJSqeWJoIbhyNGvQOqsOAZo8edh1VnNpQHkn4
	 H6UtabpznTRrHgRyBq7AgkIv0C8CN70hNVDw+Vabv1kzDx2w9ZoPhxO0WAEUVUalvt
	 wGyPjwQA5tmf521/kTCGuY6d9WwgETyBxqXp3COm80uz+IDuKheUvqDHAiufyv5bpP
	 bPCTKoL9JZbGaZPa0MGRx09+th2+zYIAUMVwumOrTfWWm3eotQOqacb0nknvRnjc7Y
	 YajFjZL8JevW6RlxVnQNSkLksjOA39+eUQIkoaBi4EEVg6pilSjnDU9dYMvP+k4XvU
	 Fh5e7spRzZtng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEE1C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214759358.6977.18420378122007203395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bcb86dd885ce0b2bea898227e4b2b11edb94f38090fce3887ee22bb1c8a7035
Date: Thu, 10 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752147593
