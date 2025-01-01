Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401221E0DDF
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735755954; cv=none; b=GVjeaT+6frQM5hY8azl/BgaWTJ7NNgz+sJe9GVLOa8ss/R8Jq5dQZejKZhOmC4+6eN1MvqYxwUFqkixfemKIxVvOuX+dIBPgd158K8gOYz/CTJ7zX/UJRTS960RPoxMy17oFG6UTEMIZIzIvk3Jk6elh3vA+icN1ujLs84/S20s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735755954; c=relaxed/simple;
	bh=RPVUev7T7nF6Ni4c1LPuAk2cp/kAEMnAwP7rnT9yiXI=;
	h=To:Subject:From:Message-Id:Date; b=Bijmy0+tfRyqkPPrTXbLqIHb6ZmmmpIGPyGvvB0YRBMXtNT/0hz70fjSM9Ij6YKSkz+0pj5pUfA+4FBwf7NNKNDW9WQFzSnlESTlurSnMQBJm4BhojFJ/P7ah/Mb0pA+6jNtKS67RkbEL08szukzSgNIMhJ1H3aRPxtElxpHA3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTn4TnkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTn4TnkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF87BC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735755953;
	bh=RPVUev7T7nF6Ni4c1LPuAk2cp/kAEMnAwP7rnT9yiXI=;
	h=To:Subject:From:Date:From;
	b=QTn4TnkJyERyVNNjzUpvl/17Bhe4yo1aHVDlf20d42aIDjCPH433mfj5lajSfASEl
	 ZN6wkXO2w+YVlyXai6hklYmi8sJhSgK8UJbehUAKnfLy6nnKEw2SUF628ndA9JjCnH
	 GHcTUq8HJYiaewEJx+OYzsVZTPdOCme+6wz57Ww41GsC8TMEqPtUclH5pzDwpbZAHP
	 bVz4+4kcgNS1SpkNzvZAHbIip7PD7JaDqC5w/bwlBBjWm7cVDwWZAIH06X4cjSltS+
	 cRWP8LOofqaeHYu0Ju/gPzsq7jL5PuInXHmHAqXEtGH1Xw5etAxwIAG29Ee4aoZxQJ
	 eR97GHj2SP1Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F8BE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575595359.8079.2988117286817030819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca446adeabd4b7b80b5acd1def0a5b3ac8ee839c60c2883faa05dd1336347300
Date: Wed, 01 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735755953
