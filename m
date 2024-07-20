Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41776817
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721436954; cv=none; b=TWvdHYrIgrMli3zf57JSzKL4u88SJ4sWklQISX0uA+dQMMq92bVEY9pLFs9Z2m5GOR+PAzAxEcQudLC2FZDOWeecrYxYyjkungqtIuaB0Y8akqqkLV2Bq/DXz1032tSX24c1aOfFcQM/xPN2JErXGcOA3Qb0cJm3FSYQH5WKuSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721436954; c=relaxed/simple;
	bh=MkQhslcyMtMBFrz4rnmX8eZkt6dsztlfcqaI9+U429Y=;
	h=To:Subject:From:Message-Id:Date; b=lC2S9GP6BzeDOUIRU3PetBj4quaVyGBzMD4y2tTj+mwflgtlO0ESydzCP2Pdeoy5MOlRe76hVE/tM+UGvRWMjHADPWzLToEKO5d9RjXHd8CSMMjms9PdDq4q9R+AznrH2WbCrEQ1+FnEYCUixvvpUgHSk8wIJxmA+1EB57lLftM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWLjKsry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWLjKsry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE27C32782
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721436953;
	bh=MkQhslcyMtMBFrz4rnmX8eZkt6dsztlfcqaI9+U429Y=;
	h=To:Subject:From:Date:From;
	b=cWLjKsrytxbaTjIDzhpc0BAKvWpnezEG6RM57OK7G2QHoqnw5ISEaWm7L3oSPhDmZ
	 i/iFvPn//WNaQsia4Y9yc9p2H9/urKXugDrXexvQipBO0OD4EyHDjQ+ItMZhXk/zxs
	 DC0py298htIDnYvsspUvBxE30r3sF9vVaoRBxfrFwm2AoOdXNxz0NLWKu+uiBwR40D
	 VF2jSTOtYwesfac2E6qoMx8ID55g0Z1w8VrbYn+ob0Z4+PvpaOBAUxVSsFzb7uMgGA
	 Bfhqm978CZbl7Q9z3LrgFhkHQpWa2olNXq9XbjO03FZc8029VYHjFT8lmapmks5d4W
	 FwX8/GqetkIiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC50C3DA5D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172143695361.7103.14839489011490576216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae4b0e9c60eb5813fda784337267734e473606cf2b570abd1e9aedf747fc9f0
Date: Sat, 20 Jul 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721436953
