Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359D11F5838
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760534994; cv=none; b=rYeiGSq7l0hNUU/UacZjun4NZGc2TB/EkTXNbJaF3RXcEzBmPj5wuxhB7jtoKrV6rGSQh+hZs7eLdbqD1qfKdWpCa30eEt1P52sNP4Ou5ZJKCay2Yg7w3zNWD4D2z2kdT5JP8yd9HJJf2bCpUCjJ+/1B7VaMxw1YB01WkWD5TUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760534994; c=relaxed/simple;
	bh=wTt21TI+qUv2Vy9stmmHQnhceTeV6B0XvH0BnXfbob8=;
	h=To:Subject:From:Message-Id:Date; b=lpst9Q+CrMYWpTaEcxu+rCShks+dYH5j80Mcq1A6Fy01J0FGGDzQ5U0Pwkp0bVptHJOSad1fkyBajUHjxWXtcvUmeWZzucyN+koh4dkYMcvJbYoJn7mlCYHmKDzsRh48L3ZTOE0kOY1aYuV8v3ZjFRRh1FRwKNKfQpJUINZUSiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjgAk/aW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjgAk/aW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4B3C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760534993;
	bh=wTt21TI+qUv2Vy9stmmHQnhceTeV6B0XvH0BnXfbob8=;
	h=To:Subject:From:Date:From;
	b=PjgAk/aWP1wndOfNO0+WvkFKQigarlijvoPz2bBNePZMuCk5u8Uvlp0/2TkT9HAyi
	 tJEZiOX9lHhMOljCSw1fpoL8BOB1WUwVGLIc/Y35FN/SNvzu7u59IeaONWcKjETnuA
	 wMvjeH2om9JWWEGxlhKhrooRjetlXNL7H8gEz47IeSHKOh3M+kqWCLTCoyNN7CfFxN
	 nB4TH9vpRyT2Q/7N5ctoIOKKDHm5T0SvbtjWAk4d72p7DfsHRmzAb0lAr64GGPwsLR
	 Nb1l1aZiVLg1QbyOKgj5rfuL3pU+1ZycQRMtAolTsD+L7cN2uCfloBaXN3fHOWGlqu
	 OHe8hBUpB9S0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CFDCCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053499358.683.2202372244474909433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96d8822efbb093aab25dacbe2d8211187d54f8591cb991c5c29a4769d9918f0
Date: Wed, 15 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760534993
