Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0765318C332
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762364394; cv=none; b=Q/r/qQ3LUGH7DoUj1uoEtKjlP01ZLAd2MC0g5S7bnBDMD1yCwXui1rKLOug16VenULVszMy0Z2TmCwt3krbOXORYFbs73cDUSe8jKZ41T/tTC99Un+AzkoUF7Lbbp0WTKwZeLJkBZ6X3UYHLuSM0LPCVwnOktecS3TtuAdEY7Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762364394; c=relaxed/simple;
	bh=/MIEkUIZrFVb8u0eXjIiNoPV3UQRWMNJ9cCFEz5uShU=;
	h=To:Subject:From:Message-Id:Date; b=CHEtBEqkeqpo14uk/3s5OuFEh0dFjT23qyJlCMge5rBwCkg654HsbN+c2n1aAthrEeXj7hvmVkmEFhLAldGfs8Qhr949O71Dmfc13Fa3eY/N3eS90QKMjCbFGcSA5SC7MXi9/uYecZd12VRJppVqe5t2NlLEz6dqwfe1tGAO5hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMlvbQhI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMlvbQhI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCE4C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762364393;
	bh=/MIEkUIZrFVb8u0eXjIiNoPV3UQRWMNJ9cCFEz5uShU=;
	h=To:Subject:From:Date:From;
	b=rMlvbQhIZiiig5XQ1vYwwO4jlUMbZJaUf8GbxeKpMsndZUgXAQHuEFiAQaO19O0x7
	 hz7FUPFBtOA+7f9f6rTjXym5aUW9NBJmLlNJGbsOAhDuqIRibipRJg752iL5Szg2kf
	 m6ftdC5JG3hzzwDhIJ9ZjholopSJwUST1ueRC8J3+rRp7PpVt+lw1rNjN71PvkZRdK
	 p0qWBKmbiVZ8PWrNmVZ08dDoI9P4CW80iaCfwF7vqvc8fM1mBlh98FZda58FIA3reE
	 DlH9qehRaHGP+2YQNKUSmaE5uJXYbisf2guElUlMbQCbplc2JGXbYfWAqt8DROU4gS
	 pY7GxSIRvgBNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91048CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236439358.10121.12989633249571859354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57e8ec437311b82d35b903050890f671944041399ced438024a9c677630f69f
Date: Wed, 05 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762364393
