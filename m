Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3219E173347
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726656354; cv=none; b=Qi0/omcUEnACRTWoV9zqA6Zao/trvpTpp8poen9QO6slXNxbcj9PhCjRIQIsImPZW4/Fypii5WVY/40P3K1VKQH/+oRyN5iMCYcpcBnx7GaoX1otnsLasLV7QXdW2WXki4psWD+rOrq9N6gEG+jaYkTAkNXwYsWQCgomnm6TNpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726656354; c=relaxed/simple;
	bh=dTMOAB1x9+OEFA2qePWfGIZ3L6kHX2BoRfruKqeGBzY=;
	h=To:Subject:From:Message-Id:Date; b=oTf4JsKchBw6SgUDWnParb8qjfiNAf46FiXnUeg3kdmCKr3sGd5IU+Kj1IWvVwQYLSLgsV13PEjRgxa3yVAPt338lYlW/2iezPPcOmSdT4dajVla19q/Ur8mkY0xtnN1DPai+Y5BhkeoC+B45FnTsssVLfBac7Gy6qwcaNxNY1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuXX+ONR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuXX+ONR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BF5C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726656353;
	bh=dTMOAB1x9+OEFA2qePWfGIZ3L6kHX2BoRfruKqeGBzY=;
	h=To:Subject:From:Date:From;
	b=SuXX+ONRYOuOedzv/h557r72A0kolRp3uFCv8uVZJzN6g7MkEGsDO/S0pwmp98qly
	 s28NaeihuaBUGjexrtM10ro3vmAZRPg40SCbRRN2XF8Fni6F54SC+9g7HgOghY5D+3
	 hXHTyFmeNuvhadjEtgaEJuK6afKH+ChnnpGKJv7QXqEZyP5WmS86/sv/uX6zTNz8Pv
	 /uG065kfZyzxCpnVOdBZeOhZfQSQ4oH+ERkvXXyPadS9DtnBk+zOCSbu3zHUVKyrHF
	 JWpSi8KZEqtWMKAPS7f+2x6RlX8oIum2tWRHoh1vImdqArLvDCZgG5Q2dKUUdJkyy4
	 ZvWbmgoyM623Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D8BCCD19A
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172665635361.497.4801206381807703159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccc87867978ed158d51b61a693e59cd045682317cd0d1cd39f4c8fdf89ed2fc9
Date: Wed, 18 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726656353
